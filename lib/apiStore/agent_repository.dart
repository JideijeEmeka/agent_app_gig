import 'package:agent_app/arguments/otp_args.dart';
import 'package:agent_app/views/congratulations_view.dart';
import 'package:agent_app/views/identity_view.dart';
import 'package:agent_app/views/otp.dart';
import 'package:agent_app/views/register_step1_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiStore {
  void agentReg(BuildContext context) async {
    var headers = {
      "authorization": "Bearer 388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Register as an agent"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({
      "firstname": name,
      "lastname": name,
      "phone": "$phoneNumber",
      "address": state,
      "countryCode": "234",
      "stateid": state,
      "email": email,
      "password": password,
      "password_again": password,
      "display_image": "$image"
    });
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      ///Route
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Otp(args: OtpArgument(email: email))));
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  void verifyOtp(String email, BuildContext context) async {
    var headers = {
      "authorization": "Bearer 388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Verify account email otp"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({"otp": verificationCodes, "email": email});
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const CongratulationsView()));
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  void signIn(String email, String password) async {
    var headers = {
      "authorization": "Bearer 388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Account login"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({"username": email, "password": password});
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  void forgetPassword(String email) async {
    var headers = {
      "authorization": "Bearer 388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Reset existing password"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({"email": email});
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  createNewPassword() async {
    var headers = {
      "authorization": "Bearer 388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Create new password"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({"token": "", "password": "", "password_again": ""});
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
