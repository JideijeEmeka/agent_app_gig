import 'package:agent_app/views/dashboard.dart';
import 'package:flutter/material.dart';

GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void login() {
  if (loginFormKey.currentState!.validate()) {
    loginFormKey.currentState!.save();
    Navigator.of(scaffoldKey.currentContext!)
        .push(MaterialPageRoute(builder: (_) => const Dashboard()));
  }
}
