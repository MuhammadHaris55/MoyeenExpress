import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/models/productdetails.dart';
import 'package:moyeen_express/models/signing.dart';
import 'package:moyeen_express/services/remote_services.dart';
import 'package:moyeen_express/styling/drawerAndBotttomBar/bottomBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigningController extends GetxController {
  var isLoading = true.obs;
  var userList = <Signing>[].obs;
  var attributeList = <String>[].obs;

  var appbarText = 'Login'.obs;


  @override
  void onInit() {
    // fetchProductDetails();
    checklogin();
    super.onInit();
  }

  void checklogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? email = pref.getString('email');
    if (email != '') {
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (context) => BottomBar()), (route) => false);
      Get.offAll(() => BottomBar());

    }
  }

  updateAppbarText(index){
    if (index == 0) {
      appbarText.value = 'Login';
    } else {
      appbarText.value = 'Create Account';
    }
  }

  // updateID(var index) {
  //   productDetailsList.value = [];
  //   attributeList.value = [];
  //   fetchProductDetails(productController.productList[index].id);
  // }

  // updateattributeList(var val, var index) {
  //   attributeList[index] = val;
  // }


  //======================================================= POST API --------- SignIn ============================
  Future<int> fetchSignInUser(var email, var password) async {
    try {
      isLoading(true);
      // var users = await RemoteServices.fetchProductDetails(id);
      var users = await RemoteServices.signInUser(email, password);
      if (users != null) {
        userList.value = users;
        print(userList.value[0]);

        return userList.value[0].status;
      }
    } finally {
      isLoading(false);
    }
    return 0;
  }

  //======================================================= POST API --------- SignUp ============================
  Future<int> fetchSignUpUser(var username, var email, var password, var phone_number) async {
    try {
      isLoading(true);
      // var users = await RemoteServices.fetchProductDetails(id);
      var users = await RemoteServices.signUpUser(username, email, password, phone_number);
      if (users != null) {
        userList.value = users;
        print(userList.value[0]);

        return userList.value[0].status;
      }
    } finally {
      isLoading(false);
    }
    return 0;
  }

}
