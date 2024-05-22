import 'package:flutter/material.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({super.key});

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Product Page'),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: const Center(
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Producto 1'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: const Center(
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Producto 2'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.info, size: 40.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart, size: 40.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/shop');
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
