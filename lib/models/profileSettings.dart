import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  int? groupValue;
  int russian = 1;
  int english = 2;
  int uzbek = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Language",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Radio(
              splashRadius: 30.0,
              value: russian,
              groupValue: groupValue,
              onChanged: (int? e){
                setState(() {
                  groupValue = e!;
                });
              },
            ),
            Radio(
              value: english,
              groupValue: groupValue,
              onChanged: (int? e){
                setState(() {
                  groupValue = e;
                });
              },
            ),
            Radio(
              value: uzbek,
              groupValue: groupValue,
              onChanged: (int? e){
                setState(() {
                  groupValue = e;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
