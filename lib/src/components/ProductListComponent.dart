import 'package:flutter/material.dart';

class ProductListComponent extends StatelessWidget {
  const ProductListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 300,
        color: Colors.amber,
        child: SingleChildScrollView(
          child: SizedBox(
            height: 200,
            child: Card(
              color: Color.fromARGB(255, 85, 255, 7),
              child: Text("Product"),
            ),
          ),
        ),
      ),
    );
  }
}
