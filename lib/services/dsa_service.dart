import 'dart:math';

import 'package:dsa_app/model/kulturschaffende.dart';
import 'package:dsa_app/services/csv_parser.dart';

/**
 * Eine Klasse, die alle unsere Daten speichert und uns Mehtoden bietet, um einfach darauf zuzugreifen
 */
class DsaService {
  bool _initialized = false;

  Random randomNumberGenerator = Random();

  List<Kulturschaffender> _kulturschaffendeBeschreibung = [];
  List<KulturschaffenderKampfwert> _kulturschaffendeKampfwerte = [];

  /**
   * Initialisiert die Daten. Das muss am Anfang einmal aufgerufen werden.
   */
  init() async {
    // load 0000_kulturschaffende_beschreibung
    for (var csvMap in await DsaCsvParser()
        .loadCsvAsMapList('csv/0000_kulturschaffende_beschreibung.csv')) {
      _kulturschaffendeBeschreibung.add(Kulturschaffender.fromCsvMap(csvMap));
    }

    // load 0000_kulturschaffende_kampfwerte
    for (var csvMap in await DsaCsvParser()
        .loadCsvAsMapList('csv/0000_kulturschaffende_kampfwerte.csv')) {
      _kulturschaffendeKampfwerte
          .add(KulturschaffenderKampfwert.fromCsvMap(csvMap));
    }

    _initialized = true;
  }

  /** Gibt zurück, ob die init() Methode oben aufgerunfen wurde und fertig ist */
  bool isInitialized() {
    return _initialized;
  }

  /**
   * Wählt einen zufälligen Kulturschaffenden und gibt ihn zurück
   */
  Kulturschaffender selectRandomKulturschaffender() {
    var randomIndex =
        randomNumberGenerator.nextInt(_kulturschaffendeBeschreibung.length - 1);
    return _kulturschaffendeBeschreibung[randomIndex];
  }
}
