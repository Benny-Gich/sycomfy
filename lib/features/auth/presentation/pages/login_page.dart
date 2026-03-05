import 'package:flutter/material.dart';
import 'package:sycomfy/features/app/presentation/widget/app_button.dart';
import 'package:sycomfy/features/auth/presentation/widgets/auth_button.dart';
import 'package:sycomfy/features/auth/presentation/widgets/auth_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.shopping_basket, size: 45),
              ),
              SizedBox(height: 5),
              Text(
                'Sycomfy',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text(
                'Your hub for shopping and repairs',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Log in to manage your order and repairs',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Email Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  AuthField(
                    controller: TextEditingController(),
                    hintText: "name@example.com",
                    prefixIcon: Icon(Icons.mail),
                  ),
                  SizedBox(height: 10),
                  Text('Password'),
                  SizedBox(height: 5),
                  AuthField(
                    controller: TextEditingController(),
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.visibility_off),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(
                            text: 'Forgot Password?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              AuthButton(onPressed: () {}, buttonName: 'Login'),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Divider(), Text('OR CONTINUE WITH'), Divider()],
              ),

              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppButton(
                    text: 'Google',
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  AppButton(
                    text: 'Apple',
                    onPressed: () {},
                    icon: Icon(Icons.apple),
                  ),
                ],
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      //color: Theme.of(context).colorScheme.tertiary,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
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
}
