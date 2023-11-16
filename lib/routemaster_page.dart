import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class RouteMasterPage extends StatelessWidget {
  const RouteMasterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Master Page'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () => Routemaster.of(context).replace('/two'),
              child: Text('Replace page two'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Routemaster.of(context).push('/two'),
              child: Text('Push page two'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Routemaster.of(context).push('/one'),
              child: Text('Push page one'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Routemaster.of(context).replace('/adsffs'),
              child: Text('Unknown route'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
