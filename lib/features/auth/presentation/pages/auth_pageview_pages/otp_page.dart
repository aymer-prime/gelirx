import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_bloc.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
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
            const SizedBox(height: AppSize.s113),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  'Verification Code',
                  textAlign: TextAlign.center,
                  style: getTextStyle(AppSize.s32, FontWeight.w700, ColorManager.headerTextColor),
                ),
                  const SizedBox(height: AppSize.s8),
                Text(
                  'Please enter the 6-digit confirmation code we sent via message.',
                  style: getTextStyle(AppSize.s14, FontWeight.w500, ColorManager.blackTextColorWithOpacity),
                ),
                const SizedBox(height: AppSize.s24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) {
                    return _otpTextField(
                      context,
                      otpControllers[index],
                      index == 0,
                    );
                  }),
                ),
                const SizedBox(height: AppSize.s40),
                SizedBox(
                  width: double.infinity,
                  height: AppSize.s60,
                  child: ElevatedButton(
                    onPressed: () {
                      final otpCode = otpControllers.map((c) => c.text).join();
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
                    child: const Text(AppStrings.continueTxt),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Resend Code',
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyLarge,
                    ),
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
                          _printDuration(
                              Duration(seconds: _numberNotifier.value)),
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: ColorManager.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],),
            ),
          ],
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

Widget _otpTextField(
    BuildContext context, TextEditingController controller, bool autoFocus) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
    child: SizedBox(
      height: AppSize.s52,
      //width: AppSize.s56,
      child: AspectRatio(
        aspectRatio: 0.875,
        child: TextField(
          controller: controller,
          textAlign: TextAlign.center,
          autofocus: autoFocus,
          keyboardType: TextInputType.number,
          maxLines: null,
          expands: true,
          onChanged: (value) {
            if (value.isNotEmpty) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              fillColor: ColorManager.textfieldNumFillColor),
        ),
      ),
    ),
  );
}