import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  bool changeContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer:  Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQI8N95py5kFMmfrarBjoNlP0J7dllqTdwEA&s"
                ),

              ),
              accountName: Text("preguiça"),
              accountEmail: Text("mafioso01@gmail.com"),
            ),
            ListTile(
              title: const Text("Home"),
              subtitle: const Text("pagina inicial"),
              leading: const Icon(Icons.home),
              onTap: () => debugPrint("oi"),

            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Mude a cor do quadrado",
            ),
            Container(
              width: 200,
              height: 200,
              color: changeContainer ? Colors.blue : Colors.red,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => {
                setState(() {
                  changeContainer = !changeContainer;
                }),
              },
              child: const Text("change"),
            )
          ],
        ),
      ),
    );
  }
}
