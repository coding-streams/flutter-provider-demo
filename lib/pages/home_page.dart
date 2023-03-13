import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/home_page_provider.dart';
import 'package:provider_demo/repos/names_repo.dart';
import 'package:provider_demo/widgets/name_text_view.dart';

import '../widgets/get_name_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = "";

  @override
  void initState() {
    super.initState();

    name = NamesRepository.getInstance().getRandomName();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("HomePage.build");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Names Generator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: NameTextView(name: name),
            ),
            GetNameButton(
              text: "Get Name (setState())",
              onPressed: () {
                setState(() {
                  name = NamesRepository.getInstance().getRandomName();
                });
              },
            ),
            GetNameButton(
              text: "Get Name (Provider)",
              onPressed: () {
                Provider.of<HomePageProvider>(context, listen: false)
                    .getRandomName();
              },
            )
          ],
        ),
      ),
    );
  }
}
