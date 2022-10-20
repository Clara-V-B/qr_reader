import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(BuildContext context, ScanModel scan) async {
  final url = scan.valor;

  if (scan.tipo == 'http') {
    //Abrir el sitio web
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  } else {
    //print('geo!!');
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
