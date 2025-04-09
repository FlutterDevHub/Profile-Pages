import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:social/Controller/profile_controller.dart';
import 'package:social/core/utils/Themes/app_color.dart';
import 'package:social/core/utils/Themes/app_images.dart';
import 'package:social/scr/Profile/all.dart';
import 'package:social/scr/Profile/photos.dart';
import 'package:social/scr/Profile/vedio.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 430.h,
              pinned: true,
              floating: false,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.w,
                      ),
                      child: TabBar(
                        controller: controller.tabController,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.blue,
                        dividerColor: Colors.transparent,
                        tabs: const [
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "Photos",
                          ),
                          Tab(
                            text: "Videos",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.unSplash1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      left: 20.w,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      right: 20.w,
                      child: IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      top: 180.h,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height - 180.h,
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.r),
                            topRight: Radius.circular(50.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("1k",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      Text("Followers",
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Colors.black)),
                                    ],
                                  ),
                                  SizedBox(width: 40.w),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("342",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      Text("Following",
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text("@Catherine13",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              SizedBox(height: 5.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Text(
                                  "My name is Catherine. I like dancing in the rain and traveling all around the world.",
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 9.sp, color: Color(0xFF6C7A9C)),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 70.w,
                                    height: 40.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              AppColors.primaryColor),
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 9.sp),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  SizedBox(
                                    width: 70.w,
                                    height: 40.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.white),
                                      child: Text(
                                        "Message",
                                        style: TextStyle(
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140.h,
                      left: MediaQuery.of(context).size.width / 2 - 40.w,
                      child: Container(
                        padding: EdgeInsets.all(2.sp),
                        margin: EdgeInsets.all(2.sp),
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        
                        ),
                        child: CircleAvatar(
                          radius: 50.sp,
                          backgroundImage: AssetImage(
                            AppImages.aveter1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
              topRight: Radius.circular(50.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: TabBarView(
              controller: controller.tabController,
              physics: BouncingScrollPhysics(),
              children: [
                SingleChildScrollView(child: All()),
                SingleChildScrollView(child: Photos()),
                SingleChildScrollView(child: Vedios()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
