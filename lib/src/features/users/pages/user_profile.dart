import 'dart:convert';

import 'package:elearning/src/core/widgets/input_field.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("My Profile"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    child: InputField(
                  controller: null,
                  hintText: 'Change Username',
                  obscureText: false,
                )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    child: InputField(
                  controller: null,
                  hintText: 'Change Email',
                  obscureText: false,
                )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    child: InputField(
                  controller: null,
                  hintText: 'Change Password',
                  obscureText: true,
                )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    width: 200,
                    height: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Save'),
                    )),
              ),
            ],
          ),
        ));
  }
}
