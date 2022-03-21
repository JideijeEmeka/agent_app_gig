import 'package:agent_app/functions/register.dart';
import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/identity_view.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';

class RegisterStep1View extends StatefulWidget {
  const RegisterStep1View({Key? key}) : super(key: key);

  @override
  _RegisterStep1ViewState createState() => _RegisterStep1ViewState();
}

String name = "";
String email = "";
String state = "";
String password = "";
String confirmPassword = "";

PhoneNumber phoneNumber = PhoneNumber();
TextEditingController phoneNumberController = TextEditingController();

class _RegisterStep1ViewState extends State<RegisterStep1View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 23),
          child: Form(
            key: registerFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 86,
                ),
                Text(
                  "Register",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headerColor,
                          fontStyle: FontStyle.normal)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "Step 1 of 2",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                //full name
                Padding(
                  padding: const EdgeInsets.only(top: 19, bottom: 4),
                  child: Text(
                    "Full Name",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Name cannot be empty';
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Value",
                      hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.hintTextColor,
                              fontStyle: FontStyle.normal)),
                      contentPadding: const EdgeInsets.only(left: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),

                /// phone number
                Padding(
                  padding: const EdgeInsets.only(top: 19, bottom: 4),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber input) => {},
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                      showFlags: true,
                      useEmoji: true,
                      leadingPadding: 10,
                      // backgroundColor,
                      // countryComparator,
                      setSelectorButtonAsPrefixIcon: true,
                    ),
                    hintText: "Mobile Number",
                    onSaved: (input) => phoneNumber = input,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Phone number cannot be empty";
                      } else if (input.length < 12 ||
                          input.startsWith('0') ||
                          input.length > 12) {
                        return "Phone number is not valid";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    keyboardAction: TextInputAction.done,
                    maxLength: 12,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    initialValue: phoneNumber,
                    textFieldController: phoneNumberController,
                    inputBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                //email
                Padding(
                  padding: const EdgeInsets.only(top: 19, bottom: 4),
                  child: Text(
                    "Email Address",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Email cannot be empty';
                    } else if (EmailValidator.validate(val)) {
                      return null;
                    } else {
                      return "Invalid email";
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Value",
                      hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.hintTextColor,
                              fontStyle: FontStyle.normal)),
                      contentPadding: const EdgeInsets.only(left: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                //state
                Padding(
                  padding: const EdgeInsets.only(top: 19, bottom: 4),
                  child: Text(
                    "State",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'State cannot be empty';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      state = val;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Value",
                      hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.hintTextColor,
                              fontStyle: FontStyle.normal)),
                      contentPadding: const EdgeInsets.only(left: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                //password
                Padding(
                  padding: const EdgeInsets.only(top: 19, bottom: 4),
                  child: Text(
                    "Password",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'password cannot be empty';
                    } else if (val.length < 6) {
                      return 'Password must be 6+ characters';
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Value",
                      hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.hintTextColor,
                              fontStyle: FontStyle.normal)),
                      contentPadding: const EdgeInsets.only(left: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  child: btnWidget(context, "Next", onTap: () {
                    // register();
                    register(context);
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightGreyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          PageTransition(
                              child: const SignInView(),
                              type: PageTransitionType.leftToRight,
                              duration: const Duration(milliseconds: 400))),
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 86,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
