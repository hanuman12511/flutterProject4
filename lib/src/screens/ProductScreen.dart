import 'package:flutter/material.dart';
import '../components/HeaderComponents.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  List<String> listdata = [
    "All",
  ];

  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

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

  final _widgetOptions = <Widget>[
    Container(
      height: 300,
      color: Colors.amber,
      child: SingleChildScrollView(
        child: SizedBox(
          height: 200,
          child: Card(
            color: Color.fromARGB(255, 85, 255, 7),
            child: Text("datatitle"),
          ),
        ),
      ),
    ),
    Container(
      height: 300,
      color: Color.fromARGB(255, 106, 255, 7),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 200,
          child: Card(
            color: Color.fromARGB(255, 85, 255, 7),
            child: Text("datatitle"),
          ),
        ),
      ),
    ),
    Container(
      height: 300,
      color: Color.fromARGB(255, 52, 7, 255),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 200,
          child: Card(
            color: Color.fromARGB(255, 85, 255, 7),
            child: Text("datatitle"),
          ),
        ),
      ),
    ),
  ];
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

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
            child: _widgetOptions.elementAt(_selectedIndex),
          )
          /*   Container(
            height: 100,
            child: Container(
              height: 100,
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      labelText: "Enter Date"),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(pickedDate);
                    } else {
                      print("Date is not selected");
                    }
                  }),
            ),
          ), */
          /*   Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  height: 300,
                  color: Color.fromARGB(255, 40, 255, 7),
                ),
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
          ) */
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
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
