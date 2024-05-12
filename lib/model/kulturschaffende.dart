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
    this.id = csvMap['Id'];
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
