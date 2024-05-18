import 'package:appjamgrup51/pages/bilgi_paylasimi.dart';
import 'package:appjamgrup51/pages/profile_page.dart';
import 'package:appjamgrup51/ui/homepage/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentPageIndex = 0;
  final List<Widget> _pages = [
    HomePageView(),
    BilgiPaylasimi(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home),
              label: "AnaSayfa"),
          NavigationDestination(
              icon: Icon(Icons.alt_route_rounded),
              label: "Bilgi Paylaşımı"),
          NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profil"),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: _pages,
      ),
    );
  }
}
