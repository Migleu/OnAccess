import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){},
          icon: Icon(Icons.delete_outlined),
          color: Colors.white,
          iconSize: 25,)],
        title: Text("Segunda tela",style:TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white
        )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(57, 49, 153, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(57, 49, 153, 1),
        onPressed: () {},
        child: Icon(
          Icons.edit,color: Colors.white,
          size: 25,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
