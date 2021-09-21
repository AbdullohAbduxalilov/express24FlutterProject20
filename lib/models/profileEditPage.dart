import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {


  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  bool value1 = false;
  bool value2 = true;
  var groupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Card(
            child: Container(
              child: ListTile(
                leading: Text("Name"),
                trailing: Text("Abdulloh"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: ListTile(
                leading: Text("Last name"),
                trailing: Text("Abduxalilov"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: ListTile(
                leading: Text("Date of birth"),
                trailing: Text("10.12.1998"),
              ),
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gender"),
                  Radio(
                    value: value1,
                    groupValue: groupValue,
                    onChanged: ( value) {
                      setState(() {
                        groupValue = value;
                      });
                       },
                  ),
                  Text("Male"),
                  Radio(
                    value: value2,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value;
                      });
                      },
                  ),
                  Text("Female"),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text("E-mail"),
              trailing: Text("Enter E-mail"),
            ),
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.yellow[600],
              ),
              alignment: Alignment.center,
              child: Text("Save"),
              width: double.infinity,
              height: 60.0,
            ),
          ),
        ],
      ),
    );
  }
}
