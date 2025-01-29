import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/News_List_view_Builder.dart';
import 'package:newsapp/Widgets/Categories_list_views.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "App",
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: CategoriesListView()),
                const SliverToBoxAdapter(child: SizedBox(height: 30)),
                const NewsListViewBuilder(
                  category: 'Other',
                )
              ],
            )
            //     Column(
            //     children: [
            //     CategoriesListView(),
            //     const SizedBox(
            //       height: 30,
            //     ),
            //     Expanded(child: NewsListView())
            //   ],
            // ),
            ));
  }
}
