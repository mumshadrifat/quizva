import '../home_page_screen/widgets/viewhierarchy1_item_widget.dart';
import '../home_page_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/home_page_controller.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application1/core/app_export.dart';
import 'package:mumshad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:mumshad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mumshad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mumshad_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.h),
              child: Column(
                children: [
                  _buildWhatAreYouLooking(),
                  SizedBox(height: 19.v),
                  _buildViewHierarchy(),
                  SizedBox(height: 18.v),
                  _buildQuizzes(),
                  SizedBox(height: 12.v),
                  _buildViewHierarchy1(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_welcome_to_quizva".tr,
        margin: EdgeInsets.only(left: 107.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatAreYouLooking() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.teal700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.customBorderTL15,
            ),
            child: Container(
              height: 108.v,
              width: 325.h,
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              decoration: AppDecoration.fillTeal.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL15,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        bottom: 12.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_discover".tr,
                            style:
                                CustomTextStyles.titleLargeMontserratWhiteA700,
                          ),
                          SizedBox(height: 10.v),
                          SizedBox(
                            width: 278.h,
                            child: Text(
                              "msg_meet_other_quizva".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .labelLargeMontserratWhiteA700
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 73.v,
                    width: 50.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 72.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 73.v,
                    width: 50.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 36.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 73.v,
                    width: 50.h,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
          ),
          CustomSearchView(
            controller: controller.searchController,
            hintText: "msg_search_for_a_quiz".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_subjects".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 11.v),
        SizedBox(
          height: 164.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(left: 1.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 15.h,
                );
              },
              itemCount: controller
                  .homePageModelObj.value.viewhierarchyItemList.value.length,
              itemBuilder: (context, index) {
                ViewhierarchyItemModel model = controller
                    .homePageModelObj.value.viewhierarchyItemList.value[index];
                return ViewhierarchyItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildQuizzes() {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_quizzes".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_newest".tr,
                  style: CustomTextStyles.bodySmallTeal700,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgShare,
                  height: 10.v,
                  width: 12.h,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy1() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: controller
            .homePageModelObj.value.viewhierarchy1ItemList.value.length,
        itemBuilder: (context, index) {
          Viewhierarchy1ItemModel model = controller
              .homePageModelObj.value.viewhierarchy1ItemList.value[index];
          return Viewhierarchy1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
