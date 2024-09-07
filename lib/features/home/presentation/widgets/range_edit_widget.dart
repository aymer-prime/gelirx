import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';

class RangeEditWidget extends StatelessWidget {
  final String label;
  final int range;
  const RangeEditWidget({
    super.key,
    required this.label,
    required this.range,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: context.textTheme.bodyLarge,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSize.s36,
                child: OutlinedButton(
                  onPressed: () {
                    var newRange = range - 1;
                    if (newRange > 0) {
                      context.read<HomeBloc>().add(
                            HomeEvent.getRange(newRange),
                          );
                    } else {}
                  },
                  child: Icon(
                    Icons.remove_rounded,
                    color: ColorManager.outlineButtonBorderColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                ),
                child: Text('$range'),
              ),
              SizedBox(
                width: AppSize.s36,
                child: ElevatedButton(
                  onPressed: () {
                    var newRange = range + 1;
                    if (newRange <= 5) {
                      context.read<HomeBloc>().add(
                            HomeEvent.getRange(newRange),
                          );
                    } else {}
                  },
                  child: Icon(
                    Icons.add_rounded,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
