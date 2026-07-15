import 'package:comicbookapp/presentation/screens/pages/widgets/comic_category_filters.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/comic_grid.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/comic_search_bar.dart';
import 'package:flutter/material.dart';



class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.onPrimary,
      body: SafeArea(
        child: Column(
          children: const [
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ComicSearchBar(),
            ),
            SizedBox(height: 14),
            ComicCategoryFilters(),
            SizedBox(height: 16),
            Expanded(child: ComicGrid()),
          ],
        ),
      ),
   
     
    );
  }
}