import 'package:flutter/material.dart';

class Colaboradores extends StatefulWidget {
  @override
  _ColaboradoresState createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  final listaInfoColab = [
    {"nome": "Juliana Albuquerque", "funcao":"Coordenadora de apoio", "telefone": "(81) 99731-8333", "email":"julianaalbuquerque@email.com", "imagem": "219969.png"},
    {"nome": "Angela Taís", "funcao":"Chefe de obras", "telefone": "(81) 99762-9832", "email":"angelatais@email.com", "imagem": "219969.png"},
    {"nome": "Carlos Alexandre", "funcao":"Suporte", "telefone": "(81) 9931-2343", "email":"carlosalexandre@email.com", "imagem": "4128176.png"},
    {"nome": "Ana Beatriz", "funcao":"Atendente", "telefone": "(81) 99746-2398", "email":"anabeatriz@email.com", "imagem": "219969.png"}
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(        
        itemCount: listaInfoColab.length,
        itemBuilder: (context, i) {
          var info = listaInfoColab[i];
          return Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/"+info["imagem"].toString(), width: 80),
                  const SizedBox(width: 10,),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(info["nome"].toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text(info["funcao"].toString(), style: const TextStyle(fontSize: 15),),
                        Text(info["telefone"].toString(), style: const TextStyle(fontSize: 15)),
                        Text(info["email"].toString(), style: const TextStyle(fontSize: 15)),
                      ],
                    ),
                  )
                ],
              ),
              const Divider(color: Colors.black)
            ],
          );
        }
      );

  }
}