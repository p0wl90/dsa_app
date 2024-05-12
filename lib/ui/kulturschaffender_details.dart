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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Name: ${kulturschaffender!.name}'),
        Text('Verbreitung: ${kulturschaffender!.verbreitung}'),
        Text('Größe: ${kulturschaffender!.groesse}'),
        Text('Eigenschaften: ${kulturschaffender!.eigenschaften}'),
        Text('Vor- und Nachteile: ${kulturschaffender!.prosCons}'),
        Text('Typische Waffe: ${kulturschaffender!.typischeWaffe}'),
        Text('Typische Rüstung: ${kulturschaffender!.typischeRuestung}'),
        Text('Magie: ${kulturschaffender!.magie}'),
        Text('Besonderheiten: ${kulturschaffender!.besonderheiten}'),
        Text('Zusätzliche Informationen: ${kulturschaffender!.zusatzinfos}'),
        Text(
            'Veränderung nach Herkunft: ${kulturschaffender!.veraenderungNachHerkunft}'),
        Text('Quelle: ${kulturschaffender!.quelle}'),
      ],
    );
  }
}
