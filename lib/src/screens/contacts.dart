import 'package:flutter/material.dart';

class Contants extends StatelessWidget {
  const Contants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 208, 255),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trading",
                    style: TextStyle(color: Colors.green[400], fontSize: 40)),
                Text("Trading",
                    style: TextStyle(color: Colors.green[400], fontSize: 40)),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
