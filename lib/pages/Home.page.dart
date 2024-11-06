import 'package:demo_integrador/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: const PreferredSize(
        preferredSize:  Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
          child:
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Expanded(child: Container(

                )
                ),
              ],
            ),
          )
      ),
    );
  }
}