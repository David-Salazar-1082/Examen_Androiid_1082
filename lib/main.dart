import 'package:flutter/material.dart';
import 'PantallaMenu.dart'; // Importa la pantalla del menú

void main() {
  runApp(MenElectronicosApp());
}

class MenElectronicosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue[100],
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/David-Salazar-1082/Imagenes_Menlectronicos/refs/heads/main/Imagenes_Negocio/MENLECTRONICOS1-removebg-preview.png',
                  height: 60,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MENLECTRONICOS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan[700],
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '¡POTENCIA Y RENDIMIENTO EN CADA CLIC!',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Image.network(
            'https://raw.githubusercontent.com/David-Salazar-1082/Imagenes_Menlectronicos/refs/heads/main/Imagenes_Negocio/MENLECTRONICOS1.JPG',
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            'MENLECTRONICOS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.cyan[700],
              fontSize: 22,
              letterSpacing: 2,
            ),
          ),
          Text(
            '¡POTENCIA Y RENDIMIENTO EN CADA CLIC!',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaMenu()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue[100],
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'INGRESAR',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
