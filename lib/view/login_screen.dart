import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halo_technologies/theam/AppIcons.dart';
import 'package:halo_technologies/theam/appstyle.dart';
import 'package:halo_technologies/utils/appstring.dart';
import 'package:halo_technologies/view/dashboard.dart';
import 'package:halo_technologies/widget/customtextfield.dart';
import 'package:halo_technologies/widget/sizeboxbutton.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isloding = false;

  final formkey = GlobalKey<FormState>();
  final usernamecontoller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColor.loginbackgroun,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _logo(),
                      40.heightBox,
                      _header(),
                      40.heightBox,
                      _usernametextfield(),
                      20.heightBox,
                      _passwordtextfield(),
                      20.heightBox,
                      _loginbutoon(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _usernametextfield() {
    return CustomTextFormFiled(
      prefixIcon: AppIcons.usernameicon,
      labletext: AppString.loginusertext,
      controller: usernamecontoller,
      validator: (value) {
        if (value!.isEmpty) {
          return "required";
        }
      },
    );
  }

  Widget _passwordtextfield() {
    return CustomTextFormFiled(
      obscureText: _isloding,
      prefixIcon: AppIcons.passwordicon,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _isloding = !_isloding;
          });
        },
        icon: _isloding == false
            ? AppIcons.showpasswordicon
            : AppIcons.unshowpasswordicon,
      ),
      labletext: AppString.loginpasswordtext,
      controller: passwordcontroller,
      validator: (value) {
        if (value!.isEmpty || value.length < 6) {
          return "required";
        }
      },
    );
  }

  Widget _loginbutoon() {
    return SizeboxButoon(
      color: Colors.black,
      onPressed: () {
        if (formkey.currentState!.validate()) {
          Get.to(const Dashboard());
        }
      },
      child: Text(
        AppString.logintext,
        style: AppStyle.login,
      ),
    );
  }

  Widget _logo() {
    return Image.asset(
      'assets/img/halo_technologies.webp',
      height: 25.h,
    );
  }

  Widget _header() {
    return Text(
      AppString.logintext,
      style: AppStyle.header,
    );
  }
}
