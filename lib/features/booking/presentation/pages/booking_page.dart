import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/booking/presentation/bloc/booking_bloc.dart';
import 'package:gelirx/features/booking/presentation/widgets/booking_history_card.dart';
import 'package:gelirx/features/booking/presentation/widgets/booking_history_placeholder.dart';
import 'package:gelirx/features/home/presentation/widgets/dialogs/master_dialog_screen.dart';
import 'package:intl/intl.dart';

@RoutePage()
class BookingHistoryPage extends StatelessWidget {
  const BookingHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<BookingBloc>()
            ..add(
              const BookingEvent.getBookings('39'),
            ),
          child: BlocBuilder<BookingBloc, BookingState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const BookingHistoryPlaceholder(),
                loadSuccess: (successResult) => BookingHistoryContent(
                  bookings: successResult.bookings,
                ),
                loadFailed: (failure) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(failure.apiException.toString()),
                        const SizedBox(height: AppSize.s20),
                        ElevatedButton(
                          onPressed: () {
                            print('object');
                            context.read<BookingBloc>().add(
                                  const BookingEvent.getBookings('39'),
                                );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 16.0,
                            ),
                            child: Text('Try Again'),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class BookingHistoryContent extends StatelessWidget {
  final List<Booking> bookings;
  const BookingHistoryContent({super.key, required this.bookings});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: AppSize.s10, left: AppSize.s15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  MasterDialogScreen.instance().hide();
                  context.router.replace(const AlternateMainRoute());
                },
                child: const SizedBox(
                  height: AppSize.s30,
                  width: AppSize.s30,
                  child: Icon(FontAwesomeIcons.arrowLeft, size: AppSize.s18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSize.s24),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Past Requests ',
                        style: getTextStyle(
                                AppSize.s24, FontWeight.w500, Colors.black)
                            .copyWith(
                          height: 1.1,
                          letterSpacing: -0.1,
                        ),
                      ),
                      TextSpan(
                        text: "(${bookings.length})",
                        style: getTextStyle(AppSize.s24, FontWeight.w500,
                                ColorManager.joyColor)
                            .copyWith(
                          height: 1.1,
                          letterSpacing: -0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.s30),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              var booking = bookings[index];
              return BookingHistoryCard(
                name: 'Osman Yancigil',
                serviceName: 'Radiator Cleaning',
                date:
                    DateFormat('dd.MM.yyyy hh:mm').format(booking.sendingDate),
                status: booking.status,
                rating: 4.1,
                totalInteractions: 24,
              );
            },
            separatorBuilder: (context, index) =>
                const SizedBox(height: AppSize.s20),
          ),
        ),
        const SizedBox(height: AppSize.s20),
      ],
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
