import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import '../../../../app/utils/resources/assets_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';
import '../widgets/booking_card.dart';

@RoutePage()
class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context)    {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s16, vertical: AppSize.s24),
          child: ListView(
            children: const [
              CardLabelWidget(label: AppStrings.bookingsTitle),
              SizedBox(height: AppSize.s16),
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
          ),
        ),
      ),
    );
  }
}
