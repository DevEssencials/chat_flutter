

import 'package:barna_chat/login_cadastro/ui/custom/textfield_custom.dart';
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
            
            const Text(
              "Be gay Do crime",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20,),
            ),
            const SizedBox(height: 20,),
            //email ou vulgo
            CustomTextField(hintText: "Entrar", controller: _vulgoController),
            //senha
            TextFormField(),
            // text input(esqueceu senha)
            TextButton(onPressed: () {}, child: Text("Esqueceu senha", style: TextStyle(color: const Color.fromARGB(255, 189, 198, 214)),)),
            
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
            ElevatedButton(onPressed: () {}, child: Text("Entrar")),
            SizedBox(height: 12,),
            //button (fazer parte)
            ElevatedButton(onPressed: () {}, child: Text("Fazer parte")),
          ],
        ),
      )
    );
  }
}