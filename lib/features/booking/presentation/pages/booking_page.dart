import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:gelirx/features/master/presentation/widget/review_star_row.dart';

@RoutePage()
class BookingHistoryPage extends StatelessWidget {
  const BookingHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s16),
        child: ListView(
          children: [
            Text("Past Requests (12)",
                style:
                    getTextStyle(AppSize.s30, FontWeight.w500, Colors.black)),
            SizedBox(height: AppSize.s30,),
            BookingHistoryCard(
              name: 'Osman Yancigil',
              serviceName: 'Radiator Cleaning',
              date: '15.10.2024 18:20',
              status: 'On hold',
              rating: 4.1,
              totalInteractions: 24,
            ),
            SizedBox(height: AppSize.s15,),
            BookingHistoryCard(
              name: 'Osman Yancigil',
              serviceName: 'Radiator Cleaning',
              date: '15.10.2024 18:20',
              status: 'Completed',
              rating: 4.1,
              totalInteractions: 24,
            ),
            SizedBox(height: AppSize.s15,),
            BookingHistoryCard(
              name: 'Osman Yancigil',
              serviceName: 'Radiator Cleaning',
              date: '15.10.2024 18:20',
              status: 'On hold',
              rating: 4.1,
              totalInteractions: 24,
            ),
            SizedBox(height: AppSize.s15,),
          ],
        ),
      ),
    );
  }
}

class BookingHistoryCard extends StatelessWidget {
  final String name;
  final String serviceName;
  final String date;
  final String status;
  final double rating;
  final int totalInteractions;

  const BookingHistoryCard(
      {super.key,
      required this.name,
      required this.serviceName,
      required this.date,
      required this.status,
      required this.rating,
      required this.totalInteractions});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15) // Adjust the radius as needed
          ),
      child: Stack(
        children: [
          Image.asset(ImageAssets.tesisat),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:AppSize.s10, horizontal: AppSize.s15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(ImageAssets.handyman),
                          maxRadius: AppSize.s25,
                          minRadius: AppSize.s25,
                        ),
                        SizedBox(width: AppSize.s12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,
                                style: getTextStyle(AppSize.s16,
                                    FontWeight.w400, Colors.black)),
                            Text(serviceName,
                                style: getTextStyle(AppSize.s13,
                                    FontWeight.w300, Colors.black)),
                            Text(date,
                                style: getTextStyle(AppSize.s13,
                                    FontWeight.w300, ColorManager.tabBarColor)),
                            Container(
                              padding: EdgeInsets.all(AppSize.s8),
                              decoration: BoxDecoration(
                                  color: status == "Completed"  ?  ColorManager.greenColor : Color(0xffffc000),
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s8)),
                              child: Text(status,
                                  style: getTextStyle(AppSize.s14,
                                      FontWeight.w500, ColorManager.white)),
                            )
                          ].separateWith(SizedBox(height: AppSize.s5,)),
                        ),
                        SizedBox(width: AppSize.s10),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: ColorManager.ratingColor,
                          size: AppSize.s15,
                        ),
                        SizedBox(width: AppSize.s10),
                        Text(
                          rating.toString(),
                          style: getTextStyle(AppSize.s14, FontWeight.w400,
                              ColorManager.textSubtitleColor),
                        ),
                        SizedBox(width: AppSize.s10),
                        Text(
                          "(24)",
                          style: getTextStyle(AppSize.s14, FontWeight.w300,
                              ColorManager.textSubtitleColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: AppSize.s10,
            right: AppSize.s10,
            child: Container(
            width: AppSize.s40,
            height: AppSize.s40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.lightGrey,
            ),
            child: Icon(FontAwesomeIcons.heart, size: AppSize.s18),
          ),)
        ],
      ),
    );
  }
}

// class BookingPage extends HookWidget {
//   const BookingPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var tabController = useTabController(initialLength: 2);
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//               horizontal: AppSize.s16, vertical: AppSize.s24),
//           child: Column(
//             children: [
//               const CardLabelWidget(label: AppStrings.bookingsTitle),
//               const SizedBox(height: AppSize.s16),
//               Expanded(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: AppSize.s72.h,
//                       padding:
//                           const EdgeInsets.symmetric(vertical: AppPadding.p16),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(AppSize.s8),
//                       ),
//                       child: TabBar(
//                         controller: tabController,
//                         dividerColor: Colors.transparent,
//                         indicatorColor: Colors.transparent,
//                         labelColor: ColorManager.darkPrimary,
//                         tabs: [
//                           Tab(
//                             child: Container(
//                               decoration: tabController.index == 0
//                                   ? BoxDecoration(
//                                       color: ColorManager.lightPrimary
//                                           .withOpacity(0.5),
//                                       borderRadius:
//                                           BorderRadius.circular(AppSize.s8),
//                                     )
//                                   : null,
//                               child: const Center(
//                                 child: Text('User'),
//                               ),
//                             ),
//                           ),
//                           Tab(
//                             child: Container(
//                               decoration: tabController.index == 1
//                                   ? BoxDecoration(
//                                       color: ColorManager.lightPrimary
//                                           .withOpacity(0.5),
//                                       borderRadius:
//                                           BorderRadius.circular(AppSize.s8),
//                                     )
//                                   : null,
//                               child: const Center(
//                                 child: Text('Master'),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: AppSize.s2.h),
//                     Expanded(
//                       child: TabBarView(
//                         controller: tabController,
//                         children: const [
//                           UserBookingsWidget(),
//                           MasterDashboardBody(),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: AppSize.s60.h),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class UserBookingsWidget extends StatelessWidget {
//   const UserBookingsWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: const [
//         BookingCard(
//           handymanImage:
//               'https://media.istockphoto.com/id/468476179/vector/painter-with-paintbrush.jpg?s=1024x1024&w=is&k=20&c=UuTbI6YCDf-sTlP3Ebf52fjnHCZM4Wg9Hif0dhEaYcE=',
//           handymanName: 'Osta Name',
//           handymanPhoneNumber: '+971588250549',
//           serviceName: 'Ac Fixing',
//           serviceIcon: ImageAssets.acIcon,
//         ),
//         SizedBox(height: AppSize.s16),
//         BookingCard(
//           handymanImage:
//               'https://media.istockphoto.com/id/468476179/vector/painter-with-paintbrush.jpg?s=1024x1024&w=is&k=20&c=UuTbI6YCDf-sTlP3Ebf52fjnHCZM4Wg9Hif0dhEaYcE=',
//           handymanName: 'Osta Name',
//           handymanPhoneNumber: '+971588250549',
//           serviceName: 'Plumbing',
//           serviceIcon: ImageAssets.acIcon,
//         ),
//         SizedBox(height: AppSize.s16),
//         BookingCard(
//           handymanImage:
//               'https://media.istockphoto.com/id/468476179/vector/painter-with-paintbrush.jpg?s=1024x1024&w=is&k=20&c=UuTbI6YCDf-sTlP3Ebf52fjnHCZM4Wg9Hif0dhEaYcE=',
//           handymanName: 'Osta Name',
//           handymanPhoneNumber: '+971588250549',
//           serviceName: 'Cleaning',
//           serviceIcon: ImageAssets.acIcon,
//         )
//       ],
//     );
//   }
// }
