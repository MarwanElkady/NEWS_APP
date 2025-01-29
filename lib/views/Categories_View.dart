import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/News_List_view_Builder.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.category});

  final String category;
  @override
  build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
