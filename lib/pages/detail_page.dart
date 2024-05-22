import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
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
          Expanded(
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Center(
                ),
              ),
            ),
          ),
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
