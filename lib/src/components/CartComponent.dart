import 'package:flutter/material.dart';

class CartComponent extends StatelessWidget {
  const CartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: width,
        height: 300,
        color: Colors.amber,
        child: SingleChildScrollView(
          child: SizedBox(
            height: 200,
            child: Card(
              color: Color.fromARGB(255, 85, 255, 7),
              child: Text("Product cart"),
            ),
          ),
        ),
      ),
    );
  }
}
