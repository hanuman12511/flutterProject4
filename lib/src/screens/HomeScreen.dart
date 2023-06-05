import 'package:flutter/material.dart';
import '../components/HeaderComponents.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  drawer(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text(
          "Would you like to continue learning how to use Flutter alerts?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: TextButton(
              onPressed: () => drawer(context),
              child: Icon(
                Icons.menu,
                color: Colors.amber,
              )),
          title: Text("Hi Hanuman"),
          actions: [
            Container(
              child: TextButton(
                onPressed: () => drawer(context),
                child: const Icon(
                  Icons.portrait,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () => drawer(context),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 100,
            color: Colors.black,
            child: Container(
              height: 100,
              margin: EdgeInsets.only(top: 30),
              color: Color.fromARGB(255, 233, 6, 6),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  height: 300,
                  color: Colors.amber,
                ),
                Container(
                  height: 300,
                  color: Color.fromARGB(255, 156, 7, 255),
                ),
                Container(
                  height: 300,
                  color: Color.fromARGB(255, 255, 226, 7),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}

/* 
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            child: HeaderComponent(),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).size.height * .15,
                  child: Column(children: [
                    Container(
                      color: Color.fromARGB(255, 7, 255, 81),
                      height: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).size.height * .25,
                      child: Column(children: [
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(children: [
                              Container(
                                color: Colors.amber,
                                height: 300,
                              ),
                              Container(
                                color: Color.fromARGB(255, 255, 7, 7),
                                height: 300,
                              )
                            ]),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(255, 81, 7, 255),
                      height: MediaQuery.of(context).size.height * .10,
                      child: Text(
                        "Footer",
                        style: TextStyle(color: Colors.amber, fontSize: 30),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
 */