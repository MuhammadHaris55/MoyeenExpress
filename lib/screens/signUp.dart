import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/buttonElevated.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  // String validator(text) {
  //   if (text.isEmpty) return 'Please fill this field';
  // }

  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  // TextEditingController _lastnameController = new TextEditingController();
  // TextEditingController _addressController = new TextEditingController();
  // TextEditingController _zipcodeController = new TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Create a new account',
          style: GoogleFonts.poppins(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 372.w,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      // validator: (text) => validator(text),
                      controller: _usernameController,
                      cursorColor: textColor,
                      // keyboardType: inputType,
                      // textAlign: TextAlign.start,

                      decoration: new InputDecoration(
                        // prefixIcon: Icon(
                        //   // econ,
                        //   Icons.person_pin,
                        //   color: Colors.themeColor,
                        // ),
                        labelText: "User Name",
                        labelStyle: GoogleFonts.poppins(
                          color: textColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      // validator: (email) => email != null &&
                      //         !EmailValidator.validate(email.trim())
                      //     ? 'Enter a valid Email'
                      //     : null,
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      cursorColor: textColor,
                      // keyboardType: inputType,
                      // textAlign: TextAlign.start,

                      decoration: new InputDecoration(
                        // prefixIcon: Icon(
                        //   // econ,
                        //   Icons.person_pin,
                        //   color: Colors.themeColor,
                        // ),
                        labelText: "Email Address",
                        labelStyle: GoogleFonts.poppins(
                          color: textColor,

                          // fontWeight: FontWeight.bold,
                        ),

                        // focusedBorder: OutlineInputBorder(
                        //   color: myFocusNode.hasFocus ? Colors.blue : Colors.black
                        //   borderSide: BorderSide(color: Colors.themeColor),
                        // ),

                        // border: InputBorder.none,
                        // focusedBorder: InputBorder.none,
                        // enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        // disabledBorder: InputBorder.none,
                        // contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        // hintText: "title",
                        // hintStyle: TextStyle(
                        //   color: Color.fromRGBO(186, 186, 186, 1),
                        // ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          // _email = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      cursorColor: textColor,
                      controller: _passwordController,
                      // keyboardType: TextInputType,
                      // textAlign: TextAlign.start,

                      decoration: new InputDecoration(
                        // prefixIcon: Icon(
                        //   // econ,
                        //   Icons.person_pin,
                        //   color: Colors.themeColor,
                        // ),
                        labelText: "Password",
                        labelStyle: GoogleFonts.poppins(
                          color: textColor,

                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          // _password = value.trim();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      // validator: (text) => validator(text),
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        labelText: "Phone No",
                        labelStyle: GoogleFonts.poppins(
                          color: textColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: buttonDesign,
                      child: button_design(screen, "Create Account"),
                      onPressed: () {
                        // if (formKey.currentState.validate()) {
                        //   setState(() {
                        //     isLoading = true;
                        //   });
                        //   final String _name =
                        //       _firstnameController.text.trim() +
                        //           _lastnameController.text.trim();
                        //   final String _firstname =
                        //       _firstnameController.text.trim();
                        //
                        //   final String _lastname =
                        //       _lastnameController.text.trim();
                        //
                        //   final String _email =
                        //       _emailController.text.trim();
                        //
                        //   final String _password =
                        //       _passwordController.text.trim();
                        //
                        //   final _phoneno = _phoneController.text.trim();
                        //   final String _address =
                        //       _addressController.text.trim();
                        //   final String _zipcode =
                        //       _zipcodeController.text.trim();
                        //   try {
                        //     auth
                        //         .createUserWithEmailAndPassword(
                        //             email: _email, password: _password)
                        //         .then((value) async {
                        //       // User user =
                        //       //     FirebaseAuth.instance.currentUser;
                        //       // user.updatePassword(_phoneno);
                        //       User user =
                        //           FirebaseAuth.instance.currentUser;
                        //       user.updateDisplayName(_name);
                        //
                        //       await FirebaseFirestore.instance
                        //           .collection("users")
                        //           .doc(user.uid)
                        //           .set({
                        //         'name': _firstname + _lastname,
                        //         'uid': user.uid,
                        //         'firstname': _firstname,
                        //         'lastname': _lastname,
                        //         'email': _email,
                        //         'password': _password,
                        //         'phoneno': _phoneno,
                        //         'address': _address,
                        //         'zipcode': _zipcode,
                        //       }).then((value) {
                        //         Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) =>
                        //                     registerDog_1()));
                        //         setState(() {
                        //           isLoading = false;
                        //
                        //           _firstnameController.clear();
                        //           _lastnameController.clear();
                        //           _emailController.clear();
                        //           _passwordController.clear();
                        //           _phoneController.clear();
                        //           _addressController.clear();
                        //           _zipcodeController.clear();
                        //         });
                        //       }).catchError((e) {
                        //         setState(() {
                        //           isLoading = false;
                        //         });
                        //         final text = 'User already exists';
                        //         final snackBar = SnackBar(
                        //           content: Text(text),
                        //         );
                        //         ScaffoldMessenger.of(context)
                        //             .showSnackBar(snackBar);
                        //       });
                        //     }).catchError((e) {
                        //       setState(() {
                        //         isLoading = false;
                        //       });
                        //       final text = 'User already exists';
                        //       final snackBar = SnackBar(
                        //         content: Text(text),
                        //       );
                        //       ScaffoldMessenger.of(context)
                        //           .showSnackBar(snackBar);
                        //     });
                        //   } catch (e) {
                        //     setState(() {
                        //       isLoading = false;
                        //     });
                        //   }
                        // } //remememe
                      },
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
                              onPressed: () {},
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
      ),
    );
  }
}
