import '../controller/home_page_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Container(
          height: 164.v,
          width: 156.h,
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 1.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 81.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              viewhierarchyItemModelObj.phpText!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            width: 24.h,
                            margin: EdgeInsets.symmetric(vertical: 3.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillTeal.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2,
                            ),
                            child: Obx(
                              () => Text(
                                viewhierarchyItemModelObj.newText!.value,
                                style: CustomTextStyles.poppinsWhiteA700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          viewhierarchyItemModelObj.updatedText!.value,
                          style: CustomTextStyles.bodySmall10_1,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              viewhierarchyItemModelObj.topicText!.value,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 4.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.teal700,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Obx(
                              () => Text(
                                viewhierarchyItemModelObj.questionsText!.value,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 83.v,
                  width: 156.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 45.h,
                    vertical: 25.v,
                  ),
                  decoration: AppDecoration.fillTeal.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL12,
                  ),
                  child: Obx(
                    () => CustomImageView(
                      imagePath: viewhierarchyItemModelObj.phpImage!.value,
                      height: 31.v,
                      width: 66.h,
                      alignment: Alignment.center,
                    ),
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
