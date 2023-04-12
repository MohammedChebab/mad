import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Go Premium'),
      ),
      body: Container(
        child: Center(
          child: Card(
            elevation: 10,
            color: Color(0xffBD900A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Card(
                  //   child: ListTile(
                  //     leading: Icon(Icons.lightbulb_outline),
                  //   ),
                  // ),
                  Icon(
                    Icons.lightbulb_outline,
                    size: 150,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 2,
                  ),

                  const Text(
                    "Premium",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "5 euro / maand",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "✓ alle ingredienten",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  const Text(
                    "✓ geen advertentie",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Koop 5 euro",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
