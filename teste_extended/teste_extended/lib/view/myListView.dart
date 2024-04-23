import 'package:flutter/material.dart';
import 'package:teste_extended/model/imovel.dart';
import 'package:teste_extended/model/list_imovel.dart';
import 'package:teste_extended/view/imovel_view.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final Lista_imovel imoveis = Lista_imovel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imoveis.imoveis.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              
              SizedBox(
                width: 120,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   
                    children: [
                      Image.network(
                        imoveis.imoveis[index].imagem,
                        width: 250, 
                        height: 170, 
                      ),
                      SizedBox(
                          height:
                              4),
                      Text(
                        imoveis.imoveis[index].nome,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImovelView(
                            imovel: imoveis.imoveis[index],
                          ),
                        ));
                  },
                ),
              )
            ],
          );
        });
  }
}
