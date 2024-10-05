import 'dart:async';
import 'package:flutter/services.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';

import '../../widgets/step_indicator.dart';

@RoutePage()
class OtpPage extends HookWidget {
  final VoidCallback toPreviousPage;

  OtpPage({
    super.key,
    required this.toPreviousPage,
  });

  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    final otpControllers = List.generate(6, (_) => useTextEditingController());
    final _numberNotifier = useState<int>(60);
    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 1), (time) {
        if (_numberNotifier.value > 1) {
          _numberNotifier.value = _numberNotifier.value - 1;
        } else {
          if (!isDone) {
            isDone = true;
            _numberNotifier.value = 0;
          }
        }
      });
      return timer.cancel;
    }, const []);
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: toPreviousPage,
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorManager.black,
                  ),
                ),
                SizedBox(height: AppSize.s12.h),
                StepIndicator(
                  totalSteps: context.read<AuthBloc>().state.isMaster &&
                          (context.read<AuthBloc>().state.isMaster)
                      ? 4
                      : 2,
                  currentStep: 0,
                ),
                const SizedBox(height: AppSize.s100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verification Code',
                        textAlign: TextAlign.center,
                        style: getTextStyle(AppSize.s32, FontWeight.w700,
                            ColorManager.headerTextColor),
                      ),
                      const SizedBox(height: AppSize.s8),
                      Text(
                        'Please enter the 6-digit confirmation code we sent via message.',
                        style: getTextStyle(AppSize.s14, FontWeight.w500,
                            ColorManager.blackTextColorWithOpacity),
                      ),
                      const SizedBox(height: AppSize.s24),
                      // const OtpInputFields(),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (index) {
                            return OtpTextField(
                              controller: otpControllers[index],
                              autoFocus: index == 0,
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: AppSize.s40),
                      SizedBox(
                        width: double.infinity,
                        height: AppSize.s48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.lightgreybuttonColor,
                              elevation: 0),
                          onPressed: () {
                            final otpCode =
                                otpControllers.map((c) => c.text).join();
                            if (otpCode.length == 6) {
                              context.read<AuthBloc>().add(
                                    AuthEvent.verifyPhoneNumber(
                                      verificationId: context
                                          .read<AuthBloc>()
                                          .state
                                          .verificationId
                                          .getOrElse(() => ''),
                                      smsCode: otpCode,
                                    ),
                                  );
                            }
                          },
                          child: Text(
                            AppStrings.continueTxt,
                            style: getTextStyle(AppSize.s15, FontWeight.w700,
                                ColorManager.headerTextColor),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Resend Code',
                              textAlign: TextAlign.center,
                              style: getTextStyle(AppSize.s15, FontWeight.w500,
                                  ColorManager.headerTextColor)),
                          const SizedBox(width: AppSize.s16),
                          SizedBox(
                            height: 50,
                            //width: 100,
                            child: isDone
                                ? TextButton(
                                    onPressed: () {
                                      isDone = false;
                                      _numberNotifier.value = 60;
                                    },
                                    child: const Text('Resend'),
                                  )
                                : Center(
                                    child: Text(
                                      _printDuration(Duration(
                                          seconds: _numberNotifier.value)),
                                      textAlign: TextAlign.center,
                                      style:
                                          context.textTheme.bodyLarge!.copyWith(
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60).abs());
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}

class OtpTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool autoFocus;

  const OtpTextField({
    Key? key,
    required this.controller,
    required this.autoFocus,
  }) : super(key: key);

  @override
  _OtpTextFieldState createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
        child: AspectRatio(
          aspectRatio: 0.875,
          child: TextField(
            focusNode: _focusNode,
            controller: widget.controller,
            textAlign: TextAlign.center,
            autofocus: widget.autoFocus,
            keyboardType: TextInputType.number,
            maxLength: 1,
            maxLines: null,
            expands: true,
            cursorColor: Colors.blue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                // Move to the next field if a character is entered
                FocusScope.of(context).nextFocus();
              } else {
                // Move to the previous field if the current field is empty (deletion)
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: InputDecoration(
              counterText: "",
              contentPadding: EdgeInsets.zero,
              fillColor: _focusNode.hasFocus
                  ? Colors.white
                  : ColorManager.lightgreybuttonColor,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManager.outlineOtpBorderColor),
                borderRadius: BorderRadius.circular(AppSize.s12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(AppSize.s12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
