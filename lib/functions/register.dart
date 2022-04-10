
import 'package:agent_app/apiStore/agent_repository.dart';
import 'package:agent_app/views/identity_view.dart';
import 'package:flutter/material.dart';


GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
ApiStore _apiStore = ApiStore();

void register(BuildContext context) {
  if (registerFormKey.currentState!.validate()) {
    registerFormKey.currentState!.save();
    // _apiStore.agentReg();
    Navigator.push(context, MaterialPageRoute(builder: (_) => const IdentityView()));
  }
}
