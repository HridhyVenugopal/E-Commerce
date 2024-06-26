import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_final/features/authentication/screen/login/login.dart';


class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  ///Variables
   final pageController = PageController();
   Rx<int> currentPageIndex = 0.obs;

  ///Update Current Index when Page Scroll
   void updatePageIndicator(index)=> currentPageIndex = index;

  ///Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///Update Current Index & jump to the next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(const LoginScreen());
    }else{
      int page = currentPageIndex.value = 2;
      pageController.jumpToPage(page);
    }
  }

  ///Update Current Index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}