import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // SizedBox(width: 96.w, height: 100.h,),
            Center(
              child: Image.asset('assets/images/logo.jpg'),
            ),
            // SizedBox(height: 120.h),
            const SizedBox(height: 120,),
            Container(
              height: 44.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
              ),
              // child: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 10.w),
              //   child: TextField(
              //     controller: email,
              //     focusNode: email_F,
              //     style: TextStyle(fontSize: 18.sp, color: Colors.black),
              //     decoration: InputDecoration(
              //       labelText: 'Email',
              //       hintText: 'Enter email...',
              //       prefixIcon: const Icon(Icons.email),
              //       contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(5.r),
              //         borderSide: BorderSide(color: Colors.black, width: 2.w),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(5.r),
              //         borderSide: BorderSide(color: Colors.black, width: 2.w),
              //       ),
              //     ),
              //   ),
              // ),
              child: textField(email, Icons.email, 'Email', email_F),
            ),
          ],
        ),
      ),
    );
  }

  Widget textField(TextEditingController controller, IconData icon, String type, FocusNode focusNode) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextField(
                  controller: email,
                  focusNode: focusNode,
                  style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: type,
                    prefixIcon: Icon(icon, color: focusNode.hasFocus ? Colors.black: Colors.grey,),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color: Colors.black, width: 2.w),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color: Colors.black, width: 2.w),
                    ),
                  ),
                ),
    );
  }
}