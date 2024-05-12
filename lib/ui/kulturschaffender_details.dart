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
        Text('Name: ${kulturschaffender!.name}'),
        Text('Name: ${kulturschaffender!.name}'),
      ],
    );
  }
}
