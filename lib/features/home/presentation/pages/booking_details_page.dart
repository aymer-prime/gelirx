import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

@RoutePage()
class BookingDetailsPage extends StatelessWidget {
  const BookingDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.s16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: AppSize.s55,
                  width: AppSize.s55,
                  decoration: BoxDecoration(
                    color: ColorManager.background,
                    borderRadius: BorderRadius.circular(AppSize.s15),
                  ),
                  child: Icon(FontAwesomeIcons.caretLeft),
                ),
              ),
              Container(
                width: double.infinity,
                height: AppSize.s360,
                decoration: BoxDecoration(
                  color: const Color(0xff181F30),
                  borderRadius: BorderRadius.circular(AppSize.s20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.s16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please fill in the required information',
                        style: getMediumStyle(
                          color: ColorManager.white,
                          fontSize: FontSizeManager.s18,
                        ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      Text(
                        'Explain the problem in detail',
                        style: getRegularStyle(
                          color: Color(0xffb1babf),
                          fontSize: FontSizeManager.s12_8,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(AppSize.s10),
                        child: TextField(
                          maxLength: 750,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          maxLines: null,
                          minLines: 4,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color(0xff3c455b),
                            counterText: '',
                            hintStyle: getLightStyle(
                              color: Color(0xffb1babf),
                              fontSize: FontSizeManager.s12,
                            ),
                            hintText:
                                'Please explain the work to be done in full detail. Requests that are not explained properly or not given with all the details may be rejected by the masters.',
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Upload photos of the problem ',
                              style: getRegularStyle(
                                color: const Color(0xffb1babf),
                                fontSize: FontSizeManager.s12_8,
                              ),
                            ),
                            TextSpan(
                              text: '(* if necessary)',
                              style: getRegularStyle(
                                color: ColorManager.white,
                                fontSize: FontSizeManager.s11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.s4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          5,
                          (index) => Container(
                            height: AppSize.s62,
                            width: AppSize.s62,
                            decoration: BoxDecoration(
                              color: const Color(0xff181F30),
                              borderRadius: BorderRadius.circular(AppSize.s5),
                              border: Border.all(
                                  color: ColorManager.textSubtitleColor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  color: ColorManager.white,
                                  size: AppSize.s11,
                                ),
                                Text(
                                  'Select image',
                                  overflow: TextOverflow.ellipsis,
                                  style: getRegularStyle(
                                    color: ColorManager.white,
                                    fontSize: FontSizeManager.s9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: AppSize.s48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.joyColor,
                          ),
                          child: const Text('Call Now (40 minutes)'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
