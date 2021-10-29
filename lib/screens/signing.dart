import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moyeen_express/controllers/signingcontroller.dart';
import 'package:moyeen_express/services/remote_services.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/buttonElevated.dart';
import 'package:moyeen_express/styling/drawerAndBotttomBar/bottomBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signing extends StatelessWidget {
  Signing({Key? key}) : super(key: key);


  final SigningController signingController = Get.put(
    SigningController(),
  );

static const List<Tab> tabs = <Tab>[
  Tab(text: 'Login'),
  Tab(text: 'Create Account'),
];


  // void checklogin() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   String? email = pref.getString('email');
  //   if (email != null) {
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (context) => BottomBar()), (route) => false);
  //   }
  // }


  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  FocusNode myFocusNode = new FocusNode();
  final signinformKey = GlobalKey<FormState>();
  final signupformKey = GlobalKey<FormState>();
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: tabs.length,
        // The Builder widget is used to have a different BuildContext to access
        // closest DefaultTabController.
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              signingController.updateAppbarText(tabController.index);
              // setState(() {
              //   if (tabController.index == 0) {
              //     appbar = text;
              //   } else {
              //     appbar = text1;
              //   }
              // });

              // // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title:
              // Text(signingController.appbarText.value),
              Obx(
                      () => Text(signingController.appbarText.value),
              ),
              // Obx(
              //         () => Text(signingController.appbarText == '' ? '' : '')
              // ),
              centerTitle: true,
              bottom: TabBar(
                  automaticIndicatorColorAdjustment: false,
                  indicatorColor: Colors.orange,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white,
                  indicator: ShapeDecoration.fromBoxDecoration(
                      BoxDecoration(color: Colors.white)),
                  tabs: [
                    Tab(
                      text: 'Login',
                    ),
                    Tab(
                      child: Text('Create Account'),
                    ),
                  ]
                // tabs: tabs,
              ),
            ),
            body: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.0.w,
                  ),
                  child: Form(
                    key: signinformKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(

                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email',
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: themeColor,
                            ),
                            labelText: 'Email ',
                            labelStyle: TextStyle(
                              color: Colors.orange,
                            ),
                            fillColor: Colors.orange,
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.orange, width: 2.0),
                              // borderRadius: BorderRadius.circular(25.0),
                            ),
                            // focusColor:orangeFocusColor
                          ),
                          controller: _emailController,
                          // onSaved: (String? value) {
                          //   // This optional block of code can be used to run
                          //   // code when the user saves the form.
                          // },
                          validator: (String? value) {
                            return (value != null
                                // && value.contains('@')
                            )
                                ? 'fill'
                            // 'Do not use the @ char.'
                                : 'Please enter value';
                          },
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        Obx(
                          () => TextFormField(

                            validator: (text) => signingController.validator(text),
                            obscureText: signingController.passVisi.value,
                            cursorColor: Colors.orange,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(signingController.passVisi != true ? Icons.visibility : Icons.visibility_off, color: Colors.orange,),
                                onPressed: (){
                                  signingController.passVisibility();
                                },
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: themeColor,
                              ),
                              hintText: 'Enter Your Password?',
                              labelText: 'Password ',
                              labelStyle: TextStyle(color: Colors.orange),
                              fillColor: Colors.orange,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.orange, width: 2.0),
                                // borderRadius: BorderRadius.circular(25.0),
                              ),

                              // focusColor: orangeFocusColor,
                              // focusedBorder:InputBorder.none
                            ),
                            controller: _passwordController,
                            // onSaved: (String? value) {
                            //   // This optional block of code can be used to run
                            //   // code when the user saves the form.
                            // },
                            // validator: (String? value) {
                            //   return (value != null && value.contains('@'))
                            //       ? 'Do not use the @ char.'
                            //       : null;
                            // },
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                                onPressed: () {
                                  Get.snackbar('WARNING',
                                      "Functionality under development");
                                },
                                child: Text(
                                  'Forget your Password?',
                                  style: TextStyle(color: Colors.orange),
                                )),
                          ],
                        ),
                        Obx(
                              () => Center(
                            child: signingController.isLoading == true ?
                            CircularProgressIndicator()
                            // Text('sdkfm')
                                : Container(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        ElevatedButton(
                            style: buttonDesign,
                            onPressed: () async {
                              // if (signinformKey.currentState!.validate()) {
                              // setState(() {
                              //   isLoading = true;
                              // });
                              var email = _emailController.text.toString().trim();
                              var pass = _passwordController.text.toString().trim();

                              try {
                                var res = await signingController.fetchSignInUser(email, pass);
                                if(res != 0){
                                  Get.off(() => BottomBar());
                                }
                                RemoteServices.signInUser(email, pass).then(
                                          (value) async {

                                        // SharedPreference
                                        SharedPreferences pref =
                                        await SharedPreferences.getInstance();
                                        await pref.setString('email', email);
                                        print('onscreen signing login ${res}');
                                        await pref.setInt('userid', res);
                                        print('on signing screen ${res}');

                                        // Get.to(() => BottomBar());
                                        // setState(() {
                                        //   isLoading = false;
                                        // });
                                      }).catchError((e) {
                                  // setState(() {
                                  //   isLoading = false;
                                  // });
                                  Get.snackbar('Error', e.toString());
                                });
                                // auth
                                //     .signInWithEmailAndPassword(
                                //         email: _email, password: _password)
                                //     .then((_) async {
                                //   //SharedPreference
                                //   SharedPreferences pref =
                                //       await SharedPreferences.getInstance();
                                //   await pref.setString('email', _email);



                                // setState(() {
                                //   isLoading = false;
                                // });
                                // }).catchError((e) {
                                // setState(() {
                                //   isLoading = false;
                                // });
                                // final text = 'Invalid Email or Password';
                                // final snackBar = SnackBar(
                                //   content: Text(text),
                                // );
                                // ScaffoldMessenger.of(context)
                                //     .showSnackBar(snackBar);
                                // });
                              } catch (e) {
                                // setState(() {
                                //   isLoading = false;
                                // });
                                Get.snackbar('Error', 'Something went wrong.');
                              }
                            }
                            // },
                            // Get.to(BottomBar());
                            // },
                            ,child: button_design(334, 'Login')),
                        SizedBox(height: 30),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "New on Moyen?",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    print(tabController.index = 1);
                                    tabController.addListener(() {
                                      tabController.indexIsChanging;
                                    });

                                    // tabController.addListener(() { DefaultTabController.of(context)});
                                  },
                                  child: Text(
                                    'Create Account',
                                    style: GoogleFonts.poppins(
                                      color: Colors.orange,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: 10),

                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30.0.h),
                      width: 372.w,
                      child: Form(
                        key: signupformKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              // validator: (text) => validator(text),
                              controller: _usernameController,
                              cursorColor: Colors.orange,
                              // keyboardType: inputType,
                              // textAlign: TextAlign.start,

                              decoration: new InputDecoration(
                                // prefixIcon: Icon(
                                //   // econ,
                                //   Icons.person_pin,
                                //   color: Colors.themeColor,
                                // ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                labelText: "User Name",
                                labelStyle: GoogleFonts.poppins(
                                  color: textColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              focusNode: myFocusNode,
                              // validator: (email) => email != null &&
                              //         !EmailValidator.validate(email.trim())
                              //     ? 'Enter a valid Email'
                              //     : null,
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              cursorColor: Colors.orange,

                              decoration: new InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                // prefixIcon: Icon(
                                //   // econ,
                                //   Icons.person_pin,
                                //   color: Colors.themeColor,
                                // ),
                                labelText: "Email Address",

                                // fillColor: orangeFocusColor,
                                //   fillColor:  Colors.black,

                                labelStyle: GoogleFonts.poppins(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.black
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              onChanged: (value) {
                                // setState(() {
                                //   // _email = value.trim();
                                // });
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              obscureText: true,
                              cursorColor: Colors.orange,
                              controller: _passwordController,
                              // keyboardType: TextInputType,
                              // textAlign: TextAlign.start,

                              decoration: new InputDecoration(
                                // prefixIcon: Icon(
                                //   // econ,
                                //   Icons.person_pin,
                                //   color: Colors.themeColor,
                                // ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                labelText: "Password",

                                labelStyle: GoogleFonts.poppins(
                                  color: textColor,

                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              onChanged: (value) {
                                // setState(() {
                                //   // _password = value.trim();
                                // });
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              // validator: (text) => validator(text),
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              cursorColor: Colors.orange,
                              decoration: new InputDecoration(
                                labelText: "Phone No",
                                labelStyle: GoogleFonts.poppins(
                                  color: textColor,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Obx(
                                  () => Center(
                                child: signingController.isLoading == true ?
                                CircularProgressIndicator()
                                // Text('sdkfm')
                                    : Container(),
                              ),
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              style: buttonDesign,
                              child: button_design(334, "Create Account"),
                                onPressed: () async {

                                  var username = _usernameController.text.toString().trim();
                                  var email = _emailController.text.toString().trim();
                                  var pass = _passwordController.text.toString().trim();
                                  var phone = _phoneController.text.toString().trim();

                                  try {
                                    var res = await signingController.fetchSignUpUser(username, email, pass, phone);
                                    print(res);
                                    if(res == 1){
                                      // Get.off(() => BottomBar());
                                      print(tabController.index = 0);
                                      tabController.addListener(() {
                                        tabController.indexIsChanging;
                                        Get.snackbar('Success', 'Registeration Completed Successfully');

                                        _emailController.text = _usernameController.text = _phoneController.text = _passwordController.text = '';
                                      });
                                    }
                                    RemoteServices.signUpUser(username, email, pass, phone).then(
                                            (value) async {

                                          // SharedPreference
                                          SharedPreferences pref =
                                          await SharedPreferences.getInstance();
                                          await pref.setString('email', email);
                                    }).catchError((e) {
                                      print('catch error');
                                      Get.snackbar('Error', e.toString());
                                    });
                                  } catch (e) {
                                      print('error');
                                    Get.snackbar('Error', 'Something went wrong.');
                                  }
                                }
                            ),
                            SizedBox(height: 30),
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        print(tabController.index = 0);
                                        tabController.addListener(() {
                                          tabController.indexIsChanging;
                                        });

                                        // tabController.addListener(() { DefaultTabController.of(context)});
                                      },
                                      child: Text(
                                        'Login',
                                        style: GoogleFonts.poppins(
                                          color: Colors.orange,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}


