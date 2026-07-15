import 'package:flutter/material.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/comic_cover_header.dart';
import 'widgets/comic_info_card.dart';
import 'widgets/comic_description_card.dart';
import 'widgets/comic_stats_section.dart';
import 'widgets/comic_action_bar.dart';

class ComicDetailPage extends StatelessWidget{
 const ComicDetailPage({super.key});
 @override
 Widget build(BuildContext context){
  return const Scaffold(
   backgroundColor: Color(0xffF7F3FF),
   body: SafeArea(child: SingleChildScrollView(
    child: Column(children:[
      DetailAppBar(),
      ComicCoverHeader(),
      ComicInfoCard(),
      ComicDescriptionCard(),
      ComicStatsSection(),
      SizedBox(height:12),
      ComicActionBar(),
      SizedBox(height:16),
    ]),
   )),
  );
 }
}