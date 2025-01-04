import 'package:flutter/material.dart';

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
              // height: 44.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(5.r),
              ),
              child: TextField(
                controller: email,
                focusNode: email_F,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter email...',
                  prefixIcon: Icon(Icons.email),
                  // contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}