import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();

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
              // height: 44.h,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(5.r),
              ),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}