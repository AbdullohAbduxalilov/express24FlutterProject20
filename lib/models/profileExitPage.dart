import 'package:flutter/material.dart';

class ProfileExitPage extends StatefulWidget {
  const ProfileExitPage({Key? key}) : super(key: key);

  @override
  _ProfileExitPageState createState() => _ProfileExitPageState();
}

class _ProfileExitPageState extends State<ProfileExitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authorification"),
      ),
    );
  }
}
