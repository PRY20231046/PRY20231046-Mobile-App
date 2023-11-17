import 'package:flutter/material.dart';
import 'dart:io';
import 'report_form_view.dart';

class DetailPlateView extends StatelessWidget {
  final File image;

  DetailPlateView({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la Placa'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.file(image, width: 200, height: 200),
            ),
            SizedBox(height: 16.0),
            Text(
              'Detalles de la placa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(), // Separador
            ListTile(
              title: Text(
                'Nº de Placa: AAB646',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Nº de Serie: KMHD251BBEU230285',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Nº de VIN: KMHD251BBEU230285',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Nº de Motor: G4FGEU105724',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Color: BLANCO',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Marca: HYUNDAI',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Modelo: I30',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Placa Vigente: AAB646',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Placa Anterior: NINGUNA',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text(
                    'Estado: EN CIRCULACION',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.check, color: Colors.green),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Anotaciones: NINGUNA',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Sede: LIMA',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'Propietario: CAMARGO RICAPA, GLENDA JANET',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportFormView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text('Reportar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
