import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  dynamic Function()? btn;
  HomeComponent({super.key, this.btn});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: SizedBox(
            height: height,
            child: Card(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 7,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Color.fromARGB(255, 178, 177, 177),
                              offset: Offset(5, 2)),
                        ],
                        color: Color.fromARGB(255, 253, 253, 251),
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 216, 216),
                            width: 1)),
                    child: Column(children: [
                      Container(
                        width: 200,
                        height: 100,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img3.jpg"),
                              fit: BoxFit.cover),
                        ),
                        child: Row(children: [Text("data")]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Text(
                          "Vegan chickpea curry jacket potatoes",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "Get some protein int a vegan",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 108, 108, 108)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        height: 2,
                        color: Color.fromARGB(255, 241, 241, 241),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text("\$39"),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: btn,
                                  child: Icon(Icons.add_shopping_cart),
                                ),
                              )
                            ]),
                      ),
                    ]),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
