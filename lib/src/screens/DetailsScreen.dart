import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  String? name;
  DetailsScreen({super.key, this.name});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Icon(Icons.accessibility_new)),
            ),
            /*  Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(73, 255, 193, 7),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .8,
                color: Color.fromARGB(255, 7, 255, 172),
                child: Stack(children: []),
              )
            ]),
          ) */
          ],
        ),
      ),
    );
  }
}
