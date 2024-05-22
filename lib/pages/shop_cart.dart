import 'package:flutter/material.dart';

class ShopCartPage extends StatefulWidget {
  const ShopCartPage({super.key});

  @override
  State<ShopCartPage> createState() => _ShopCartPageState();
}

class _ShopCartPageState extends State<ShopCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Cart Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.list, size: 40.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/list');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.info, size: 40.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.exit_to_app, size: 40.0),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
