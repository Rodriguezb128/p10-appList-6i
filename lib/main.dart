import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Listview Rodriguez",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/avatar1.jpg",
    "assets/images/avatar2.png",
    "assets/images/avatar3.png",
    "assets/images/avatar4.jpg",
    "assets/images/avatar5.png",
    "assets/images/avatar6.jpg",
    "assets/images/avatar7.png",
    "assets/images/avatar8.jpg",
    "assets/images/avatar9.jpg",
    "assets/images/avatar10.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Valeria Rodriguez"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("This is title"),
                subtitle: Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
