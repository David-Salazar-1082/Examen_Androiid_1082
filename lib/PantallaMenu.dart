import 'package:flutter/material.dart';
import 'main.dart'; // Importamos la pantalla de inicio

class PantallaMenu extends StatelessWidget {
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
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: Opacity(
                    opacity: 0.15,
                    child: Image.network(
                      'https://raw.githubusercontent.com/David-Salazar-1082/Imagenes_Menlectronicos/refs/heads/main/Imagenes_Negocio/MENLECTRONICOS1.JPG',
                      height: 250,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        menuButton('PRODUCTOS', () {}),
                        menuButton('SUCURSALES', () {}),
                        menuButton('INFORMACION', () {}),
                        menuButton(
                          'INICIAR SESION',
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PantallaInicio()),
                            );
                          },
                        ),
                        menuButton(
                          'REGISTRARSE',
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PantallaInicio()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menuButton(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue[100],
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
