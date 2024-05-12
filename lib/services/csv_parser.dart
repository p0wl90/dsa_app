import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

/**
 * Lädt ein CSV (hier musst du vermutlich nichts machen)
 */
class DsaCsvParser {
  final CsvToListConverter converter =
      CsvToListConverter(shouldParseNumbers: false);

  /**
   * Lädt ein CSV und konvertiert es als Liste von Maps (hier nichts ändern)
   */
  Future<List<Map<String, dynamic>>> loadCsvAsMapList(String assetPath) async {
    var csvEntries = <Map<String, dynamic>>[];

    var list = await converter.convert(await rootBundle.loadString(assetPath));
    var header = list.elementAt(0);
    list.removeAt(0);

    //iterate over all lines in the csv
    for (var csvEntry in list) {
      var map = <String, dynamic>{};

      //iterate over all entries in one line of the csv
      for (var i = 0; i < csvEntry.length; i++) {
        map[header[i]] = csvEntry[i] == null ? '' : csvEntry[i];
      }
      csvEntries.add(map);
    }
    return csvEntries;
  }
}
