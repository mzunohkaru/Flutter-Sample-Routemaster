import 'package:flutter/material.dart';
import 'package:navigation_routemaster_sample/routemaster_page.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routerDelegate = RoutemasterDelegate(
    routesBuilder: (context) => RouteMap(routes: {
      '/': (_) => const MaterialPage(child: RouteMasterPage()),
      '/one': (_) => const MaterialPage(child: PageOne()),
      '/two': (_) => const MaterialPage(child: PageTwo()),
      '/one/two': (_) => const MaterialPage(child: PageTwo()),
    }, onUnknownRoute: (route) => const MaterialPage(child: NotFoundPage())),
  );

  @override
  Widget build(BuildContext context) => ExcludeSemantics(
        child: MaterialApp.router(
          routeInformationParser: const RoutemasterParser(),
          routerDelegate: routerDelegate,
        ),
      );
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONE'),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TWO'),
      ),
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotFoundPage'),
      ),
    );
  }
}
