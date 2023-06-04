import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 5, 159, 183),
            Color.fromARGB(255, 46, 144, 159),
            Color.fromARGB(255, 18, 174, 230)
          ])),
          height: MediaQuery.of(context).size.height * .1,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.menu_rounded,
                      size: 30,
                      color: Colors.amber,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Hi Saini",
                      style: TextStyle(color: Colors.amber, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.amber,
              ),
            )
          ]),
        ),
      ],
    );
  }
}
