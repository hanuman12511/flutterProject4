import 'package:flutter/material.dart';
import '../components/HeaderComponents.dart';
import '../components/HomeComponent.dart';
import '../components/ProductListComponent.dart';
import '../components/CartComponent.dart';
import 'DetailsScreen.dart';
import 'package:http/http.dart' as http;
import 'my_header_drawer.dart';
import 'dashboard.dart';
import 'contacts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    final response =
        await http.get(Uri.parse('http://ankursingh.xyz/api/productshow.php'));

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }

  expenses(dynamic n) {
    print("expenses${n}");
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DetailsScreen(name: n)));

    setState(() {});
  }

  @override
  List<String> listdata = [
    "All",
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String img = "logo.png";
  drawer(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text("No"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Color.fromARGB(255, 255, 193, 7),
      title: TextButton(
        onPressed: () => {},
        child: Icon(Icons.accessible_forward_sharp),
      ),
      content: Container(
        margin: EdgeInsets.only(bottom: 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .3,
        color: Color.fromARGB(255, 255, 193, 7),
        child: Text("Pls Login and after continue.. Enter 'Yes' or 'No"),
      ),
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
  var currentPage = DrawerSection.dashboard;
  Widget MyOrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(children: [
        menuItem(1, "DashBoard", Icons.dashboard_outlined,
            currentPage == DrawerSection.dashboard ? true : false),
        menuItem(2, "contacts", Icons.people_alt_outlined,
            currentPage == DrawerSection.contacts ? true : false),
      ]),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSection.contacts;
            } else if (id == 3) {
              currentPage = DrawerSection.events;
            } else if (id == 4) {
              currentPage = DrawerSection.notes;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSection.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSection.contacts) {
      container = Contants();
    }
    final _widgetOptions = <Widget>[
      HomeComponent(btn: () => expenses("i")),
      ProductListComponent(),
      CartComponent(),
    ];
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [
            MyHeaderDrawer(),
            MyOrawerList(),
          ],
        )),
      ),
      appBar: AppBar(
          /* 
          leading: TextButton(
              onPressed: () => drawer(context),
              child: Icon(
                Icons.menu,
                color: Colors.amber,
              )), */
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
      body: container,

      /*  SingleChildScrollView(
        child: Column(children: [
          Container(
            child: _widgetOptions.elementAt(_selectedIndex),
          ) */
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
      /*  ] ), ), */

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
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
enum DrawerSection {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
