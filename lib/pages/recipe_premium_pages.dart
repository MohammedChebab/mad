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
            color: Color.fromARGB(131, 130, 124, 124),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(130.0),
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
                  
                  const Text("Premium"),
                  const Text("15 / maand"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("✓ alle ingredienten"),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  const Text("✓ geen advertentie"),
                  const SizedBox(
                    height: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Koop 5 euro"),
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
