import 'package:flutter/material.dart';

class ProfileCashBack extends StatefulWidget {
  const ProfileCashBack({Key? key}) : super(key: key);

  @override
  _ProfileCashBackState createState() => _ProfileCashBackState();
}

class _ProfileCashBackState extends State<ProfileCashBack> {
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
