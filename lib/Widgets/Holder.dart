// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/Models/Article_Model.dart';
// import 'package:newsapp/Services/NewServices.dart';
// import 'package:newsapp/Widgets/News_Tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key, required List<ArticleModel> articles,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     GetGeneralNews();
//   }

//   Future<void> GetGeneralNews() async {
//     articles = await Newservices(Dio()).GetNews();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 22),
//               child: NewsTile(
//                 articleModel: articles[index],
//               ),
//             );
//           }));
//   }
// }
