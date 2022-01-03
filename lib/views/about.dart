import 'package:agent_app/helpers/app_bar.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Nothing Here"),
      body: const Center(
        child: Text("Nothing Here!"),
      ),
    );
  }
}
