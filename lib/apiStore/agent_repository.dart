import 'package:http/http.dart' as http;

class ApiStore {
  void agentReg() async {
    var headers = {
      "authorization": "388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Register as an agent"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({
      "firstname": "",
      "lastname": "",
      "phone": "",
      "address": "",
      "countryCode": "",
      "stateid": "",
      "email": "",
      "password": "",
      "password_again": "",
      "display_image": ""
    });
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  void verifyOtp(String token, String email) async {
    var headers = {
      "authorization": "388b77473d46a13724192ae7735219a2ecae7a1b",
      "x-meta-service": "Authentication",
      "x-meta-method": "Verify account email otp"
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://server2.trackhub.ng/api'));
    request.headers.addAll(headers);
    request.fields.addAll({"otp": token, "email": email});
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  void signIn(String email, String password) async {
    var headers = {
      "authorization": "388b77473d46a13724192ae7735219a2ecae7a1b",
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
      "authorization": "388b77473d46a13724192ae7735219a2ecae7a1b",
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
      "authorization": "388b77473d46a13724192ae7735219a2ecae7a1b",
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
