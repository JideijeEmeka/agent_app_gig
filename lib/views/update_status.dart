import 'package:agent_app/helpers/app_bar.dart';
import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateStatus extends StatefulWidget {
  const UpdateStatus({Key? key}) : super(key: key);

  @override
  _UpdateStatusState createState() => _UpdateStatusState();
}

class _UpdateStatusState extends State<UpdateStatus> {
  GlobalKey<FormState> statusFormKey = GlobalKey<FormState>();

  String selectedValue = "";
  List<String> orderStatus = [
    "Order picked",
    "Order sent to the airport",
    "Order shipped",
    "Order at warehouse",
    "Order delivered",
    "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Update order status"),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: statusFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Status",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                    dropdownColor: AppColors.whiteColor,
                    onSaved: (newValue) {
                      setState(() {
                        selectedValue = newValue as String;
                      });
                    },
                    validator: (val) {
                      if (val == null) {
                        return "status is required";
                      }
                    },
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    hint: Text(
                      "Order sent to the airport",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightGreyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.blackColor,
                    ),
                    iconDisabledColor: AppColors.greyColor,
                    iconSize: 20,
                    iconEnabledColor: AppColors.btnColor,
                    onTap: () {},
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                    items: orderStatus
                        .map((status) => DropdownMenuItem(
                            child: Text(status), value: status))
                        .toList(),
                    onChanged: (value) => setState(() {
                          selectedValue = value as String;
                        })),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColors.greyColor,
                      )),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    minLines: 2,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Summary cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.whiteColor)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.whiteColor)),
                      hintText: "Add order summary",
                      hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightGreyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: btnWidget(context, "Update"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
