// ignore_for_file: avoid_print, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Form Page",
      home: Scaffold(
        appBar: AppBar(
          title:  const Text('Form Page'),
          ),
        body: const FormPage(),
        ),
      );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final idController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose(){
    nameController.dispose();
    idController.dispose();
    emailController.dispose();
    super.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please enter your name';
                    }
                    return null;
                  }
                
                ),
              ),
            ),
            
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  controller: idController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your StudentID '
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter your StudentID';
                    }
                    else{
                      final isNumber = RegExp(r"^[0-9]");
                      if(isNumber.hasMatch(value) && value.length == 11){
                        return null;
                      }
                      else
                      {
                        return 'StudentID must be 11 digits';
                      }
                    }
                  }
                ),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter you email",
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please enter your Email';
                      }
                      else {
                        final isEmail= RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if(isEmail.hasMatch(value)){
                          return null;
                        }
                        else{
                          return 'Pleast put the correct email format';
                        }
                      }
                    }
                  ),
                ),
              ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );

                   Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) =>
                      SecondPage(
                        name: nameController.text,
                        id: idController.text,
                        email: emailController.text,
                      )
                      )
                    );
                  
                  // showDialog(context: context, builder: (context){
                  //   return AlertDialog(
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Text('Name: ${nameController.text}'),
                  //       Text('Student ID: ${idController.text}'),
                  //       Text('Email: ${emailController.text}'),
              
                  //     ],
                  //   )
                  //   );
                  // },
                  // );
                  }
                 
                }, child: const Text('Submit')
                ),
            ),
              )
        ],
      ),
    );
  }
}
// sending data to new page

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.name, required this.id, required this.email});

  final String name;
  final String id;
  final String email;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: const Text ("Second Page"),
      ),
      
      body: Center(
       
        child: Column(
          children: [
            Text('${widget.name}', style: TextStyle(fontSize: 20),),
            Text('${widget.id}' ,style: TextStyle(fontSize: 20),),
            Text('${widget.email}',style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed:(){
                Navigator.pop(context);
              }, child: Text('Go Back')),
            )
        ]),
      ),
    );
  }
}