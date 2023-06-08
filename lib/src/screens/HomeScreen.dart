import 'package:flutter/material.dart';
import '../components/HeaderComponents.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> listdata = [
    "All",
  ];
  String img = "logo.png";
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

  dateController() {}
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
              child: TextField(
                  //editing controller of this TextField
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly: true, // when true user cannot edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(
                          pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                    } else {
                      print("Date is not selected");
                    }
                  }),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  height: 300,
                  color: Color.fromARGB(255, 40, 255, 7),
                  child: ListTile(
                      hoverColor: Colors.amber,
                      trailing: Icon(Icons.access_alarm_sharp),
                      title: Text("data"),
                      subtitle: Text("data"),
                      leading: CircleAvatar(
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      )),
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/img.jpg'),
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.black54, BlendMode.darken)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 200,
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                color: Colors.amber,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(0),
                              child: Text(
                                "data",
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 25),
                              ),
                            )
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                          child: Text(
                            "Booking",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20),
                          ),
                        ),
                      ]),
                  margin: EdgeInsets.all(10),
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 238, 0, 0)),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("assets/images/img1.jpg"),
                        fit: BoxFit.fitHeight,
                        colorFilter: ColorFilter.mode(
                            Colors.black87, BlendMode.difference)),
                  ),
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
