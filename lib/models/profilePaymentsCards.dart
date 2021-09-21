import 'package:flutter/material.dart';

class ProfilPaymentsCards extends StatefulWidget {
  const ProfilPaymentsCards({Key? key}) : super(key: key);

  @override
  _ProfilPaymentsCardsState createState() => _ProfilPaymentsCardsState();
}

class _ProfilPaymentsCardsState extends State<ProfilPaymentsCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payments cards",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.credit_card,
              size: 100.0,
            ),
            Text(
              "You haven't added the cards yet",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Card(
              child: Container(
                height: 60.0,
                color: Colors.yellow[600],
                child: Center(
                  child: Text(
                    "Add a Card",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
