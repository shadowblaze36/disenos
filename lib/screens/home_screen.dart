import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../widgets/card_table.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //Titulos
        PageTitle(),
        //Card Table
        CardTable(),
      ]),
    );
  }
}
