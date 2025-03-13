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
  final password = TextEditingController();
  FocusNode password_F = FocusNode();

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
            SizedBox(height: 120.h),
            // Container(
            //   height: 44.h,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(5.r),
            //   ),
            //   child: textField(email, Icons.email, 'Email', email_F),
            // ),
            textField(email, Icons.email, 'Email', email_F),
            SizedBox(height: 15.h,),
            textField(password, Icons.lock, 'Password', password_F),
            SizedBox(height: 10.h,),
            Forgot(),
            SizedBox(height: 10.h,),
            Login(),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Text('Don\'t have an account?', style: TextStyle(
              fontSize: 13.sp,
              color: Colors.grey),),
                Text('Sign Up', style: TextStyle(
              fontSize: 15.sp,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Login() {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 44.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        'Log In', 
            style: TextStyle(
              fontSize: 23.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    ),
  );
  }

  Widget Forgot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        'Forgot your password?',
        style: TextStyle(
          fontSize: 13.sp,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget textField(TextEditingController controller, IconData icon, String type,
      FocusNode focusNode) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: TextField(
          controller: email,
          focusNode: focusNode,
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: type,
            prefixIcon: Icon(
              icon,
              color: focusNode.hasFocus ? Colors.black : Colors.grey,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
      ),
    );
  }
}
