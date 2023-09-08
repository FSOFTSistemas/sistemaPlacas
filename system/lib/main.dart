// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system/acompanhamentos.dart';

void main() {
  runApp(const MinhaApp());
}

class MinhaApp extends StatelessWidget {
  const MinhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff670A7E),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Olá, Alberico!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              //inicio das caixinhas de acompanhamentos
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Acompanhamentos(),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Placas Checadas',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Acompanhamentos(),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Placas repetidas',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Acompanhamentos(),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Novas placas',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                  child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  child:  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DIGITE A PLACA',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffEC6111),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: 150),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Digite a placa...',
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 20),
                        ElevatedButton(onPressed: (){}, child: null,) // Espaço entre o TextField e o botão
                       
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
