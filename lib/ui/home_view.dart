import 'dart:math';

import 'package:dsa_app/model/kulturschaffende.dart';
import 'package:dsa_app/services/csv_parser.dart';
import 'package:dsa_app/ui/kulturschaffender_details.dart';
import 'package:flutter/material.dart';

// NOTES
// - Datenformat noch technischer (Gewicht nicht als String,...)

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Kulturschaffender> kulturschaffende = [];
  Kulturschaffender? selectedKulturschaffender = null;

  @override
  void initState() {
    super.initState();
    initAsync();
  }

  Future<void> initAsync() async {
    for (var csvMap in await DsaCsvParser()
        .loadCsvAsMapList('csv/0000_kulturschaffende.csv')) {
      kulturschaffende.add(Kulturschaffender.fromCsvMap(csvMap));
    }
  }

  void selectRandomKulturschaffenden() {
    print(kulturschaffende.isEmpty);
    if (kulturschaffende.isNotEmpty) {
      var randomInt = Random().nextInt(kulturschaffende.length - 1);
      setState(() {
        selectedKulturschaffender = kulturschaffende[randomInt];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Klicke den Button, um einen zufälligen Kulturschaffenden anzuzeigen.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: selectRandomKulturschaffenden,
              child: Text('Zufall'),
            ),
            if (selectedKulturschaffender != null)
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: KulturschaffenderDetails(selectedKulturschaffender!),
              ),
          ],
        ),
      ),
    );
  }
}
