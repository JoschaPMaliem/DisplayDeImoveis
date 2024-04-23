import 'package:flutter/material.dart';
import 'package:teste_extended/model/imovel.dart';

class ImovelView extends StatelessWidget {
  final Imovel imovel;

  ImovelView({required this.imovel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imovel.nome),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Navigate to the form screen to register a new imovel
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImovelFormScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              imovel.imagem,
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                imovel.localizacao.toLowerCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImovelFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registar Imovel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add form fields here to register a new imovel
            ElevatedButton(
              onPressed: () {
                // Implement logic to save the new imovel
                // For example, you can use a database or API
                // After saving, navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Text('Registar Imovel'),
            ),
          ],
        ),
      ),
    );
  }
}
