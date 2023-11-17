import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ReportFormView extends StatefulWidget {
  @override
  _ReportFormViewState createState() => _ReportFormViewState();
}

class _ReportFormViewState extends State<ReportFormView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Reporte'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ingresa tu nombre',
                ),
                validator: (value) {
                  if (value != null && value.isEmpty)  {
                    return 'Por favor ingresa tu nombre';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ingresa el número de placa',
                ),
                validator: (value) {
                  if (value != null && value.isEmpty)  {
                    return 'Por favor ingresa la placa';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ingresa el DNI del conductor',
                ),
                validator: (value) {
                  if (value != null && value.isEmpty)  {
                    return 'Por favor ingresa el DNI';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ingresa un breve reporte',
                ),
                validator: (value) {
                  if (value != null && value.isEmpty)  {
                    return 'Por favor ingresa tu reporte';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                      // Process data.
                      Fluttertoast.showToast(
                          msg: "El reporte ha sido enviado",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
