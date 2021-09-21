import 'package:flutter/material.dart';

class SearchBarim extends StatefulWidget {

  @override
  _SearchBarimState createState() => _SearchBarimState();
}

class _SearchBarimState extends State<SearchBarim> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                color: Colors.black,
                onPressed: () {
                  setState(() {

                  });
                },
              ),
              labelText: 'Search',
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "Recent requests",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "Enter a text to search",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
