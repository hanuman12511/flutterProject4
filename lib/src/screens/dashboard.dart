import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/pro.jpg', height: 100),
              ],
            ),
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
