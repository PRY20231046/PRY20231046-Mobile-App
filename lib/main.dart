import 'package:flutter/material.dart';
import 'imagepicker.dart';
import 'camera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 1;

  List<Widget> _paginas = [
    MainScreen(),
    PaginaHome(),
    GalleryImagePicker(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('CLP Safe'),
          centerTitle: true,
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Take Photo"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Upload Photo")
          ],
        ),
      ),
    );
  }
}

class PaginaHome extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
  ];

  final List<String> Names = [
    'BJU-576',
    'AJE-899',
    'ANU-266',
    'AAB-646',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¡Bienvenid@!'),
        backgroundColor: Colors.blue, // Cambia el color de fondo del AppBar
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tus búsquedas recientes',
              style: TextStyle(
                fontSize: 24, // Tamaño de fuente más grande
                fontWeight: FontWeight.bold,
                color: Colors.black, // Color de texto
              ),
            ),
          ),
          // Cuadrícula de cards
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Número de columnas en la cuadrícula
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4, // Agrega sombra a los cards
                  margin: EdgeInsets.all(8), // Márgenes alrededor de los cards
                  child: Column(
                    children: [
                      // Imagen con tamaño fijo
                      Center( // Centra la imagen
                        child: Image.asset(
                          imagePaths[index],
                          width: 160,
                          height: 120,
                        ),
                      ),
                      // Nombre debajo de la imagen
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Names [index],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PaginaUsers extends StatelessWidget {
  const PaginaUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Users", style: TextStyle(fontSize: 30),),
    );
  }
}