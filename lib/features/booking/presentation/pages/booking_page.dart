import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/features/master_dashboard/presentation/pages/master_dashboard_page.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import '../../../../app/utils/resources/assets_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';
import '../widgets/booking_card.dart';

@RoutePage()
class BookingPage extends HookWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tabController = useTabController(initialLength: 2);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s16, vertical: AppSize.s24),
          child: Column(
            children: [
              const CardLabelWidget(label: AppStrings.bookingsTitle),
              const SizedBox(height: AppSize.s16),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: AppSize.s72.h,
                      padding:
                          const EdgeInsets.symmetric(vertical: AppPadding.p16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(AppSize.s8),
                      ),
                      child: TabBar(
                        controller: tabController,
                        dividerColor: Colors.transparent,
                        indicatorColor: Colors.transparent,
                        labelColor: ColorManager.darkPrimary,
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: tabController.index == 0
                                  ? BoxDecoration(
                                      color: ColorManager.lightPrimary
                                          .withOpacity(0.5),
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s8),
                                    )
                                  : null,
                              child: const Center(
                                child: Text('User'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: tabController.index == 1
                                  ? BoxDecoration(
                                      color: ColorManager.lightPrimary
                                          .withOpacity(0.5),
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s8),
                                    )
                                  : null,
                              child: const Center(
                                child: Text('Master'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSize.s2.h),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: const [
                          UserBookingsWidget(),
                          MasterDashboardBody(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSize.s60.h),
            ],
          ),
        ),
      ),
    );
  }
}

class UserBookingsWidget extends StatelessWidget {
  const UserBookingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BookingCard(
          handymanImage:
              'https://media.istockphoto.com/id/468476179/vector/painter-with-paintbrush.jpg?s=1024x1024&w=is&k=20&c=UuTbI6YCDf-sTlP3Ebf52fjnHCZM4Wg9Hif0dhEaYcE=',
          handymanName: 'Osta Name',
          handymanPhoneNumber: '+971588250549',
          serviceName: 'Ac Fixing',
          serviceIcon: ImageAssets.acIcon,
        ),
        SizedBox(height: AppSize.s16),
        BookingCard(
          handymanImage:
              'https://media.istockphoto.com/id/468476179/vector/painter-with-paintbrush.jpg?s=1024x1024&w=is&k=20&c=UuTbI6YCDf-sTlP3Ebf52fjnHCZM4Wg9Hif0dhEaYcE=',
          handymanName: 'Osta Name',
          handymanPhoneNumber: '+971588250549',
          serviceName: 'Plumbing',
          serviceIcon: ImageAssets.acIcon,
        ),
        SizedBox(height: AppSize.s16),
        BookingCard(
          handymanImage:
              'https://media.istockphoto.com/id/468476179/vector/painter-with-paintbrush.jpg?s=1024x1024&w=is&k=20&c=UuTbI6YCDf-sTlP3Ebf52fjnHCZM4Wg9Hif0dhEaYcE=',
          handymanName: 'Osta Name',
          handymanPhoneNumber: '+971588250549',
          serviceName: 'Cleaning',
          serviceIcon: ImageAssets.acIcon,
        )
      ],
    );
  }
}
