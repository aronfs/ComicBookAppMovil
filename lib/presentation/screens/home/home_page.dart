import 'package:comicbookapp/presentation/screens/home/widgets/custom_navigation_bar.dart';
import 'package:comicbookapp/presentation/screens/pages/catalog_page.dart';
import 'package:comicbookapp/presentation/screens/pages/profile_page.dart';
import 'package:comicbookapp/presentation/screens/pages/upload_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> get pages => [CatalogPage(), UploadPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: ComicBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
