import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/home_page_provider.dart';

class NameTextView extends StatelessWidget {
  const NameTextView({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    debugPrint("NameTextView.build");

    return Consumer<HomePageProvider>(
      builder: (context, provider, child) {
        debugPrint("NameTextView.consumer");
        return Text(
          provider.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
