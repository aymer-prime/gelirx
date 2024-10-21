// import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gelirx/app/extensions/List.dart';
// import 'package:gelirx/app/extensions/context.dart';
// import 'package:gelirx/app/navigation/app_router.dart';
// import 'package:gelirx/app/utils/resources/assets_manager.dart';
// import 'package:gelirx/app/utils/resources/color_manager.dart';
// import 'package:gelirx/app/utils/resources/values_manager.dart';
// import 'package:gelirx/features/home/domain/entities/category.dart';
// import 'package:gelirx/features/home/domain/entities/master.dart';
// import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
// import 'package:gelirx/features/home/presentation/widgets/top_categories_widget.dart';
// import 'package:gelirx/features/shared/domain/entities/shared_entities.dart';
// import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
// import 'package:shimmer/shimmer.dart';

// class HomeDraggableSheet extends StatefulWidget {
//   final List<Category> categories;
//   final List<Category> filters;
//   final List<UserSkills> services;
//   const HomeDraggableSheet({
//     super.key,
//     required this.categories,
//     required this.services,
//     required this.filters,
//   });

//   @override
//   State<HomeDraggableSheet> createState() => _HomeDraggableSheetState();
// }

// class _HomeDraggableSheetState extends State<HomeDraggableSheet> {
//   final _sheet = GlobalKey();
//   final _controller = DraggableScrollableController();

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(_onChanged);
//   }

//   void _onChanged() {
//     final currentSize = _controller.size;
//     if (currentSize <= 0.05) _collapse();
//   }

//   void _collapse() => _animateSheet(sheet.snapSizes!.first);

//   void _anchor() => _animateSheet(sheet.snapSizes!.last);

//   void _expand() => _animateSheet(sheet.maxChildSize);

//   void _hide() => _animateSheet(sheet.minChildSize);

//   void _animateSheet(double size) {
//     _controller.animateTo(
//       size,
//       duration: const Duration(milliseconds: 50),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   DraggableScrollableSheet get sheet =>
//       (_sheet.currentWidget as DraggableScrollableSheet);

//   @override
//   Widget build(BuildContext context) {
//     print(widget.filters);
//     return LayoutBuilder(builder: (context, constraints) {
//       return DraggableScrollableSheet(
//         key: _sheet,
//         initialChildSize: 0.5,
//         maxChildSize: 1,
//         minChildSize: 0.5,
//         expand: true,
//         snap: true,
//         snapSizes: [
//           //0.2,
//           0.5,
//         ],
//         controller: _controller,
//         builder: (BuildContext context, ScrollController scrollController) {
//           return DecoratedBox(
//             decoration: BoxDecoration(
//               color: ColorManager.background,
//               // borderRadius: const BorderRadius.only(
//               //   topLeft: Radius.circular(AppSize.s32),
//               //   topRight: Radius.circular(AppSize.s32),
//               // ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: AppPadding.p16,
//               ),
//               child: CustomScrollView(
//                 controller: scrollController,
//                 slivers: [
//                   SliverToBoxAdapter(
//                     child: SizedBox(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: AppSize.s8.h),
//                           Center(
//                             child: Container(
//                               height: AppSize.s4,
//                               width: AppSize.s64,
//                               decoration: BoxDecoration(
//                                   color: ColorManager.textSubtitleColor,
//                                   borderRadius: BorderRadius.circular(
//                                     AppSize.s4,
//                                   )),
//                             ),
//                           ),
//                           SizedBox(height: AppSize.s8.h),
//                           widget.categories.isEmpty
//                               ? const AllCategoriesLoadingPlaceholder()
//                               : AllCategoriesWidgets(
//                                   categories: widget.categories,
//                                 ),
//                           widget.filters.isNotEmpty
//                               ? Padding(
//                                   padding: EdgeInsets.symmetric(
//                                     vertical: AppPadding.p8.h,
//                                   ),
//                                   child: Wrap(
//                                       crossAxisAlignment:
//                                           WrapCrossAlignment.center,
//                                       children: [
//                                         IconButton(
//                                           onPressed: () {
//                                             context.read<HomeBloc>().add(
//                                                   const HomeEvent
//                                                       .clearFilters(),
//                                                 );
//                                           },
//                                           style: IconButton.styleFrom(
//                                             backgroundColor: ColorManager.white,
//                                           ),
//                                           icon: Icon(
//                                             Icons.close_rounded,
//                                             size: AppSize.s24,
//                                             color: ColorManager.textTitleColor,
//                                           ),
//                                         ),
//                                         ...widget.filters.map(
//                                           (filter) => Container(
//                                             padding: const EdgeInsets.all(
//                                                 AppPadding.p12),
//                                             margin: const EdgeInsets.all(
//                                                 AppMargin.m4),
//                                             decoration: BoxDecoration(
//                                               color: ColorManager.white,
//                                               borderRadius:
//                                                   BorderRadius.circular(
//                                                 AppSize.s20,
//                                               ),
//                                             ),
//                                             child: Text(
//                                               filter.name,
//                                               style:
//                                                   context.textTheme.labelMedium,
//                                             ),
//                                           ),
//                                         ),
//                                       ]),
//                                 )
//                               : SizedBox(height: AppSize.s16.h),
//                           (widget.categories.isEmpty || widget.services.isEmpty)
//                               ? Column(
//                                   children: [
//                                     const AllServicesLoadingPlaceholder(),
//                                     SizedBox(height: AppSize.s16.h),
//                                     const AllServicesLoadingPlaceholder(),
//                                   ],
//                                 )
//                               : AllServicesWidget(
//                                   allSkills: widget.services,
//                                   filterIDs:
//                                       widget.filters.map((e) => e.id).toList(),
//                                 ),
//                           SizedBox(height: AppSize.s60.h),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     });
//   }
// }

// class AllServicesLoadingPlaceholder extends StatelessWidget {
//   const AllServicesLoadingPlaceholder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: AppSize.s267,
//       decoration: BoxDecoration(
//         color: ColorManager.white,
//         borderRadius: BorderRadius.circular(
//           AppSize.s20.r,
//         ),
//       ),
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey.shade300,
//         highlightColor: Colors.grey.shade100,
//         enabled: true,
//         child: Padding(
//           padding: const EdgeInsets.all(
//             AppPadding.p16,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Flexible(
//                 flex: 1,
//                 child: Container(
//                   //width: AppSize.s150.w,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       AppSize.s20.r,
//                     ),
//                     color: ColorManager.grey,
//                   ),
//                 ),
//               ),
//               SizedBox(height: AppSize.s16.h),
//               Flexible(
//                   flex: 11,
//                   child: Row(
//                     children: [
//                       ...List.generate(
//                         3,
//                         (index) => Flexible(
//                           child: Column(
//                             children: [
//                               Flexible(
//                                 flex: 9,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(
//                                       AppSize.s20.r,
//                                     ),
//                                     color: ColorManager.grey,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: AppSize.s12.h),
//                               Flexible(
//                                 flex: 1,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(
//                                       AppSize.s20.r,
//                                     ),
//                                     color: ColorManager.grey,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ).separateWith(
//                         SizedBox(
//                           width: AppSize.s8.w,
//                         ),
//                       ),
//                     ],
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AllServicesWidget extends StatelessWidget {
//   final List<UserSkills> allSkills;
//   final List<String> filterIDs;
//   const AllServicesWidget({
//     super.key,
//     required this.allSkills,
//     required this.filterIDs,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       ...allSkills.map(
//         (service) => (service.subSkill.isEmpty ||
//                 (!filterIDs.contains(service.skill.id) && filterIDs.isNotEmpty))
//             ? const SizedBox()
//             : Container(
//                 padding: const EdgeInsets.all(AppPadding.p16),
//                 margin: const EdgeInsets.symmetric(vertical: AppMargin.m8),
//                 decoration: BoxDecoration(
//                   color: ColorManager.white,
//                   borderRadius: BorderRadius.circular(
//                     AppSize.s20.r,
//                   ),
//                 ),
//                 child: service.selectedSubSkill == null
//                     ? ServiceWidget(
//                         service: service,
//                       )
//                     : Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   context.read<HomeBloc>().add(
//                                         HomeEvent.unselectSub(service.skill.id),
//                                       );
//                                 },
//                                 child: const Icon(
//                                   Icons.arrow_back_rounded,
//                                   size: AppSize.s24,
//                                 ),
//                               ),
//                               SizedBox(width: AppSize.s8.w),
//                               Text(
//                                 service.subSkill
//                                     .firstWhereOrNull(
//                                       (sub) =>
//                                           sub.id == service.selectedSubSkill,
//                                     )!
//                                     .name,
//                                 style: context.textTheme.displaySmall,
//                               )
//                             ],
//                           ),
//                           SizedBox(height: AppSize.s16.h),
//                           SizedBox(
//                             height: AppSize.s190.h,
//                             child: ListView.separated(
//                               shrinkWrap: true,
//                               itemCount: service.masters.length,
//                               itemBuilder: (context, index) => GestureDetector(
//                                 onTap: () {
//                                   bookServiceBottomSheet(
//                                     context,
//                                     service.subSkill.firstWhere(
//                                       (sub) =>
//                                           sub.id == service.selectedSubSkill,
//                                     ),
//                                     service.masters[index],
//                                   );
//                                 },
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Flexible(
//                                       flex: 2,
//                                       child: Container(
//                                         padding: EdgeInsets.all(AppPadding.p4),
//                                         decoration: BoxDecoration(
//                                           border: Border.all(
//                                             color: ColorManager.darkPrimary,
//                                           ),
//                                           borderRadius: BorderRadius.circular(
//                                               AppSize.s20.r),
//                                         ),
//                                         child: Image.asset(
//                                           ImageAssets.masterIcon,
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(width: AppSize.s8),
//                                     Flexible(
//                                       flex: 8,
//                                       child: Column(
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 'Master Name',
//                                                 style: context
//                                                     .textTheme.titleLarge,
//                                               ),
//                                               const SizedBox(width: AppSize.s8),
//                                               Text(
//                                                 'ID: ${service.masters[index].id}',
//                                               ),
//                                             ],
//                                           ),
//                                           const SizedBox(width: AppSize.s8),
//                                           Row(
//                                             children: [
//                                               SvgPicture.asset(
//                                                   ImageAssets.star),
//                                               const SizedBox(width: AppSize.s4),
//                                               Text(
//                                                 service.masters[index].point,
//                                                 style: context
//                                                     .textTheme.labelMedium,
//                                               ),
//                                               const SizedBox(width: AppSize.s4),
//                                               Text(
//                                                 '(87)',
//                                                 style: context
//                                                     .textTheme.labelSmall,
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               separatorBuilder: (context, index) =>
//                                   const Divider(),
//                             ),
//                           ),
//                         ],
//                       ),
//               ),
//       ),
//     ]);
//   }
// }

// class AllCategoriesLoadingPlaceholder extends StatelessWidget {
//   const AllCategoriesLoadingPlaceholder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: AppSize.s120,
//       decoration: BoxDecoration(
//         color: ColorManager.white,
//         borderRadius: BorderRadius.circular(
//           AppSize.s20.r,
//         ),
//       ),
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey.shade300,
//         highlightColor: Colors.grey.shade100,
//         enabled: true,
//         child: Padding(
//           padding: const EdgeInsets.all(
//             AppPadding.p16,
//           ),
//           child: Row(
//             children: [
//               ...List.generate(4, (index) {
//                 return Flexible(
//                   child: Column(
//                     children: [
//                       Flexible(
//                         flex: 7,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: ColorManager.grey,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: AppSize.s8.h),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(
//                               AppSize.s20.r,
//                             ),
//                             color: ColorManager.grey,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               }).separateWith(
//                 SizedBox(width: AppSize.s8.w),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ServiceWidget extends StatelessWidget {
//   final UserSkills service;
//   const ServiceWidget({
//     super.key,
//     required this.service,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CardLabelWidget(label: service.skill.name),
//         SizedBox(height: AppSize.s16.h),
//         SizedBox(
//           height: AppSize.s190.h,
//           child: ListView.separated(
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             itemCount: service.subSkill.length,
//             itemBuilder: (context, index) => GestureDetector(
//               onTap: () {
//                 context.read<HomeBloc>().add(HomeEvent.selectSub(
//                       service.skill.id,
//                       service.subSkill[index].id,
//                     ));
//                 // bookServiceBottomSheet(
//                 //   context,
//                 //   service.subSkill[index],
//                 // );
//               },
//               child: AspectRatio(
//                 aspectRatio: 0.65,
//                 child: Column(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(AppSize.s20.r),
//                       child: Container(
//                         height: AppSize.s154.h,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(AppSize.s20.r),
//                         ),
//                         child: CachedNetworkImage(
//                           imageUrl: service.subSkill[index].img.photo,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: AppSize.s12.h),
//                     Text(
//                       service.subSkill[index].name,
//                       style: context.textTheme.labelLarge,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             separatorBuilder: (context, index) => const SizedBox(
//               width: AppSize.s16,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// Future<dynamic> bookServiceBottomSheet(
//     BuildContext context, Category category, Master master) {
//   return showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     builder: (context) => SizedBox(
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           color: ColorManager.background,
//         ),
//         child: Stack(
//           children: [
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: ColorManager.background,
//               ),
//               child: CachedNetworkImage(
//                 imageUrl: category.img.photo,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: AppPadding.p16,
//                 vertical: AppPadding.p8,
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: context.screenSize.height * 0.2),
//                     Container(
//                       padding: const EdgeInsets.all(
//                         AppPadding.p16,
//                       ),
//                       decoration: BoxDecoration(
//                         color: ColorManager.white,
//                         borderRadius: BorderRadius.circular(AppSize.s12),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Center(
//                             child: Container(
//                               height: AppSize.s4,
//                               width: AppSize.s64,
//                               decoration: BoxDecoration(
//                                   color: ColorManager.lightPrimary,
//                                   borderRadius: BorderRadius.circular(
//                                     AppSize.s4,
//                                   )),
//                             ),
//                           ),
//                           const SizedBox(height: AppSize.s8),
//                           Center(
//                             child: Text(
//                               category.name,
//                               style: context.textTheme.displaySmall,
//                             ),
//                           ),
//                           const SizedBox(height: AppSize.s24),
//                           Text(
//                             'Service Provider',
//                             style: context.textTheme.headlineMedium,
//                           ),
//                           const SizedBox(height: AppSize.s16),
//                           Row(
//                             children: [
//                               Container(
//                                 width: AppSize.s40,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: ColorManager.darkPrimary,
//                                   ),
//                                 ),
//                                 child: Image.asset(
//                                   ImageAssets.masterIcon,
//                                 ),
//                               ),
//                               const SizedBox(width: AppSize.s8),
//                               Text(
//                                 'Master Name',
//                                 style: context.textTheme.titleLarge,
//                               ),
//                               const SizedBox(width: AppSize.s8),
//                               Row(
//                                 children: [
//                                   SvgPicture.asset(ImageAssets.star),
//                                   const SizedBox(width: AppSize.s4),
//                                   Text(
//                                     master.point,
//                                     style: context.textTheme.labelMedium,
//                                   ),
//                                   const SizedBox(width: AppSize.s4),
//                                   Text(
//                                     '(87)',
//                                     style: context.textTheme.labelSmall,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: AppSize.s24),
//                           Text(
//                             'Information',
//                             style: context.textTheme.headlineMedium,
//                           ),
//                           const SizedBox(height: AppSize.s16),
//                           const TextField(
//                             maxLength: 350,
//                             maxLengthEnforcement: MaxLengthEnforcement.enforced,
//                             maxLines: null,
//                             minLines: 2,
//                             decoration: InputDecoration(
//                               hintText: 'Your Address . . .',
//                             ),
//                           ),
//                           const SizedBox(height: AppSize.s16),
//                           const TextField(
//                             maxLength: 1000,
//                             maxLengthEnforcement: MaxLengthEnforcement.enforced,
//                             maxLines: null,
//                             minLines: 5,
//                             decoration: InputDecoration(
//                               hintText: 'Problem Description . . .',
//                             ),
//                           ),
//                           const SizedBox(height: AppSize.s16),
//                           Row(
//                             children: [
//                               Flexible(
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     context.router
//                                         .push(const OrderDetailsRoute());
//                                   },
//                                   child: const SizedBox(
//                                     child: Center(
//                                       child: Text('Book service'),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: AppSize.s8),
//                               Flexible(
//                                 child: OutlinedButton(
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: const SizedBox(
//                                     child: Center(
//                                       child: Text('Cancel'),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: AppSize.s68.h),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 0,
//               left: 0,
//               child: Padding(
//                 padding: const EdgeInsets.all(AppPadding.p16),
//                 child: CircleAvatar(
//                   backgroundColor: ColorManager.white,
//                   child: IconButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: const Icon(
//                       Icons.arrow_back_ios_new_rounded,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
