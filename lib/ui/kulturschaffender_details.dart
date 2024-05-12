import 'package:dsa_app/model/kulturschaffende.dart';
import 'package:flutter/material.dart';

/**
 * Zeigt Beschreibung eines Kulturschaffenden als Text an. Zeigt nichts an, wenn der Kulturschaffende null ist
 */
class KulturschaffenderDetails extends StatelessWidget {
  final Kulturschaffender? kulturschaffender;

  const KulturschaffenderDetails(this.kulturschaffender, {super.key});

  @override
  Widget build(BuildContext context) {
    if (kulturschaffender == null) {
      return SizedBox();
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          'Name: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.name),
        SizedBox(height: 10),
        Text(
          'Verbreitung: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.verbreitung),
        SizedBox(height: 10),
        Text(
          'Größe: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.groesse),
        SizedBox(height: 10),
        Text(
          'Eigenschaften: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.eigenschaften),
        SizedBox(height: 10),
        Text(
          'Vor- und Nachteile: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.prosCons),
        SizedBox(height: 10),
        Text(
          'Typische Waffe: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.typischeWaffe),
        SizedBox(height: 10),
        Text(
          'Typische Rüstung: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.typischeRuestung),
        SizedBox(height: 10),
        Text(
          'Magie: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.magie),
        SizedBox(height: 10),
        Text(
          'Besonderheiten: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.besonderheiten),
        SizedBox(height: 10),
        Text(
          'Veränderung nach Herkunft: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.veraenderungNachHerkunft),
        SizedBox(height: 10),
        Text(
          'Quelle: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.quelle),
        SizedBox(height: 10),
        Text(
          'Zusatzinformationen: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(kulturschaffender!.zusatzinfos),
      ],
    );
  }
}
