import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';

class RangeSliderWidget extends StatelessWidget {
  final String label;
  final int range;
  const RangeSliderWidget({
    super.key,
    required this.label,
    required this.range,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
            min: 1,
            max: 5,
            value: range.toDouble(),
            onChanged: (value) {
              // context.read<HomeBloc>().add(
              //       HomeEvent.getRange(value.toInt()),
              //     );
            },
          ),
          //const SizedBox(height: AppSize.s8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$label: ',
                style: context.textTheme.labelLarge,
              ),
              Text(
                '$range',
                style: context.textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
