import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscuredText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                SizedBox(
                  height: 36.h,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: "Email"),
                      SizedBox(
                        height: 18.h,
                      ),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscuredText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscuredText = !isObscuredText;
                            });
                          },
                          child: Icon(
                            isObscuredText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      AppTextButton(
                        buttonText: "Login",
                        onPressed: () {},
                        textStyle: TextStyles.font16WhiteSemiBold,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const TermsAndConditionsText(),
                      SizedBox(
                        height: 60.h,
                      ),
                      const DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
