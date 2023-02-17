import 'package:flutter/material.dart';
import 'package:future_cancel_blocking/basic_cancel_page.dart';
import 'package:future_cancel_blocking/blocking/blocking_page.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Future Cancel Example',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Cancel Blocking')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const BasicCancelPage()));
                },
                child: const Text('Cancel Basic Example')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BlockingPage()));
                },
                child: const Text('Blocking Option Example')),
          ],
        ),
      ),
    );
  }
}
