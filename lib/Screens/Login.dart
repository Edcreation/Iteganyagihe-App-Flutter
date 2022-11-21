import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
          child: Container(
        height: 350,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text('Login',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
              const SizedBox(
                height: 20,
              ),
              const Text('Enter UserName',style: TextStyle(fontSize: 22),),
              TextFormField(
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Valid UserName 😒';
                  }
                }),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Colors.black),
                  

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Enter Pin',style: TextStyle(fontSize: 22),),
              TextFormField(
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Valid Pin😒';
                  }
                }),
                decoration: const InputDecoration(prefixIcon: Icon(Icons.key,color: Colors.black,)),
                keyboardType: TextInputType.number,
                obscureText: true,
                obscuringCharacter: '*',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      
                    ),
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    ));
  }
}
