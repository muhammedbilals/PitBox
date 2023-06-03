import 'package:flutter/material.dart';
import 'package:pit_box/utils/widgets/app_bar_widget.dart';

class NewsDetailedScreen extends StatelessWidget {
  const NewsDetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidget(title: 'My Orders')),
    );
  }
}
