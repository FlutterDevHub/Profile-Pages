import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wo_flutter/controller/home%20controller/profile_controller.dart';
import 'package:wo_flutter/core/custom_widgets/custam_container.dart';
import 'package:wo_flutter/core/custom_widgets/custom_text.dart';
import 'package:wo_flutter/core/extensions/extension.dart';
import 'package:wo_flutter/core/utils/constant/app_colors.dart';
import 'package:wo_flutter/core/utils/constant/app_images.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                            onPressed: () {},
                          ),
                          CustomText(
                            title: "Profile",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.share, color: Colors.black),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.settings, color: Colors.black),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      1.h.heightBox,
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CustomContainer(
                            height: 15.h,
                            width: double.infinity,
                            //  col: AppColors.primairyColor1,
                            cir: 20,
                            borderRadius: false,
                            bottomLeftR: true,
                            bottomRightR: true,
                            imageDecoration: DecorationImage(
                              image: AssetImage("assets/images/colors.png"),
                              fit: BoxFit.cover,
                            ),
                          ),

                          Positioned(
                            bottom: -5.h,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.center,
                              child: CustomContainer(
                                padding: EdgeInsets.all(4),
                                boxShape: true,
                                col: AppColors.white,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    "assets/images/storyImage.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -4.h,
                            right:
                                MediaQuery.of(context).size.width / 2 -
                                14.w / 2 -
                                7,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.primairyColor2,
                              child: Icon(
                                Icons.camera_alt,
                                size: 12,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      5.h.heightBox,
                      Column(
                        children: [
                          CustomText(
                            title: "Williamson",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),

                          CustomText(
                            title: "Traveller/Tripper",
                            fontSize: 12,
                            color: AppColors.greyColor,
                          ),
                          2.h.heightBox,
                          CustomContainer(
                            height: 10.h,
                            margin: EdgeInsets.symmetric(horizontal: 8.w),
                            padding: EdgeInsets.symmetric(vertical: 1.3.h),
                            borderRadius: true,
                            width: double.infinity,
                            borders: true,
                            borderCol: AppColors.greyColor,
                            cir: 20,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildStat("89", "Posts"),
                                VerticalDivider(
                                  color: AppColors.greyColor,
                                  thickness: 1,
                                ),
                                _buildStat("1.3K", "Followers"),
                                VerticalDivider(color: AppColors.greyColor),
                                _buildStat("435", "Following"),
                              ],
                            ),
                          ),
                          2.h.heightBox,
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomContainer(
                                    padding: EdgeInsets.all(14),
                                    borderRadius: true,
                                    cir: 25,
                                    col: AppColors.primairyColor1,
                                    child: CustomText(
                                      title: "Edit Profile",
                                      color: AppColors.white,
                                    ),
                                  ),
                                  // child: CustomMainButton(
                                  //   text: "Edit Profile",
                                  //   onTap: () {},
                                  // ),
                                ),
                                2.w.widthBox,
                                CustomContainer(
                                  padding: EdgeInsets.all(15),
                                  boxShape: true,
                                  col: AppColors.black,
                                  child: SvgPicture.asset(
                                    AppImages.addPostFill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10),
                    child: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      labelColor: Colors.black,

                      unselectedLabelColor: Colors.grey,

                      indicatorColor: AppColors.primairyColor1,
                      tabs: [
                        Tab(
                          child: Row(
                            children: [
                              SvgPicture.asset(AppImages.post),
                              1.w.widthBox,
                              Text("Post"),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: [
                              SvgPicture.asset(AppImages.vedio),
                              1.w.widthBox,
                              Text("Reels"),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: [
                              SvgPicture.asset(AppImages.tagUser),
                              1.w.widthBox,
                              Text("Mark"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                GridViewContent(),
                GridViewContent(),
                GridViewContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStat(String count, String label) {
    return Column(
      children: [
        CustomText(title: count, fontWeight: FontWeight.w600, fontSize: 16),
        0.1.h.heightBox,
        CustomText(title: label, fontSize: 12, color: AppColors.greyColor),
      ],
    );
  }
}

class GridViewContent extends StatelessWidget {
  const GridViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (_, index) {
        return CustomContainer(
          col: Colors.grey.shade200,
          borderRadius: true,
          cir: 20,
          imageDecoration: DecorationImage(
            image: AssetImage("assets/images/colors.png"),
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
