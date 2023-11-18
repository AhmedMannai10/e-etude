import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/input_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // logo
              const Icon(
                Icons.person,
                size: 90,
              ),

              const SizedBox(height: 30),

              // welcome back, you've been missed!
              Text(
                'Welcome, new here create an account',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              // username textfield
              const InputField(
                controller: null,
                hintText: 'First Name',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              // username textfield
              const InputField(
                controller: null,
                hintText: 'Last Name',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              // username textfield
              const InputField(
                controller: null,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              const InputField(
                controller: null,
                hintText: 'Password',
                obscureText: true,
              ),

              // forgot password?
              const SizedBox(height: 25),

              // sign in button
              LoginButton(
                text: 'Register',
                color: Colors.black87,
                loginMethod: () => {
                  print("hello"),
                },
                icon: Icons.login,
              ),

              const SizedBox(height: 30),
              const SizedBox(height: 20),
              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have an account',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: () => context.go("/"),
                    child: const Text(
                      'Login here',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
        ),
        onPressed: () => {print("login in ......")},
        label: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
