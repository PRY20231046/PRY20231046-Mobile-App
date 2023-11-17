import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'detail_plate.dart';

class GalleryImagePicker extends StatefulWidget {
  @override
  _GalleryImagePickerState createState() => _GalleryImagePickerState();
}

class _GalleryImagePickerState extends State<GalleryImagePicker> {
  File? _image;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('Ninguna imagen seleccionada');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecciona una imagen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_image != null)
              Image.file(_image!),
            if (_image == null)
              Text('No has seleccionado una imagen'),
            if (_image != null)
              ElevatedButton(
                onPressed: () async{
                  await Future.delayed(Duration(seconds: 3));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>DetailPlateView(image: _image!),
                      ),);
                },
                child: Text('Analyze'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
