import 'package:dsa_app/model/kulturschaffende.dart';
import 'package:dsa_app/services/dsa_service.dart';
import 'package:dsa_app/ui/kulturschaffender_details.dart';
import 'package:flutter/material.dart';

// NOTES
// - Datenformat noch technischer (Gewicht nicht als String,...)

/**
 * Unsere Startseite 
 */
class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Kulturschaffender? _selectedKulturschaffender = null;
  DsaService dsaService = DsaService();

  @override
  void initState() {
    super.initState();
    dsaService.init();
  }

  /**
   * Holt sich einen zufälligen Kulturschaffenden aus dem DSA Service und setzt ihn als den aktuell anzuzeigenden
   */
  void _selectKulturschaffender() {
    if (dsaService.isInitialized()) {
      setState(() {
        _selectedKulturschaffender = dsaService.selectRandomKulturschaffender();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Statischer Text, der Nutzern die App erklärt
              const Text(
                'Klicke den Button, um einen zufälligen Kulturschaffenden anzuzeigen.',
                style: TextStyle(fontSize: 18),
              ),
              // Eine Box, um Abstand zu halten zum nächsten Widget
              const SizedBox(height: 20),
              // Ein Button mit dem Text Zufall. Wenn man ihn klickt, wird _selectKulturschaffender oben aufgerufen
              FilledButton(
                onPressed: _selectKulturschaffender,
                child: Text('Zufall'),
              ),
              // Eine Box, um Abstand zu halten zum nächsten Widget
              const SizedBox(height: 20),
              // zeigt den aktuell ausgewählten kulturschaffenden an
              KulturschaffenderDetails(_selectedKulturschaffender),
            ],
          ),
        ),
      ),
    );
  }
}
