// ignore_for_file: prefer_const_constructors

import 'package:films_application_1/screen/actor_page.dart';
import 'package:films_application_1/screen/films_page.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color.fromARGB(255, 1, 3, 90),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: NavigationBar(
          elevation: 0,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Color.fromARGB(255, 1, 3, 90),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.movie,
                color: Colors.white,
              ),
              icon: Icon(Icons.movie),
              label: 'Films',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.person,
              ),
              label: 'Actors',
            ),
          ],
        ),
      ),
      body: <Widget>[
        const FilmPage(),
        const ActorPage(),
      ][currentPageIndex],
    );
  }
}
