import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'data.dart';
import 'layout.dart';

int noti_cnt = 3;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.cyan,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: [
                const Text('Favorite'),
                const Text('SSUMAP'),
                const Text('Notifications'),
                const Text('MY'),
              ][currentPageIndex],
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    setState(() {
                      noti_cnt = 0;
                    });
                  },
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  <Widget>[
                    /// Favorite page
                    Carousel(),
                    /// Home page
                    LocationBottomSheet(),
                    /// Notifications page
                    NotiLayout(),
                    /// MY page
                    MyLayout(),
                  ][currentPageIndex],
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_outline),
              label: 'Favorite',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Badge(
                child: Icon(Icons.notifications),
              ),
              icon: Badge(
                child: Icon(Icons.notifications_outlined),
              ),
              label: 'Notifications',
            ),
            NavigationDestination(
              selectedIcon: Badge(
                child: Icon(Icons.account_circle),
              ),
              icon: Badge(
                child: Icon(Icons.account_circle_outlined),
              ),
              label: 'MY',
            ),
          ],
        ),
      ),
    );
  }
}