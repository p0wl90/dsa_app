/**
 * Beschreibt einen Kulturschaffenden
 */
class Kulturschaffender {
  late int id;
  late String name;
  late String verbreitung;
  late String groesse;
  late String gewicht;
  late String eigenschaften;
  late String prosCons;
  late String typischeWaffe;
  late String typischeRuestung;
  late String magie;
  late String besonderheiten;
  late String zusatzinfos;
  late String veraenderungNachHerkunft;
  late String quelle;

  Kulturschaffender.fromCsvMap(Map<String, dynamic> csvMap) {
    this.id = int.parse(csvMap['Id']);
    this.name = csvMap['Name'];
    this.verbreitung = csvMap['Verbreitung'];
    this.groesse = csvMap['Größe'];
    this.gewicht = csvMap['Gewicht'];
    this.eigenschaften = csvMap['Eigenschaften'];
    this.prosCons = csvMap['Vor- und Nachteile'];
    this.typischeWaffe = csvMap['Typische Waffe'];
    this.typischeRuestung = csvMap['Typische Rüstung'];
    this.magie = csvMap['Magie'];
    this.besonderheiten = csvMap['Besonderheiten'];
    this.zusatzinfos = csvMap['Zusatzinfos'];
    this.veraenderungNachHerkunft = csvMap['Veränderung nach Herkunft'];
    this.quelle = csvMap['Quelle'];
  }
}

/**
 * Beschreibt die Kampfwerte eines Kulturschaffenden
 */
class KulturschaffenderKampfwert {
  late int id;
  late int kulturschaffenderId;
  late String name;
  late String erfahrung;
  late String ini;
  late String lep;
  late String rs;
  late String at;
  late String tp;
  late String pa;
  late String dk;
  late String? fkTp;
  late String mr;
  late String gs;
  late String aup;
  late String asp;
  late String sonderfertigkeiten;

  KulturschaffenderKampfwert.fromCsvMap(Map<String, dynamic> csvMap) {
    this.id = int.parse(csvMap['ID']);
    this.kulturschaffenderId = int.parse(csvMap['ID_f']);
    this.name = csvMap['Name'];
    this.erfahrung = csvMap['Erf.'];
    this.ini = csvMap['INI'];
    this.lep = csvMap['LeP'];
    this.rs = csvMap['RS'];
    this.at = csvMap['AT'];
    this.tp = csvMap['TP'];
    this.pa = csvMap['PA'];
    this.dk = csvMap['DK'];
    this.fkTp = csvMap['FK // TP'];
    this.mr = csvMap['MR'];
    this.gs = csvMap['GS'];
    this.aup = csvMap['AuP'];
    this.asp = csvMap['AsP'];
    this.sonderfertigkeiten = csvMap['Sonderfertigkeiten'];
  }
}
