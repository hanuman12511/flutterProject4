import 'package:flutter/material.dart';
import '../components/HeaderComponents.dart';

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
