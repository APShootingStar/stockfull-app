import 'package:flutter/material.dart';

class ProdutosPage extends StatelessWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.green[900],
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.widgets), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  size: 35,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_shipping), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          ]),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 19,
            children: [
              Text(
                "Produtos",
                style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 22,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Dialog(
                          child: SizedBox(
                            width: 300,
                            height: 400,
                          ),
                        );
                      });
                },
                label: Text(
                  "Categorias",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    fixedSize: Size(200, 50)),
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.inventory_2,
                  color: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Dialog(
                          child: SizedBox(
                            width: 300,
                            height: 400,
                          ),
                        );
                      });
                },
                label: Text(
                  "Produtos",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    fixedSize: Size(200, 50)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Historico de Vendas",
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 270,
                height: 150,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                  top: 16.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: Column(
                  spacing: 18,
                  children: [
                    Text("Produtos mais vendidos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                    Text(
                      "Você ainda não possui atividade",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(20)),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.add, color: Colors.white),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Dialog(
                          child: SizedBox(
                            width: 300,
                            height: 200,
                          ),
                        );
                      });
                },
                label: Text("Adicionar Categoria",
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    fixedSize: Size(200, 50)),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.add, color: Colors.white),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Dialog(
                            child: SizedBox(
                          width: 300,
                          height: 200,
                        ));
                      });
                },
                label: Text("Adicionar Produto",
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    fixedSize: Size(200, 50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
