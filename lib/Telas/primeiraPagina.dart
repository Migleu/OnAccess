import 'package:flutter/material.dart';
import 'package:onaccess/Telas/segundaPagina.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Primeira tela",style:TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white
        )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(57, 49, 153, 1),
      ),
      bottomNavigationBar: _button(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Padding(padding: EdgeInsets.all(20),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/mensagem.png",
                    height: 75,
                    alignment: Alignment.center,
                  ),
                  Image.asset(
                    "assets/images/cofre.png",
                    height: 100,
                    alignment: Alignment.center,
                  ),

                ],
              ),),
              SizedBox(height: 25,),
              Padding(padding: EdgeInsets.all(20),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                  color: Color.fromRGBO(57, 49, 153, 1),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                  bottomLeft: const Radius.circular(10.0),
                  bottomRight: const Radius.circular(10.0),
                ),


                  )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),


                      )),


                ],
              ),),
              SizedBox(height: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/etec.png",
                    height: 250,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  _button(){
    return  Padding(padding: EdgeInsets.all(15),child: SizedBox(height: 56,child: ElevatedButton(
      onPressed: _open,
      child: _title(),
      style: _style(),
    ),),);
  }
  _title() => Text(
      "Continuar",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.white
      )
  );

  _style() => ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2 , color: Colors.transparent)
          )
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey;
        }

        return Color.fromRGBO(57, 49, 153, 1); // Defer to the widget's default.
      }),
      elevation: MaterialStateProperty.all<double>(0)
  );



  _open() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  SecondPage()));
  }
}
