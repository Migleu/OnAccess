import 'package:flutter/material.dart';
import 'package:onaccess/Telas/primeiraPagina.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //Variaveis dos valores corretos
  @override
  void initState() {
    emailcontroller.text = "123.456.789/12";
    passwordcontroller.text = "123";
    super.initState();
  }
  bool _showPassword = false;
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/cofre.png",
                      width: MediaQuery.of(context).size.width /3,
                    ),
                  ),
                  SizedBox(
                    height: 10 * 3,
                  ),
                   
                
                  Text("CPF", style: TextStyle(
                    fontSize: 20, 
                    color: Colors.black)),

                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Campo Obrigatório!";
                      }
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "Ex: 123.456.789/12",
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color:Color.fromRGBO(57, 49, 153, 1))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    validator: (String? cpf) {
                      if (cpf!.isEmpty) {
                        return "Campo obrigatório";
                      }},
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black,),
                    decoration: InputDecoration(
                      hintText: "Senha",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(57, 49, 153, 1))),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          _showPassword == false
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color.fromRGBO(57, 49, 153, 1),
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                    obscureText: _showPassword == false ? true : false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 56,
                    child: ElevatedButton(
                    onPressed: _open,
                    child: _title(),
                    style: _style(),
                  ),),
                  SizedBox(
                    height: 20,
                  ),

                RichText(text: TextSpan(
                  text: "Hello",
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: "sla", style:  TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),),



                  Text("Já possui inscrição?" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  InkWell(
                    onTap: (){},
                    child: Text("Clique Aqui", textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration:  TextDecoration.underline,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(57, 49, 153, 1)
                      ),),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _title() => Text(
      "Entrar",
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
    if(!_formkey.currentState!.validate()) return;

        Navigator.push(context, MaterialPageRoute(builder: (context) =>  FirstPage()));
  }


}
