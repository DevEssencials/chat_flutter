

import 'package:barna_chat/feature_auth/presenter/pages/register_page.dart';
import 'package:barna_chat/feature_auth/ui/componentes/button_custom.dart';
import 'package:barna_chat/feature_auth/ui/componentes/textfield_custom.dart';
import 'package:flutter/material.dart';


class LoginForm extends StatefulWidget {
  
  const LoginForm({ super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _vulgoController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  
  
  

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 250, 
                child: Image(
                  image: AssetImage('assets/logo_skatepico2.png'),
                )
              ),
              const SizedBox(height: 30,),
              
              const Text(
                "Bem vindo de volta",
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 30,),
              ),
              const SizedBox(height: 30,),
              //email ou vulgo
              TextFormField( 
                decoration: customTextField("E-mail ou vulgo"),
                cursorColor: Colors.white, 
                style: const TextStyle(
                  color: Colors.white
                ),
                controller: _vulgoController,
                validator: (value){},
              ),

              const SizedBox(height: 30,),
              //senha
              TextFormField(
                decoration: customTextField("Senha"),
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white
                ),
                obscureText: true,
                controller: _senhaController,
                validator: (value){},
              ),
              // text input(esqueceu senha)
              TextButton(onPressed: () {}, child: const Text("Esqueceu senha", style: TextStyle(color: const Color.fromARGB(255, 189, 198, 214)),)),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  IconButton(onPressed: () {}, icon: Icon(Icons.adb), color: Colors.white,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.account_circle),  color: Colors.white,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.email_rounded), color: Colors.white,),
                ],
              ),
              SizedBox(height: 12,),
          
              // button (entrar)
              ElevatedButton(onPressed: () {},style: buttonStyle(), child: Text("Entrar", style: TextStyle(color: Colors.white),), ),
              SizedBox(height: 12,),
              //button (fazer parte)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                }, 
                style: buttonStyle(), 
                child: const Text(
                  "FAZER PARTE", 
                  style: TextStyle(
                    color: Colors.white
                  )
                ),),
            ],
          ),
        ),
      )
    );
  }
}