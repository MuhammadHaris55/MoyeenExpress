import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/models/productdetails.dart';
import 'package:moyeen_express/models/signing.dart';
import 'package:moyeen_express/models/signing/signUp.dart';
import 'package:moyeen_express/services/remote_services.dart';
import 'package:moyeen_express/styling/drawerAndBotttomBar/bottomBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigningController extends GetxController {
  var isLoading = false.obs;
  var userList = <Signing>[].obs;
  var userSList = <SignUp>[].obs;
  var attributeList = <String>[].obs;
  var userId = null.obs;

  var appbarText = 'Login'.obs;

  var passVisi = true.obs;
  void passVisibility(){
    passVisi.toggle();
  }

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

  String validator(String? text){
    return 'Please fill this field';
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

    // SharedPreference
    SharedPreferences pref =
    await SharedPreferences.getInstance();
        var user = await pref.setInt('userid', userList.first.user.id);

        print('in controller fetchSignInUser function ${user}');


        return userList.value[0].user.id;
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
      print('out user ${users}');
      if (users != null) {
      print('in controller');
        // userList.value = users;
        // print(userList.value[0]);
        // return userList.value[0].status;
      userSList.value = users;

        print(userSList.value[0]);
        return userSList.value[0].status;
      }
    } finally {
      isLoading(false);
    }
    return 0;
  }

}
