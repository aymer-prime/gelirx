import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/widgets/home_draggable_sheet.dart';
import 'package:gelirx/features/shared/domain/entities/shared_entities.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  final UserSkills categoryDetails;
  const CategoryPage({
    super.key,
    required this.categoryDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryDetails.skill.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: categoryDetails.subSkill.length,
          separatorBuilder: (context, index) => SizedBox(height: AppSize.s8.h),
          itemBuilder: (context, index) => AspectRatio(
            aspectRatio: 1.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                AppSize.s8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(
                    AppSize.s8,
                  ),
                ),
                child: ServiceCard(
                  category: categoryDetails.subSkill[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
