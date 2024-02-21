import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Retrieve Text Input',
//       home: MyCustomForm(),
//     );
//   }
// }


// // class MyCustomForm extends StatelessWidget {
// //   const MyCustomForm({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: <Widget>[
// //         const Padding(
// //           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
// //           child: TextField(
// //             decoration: InputDecoration(
// //               border: OutlineInputBorder(),
// //               hintText: 'Enter a search term',
// //             ),
// //           ),
// //         ),
// //         Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
// //           child: TextFormField(
// //             decoration: const InputDecoration(
// //               border: UnderlineInputBorder(),
// //               labelText: 'Enter your username',
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});

//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }

// class _MyCustomFormState extends State<MyCustomForm> {

//   final myController = TextEditingController();
//   late FocusNode myFocusNode;
//   @override
//   void initState(){
//     super.initState();
//     myFocusNode = FocusNode();
//     myController.addListener(_printLatestValue);
//   }

//   @override
//   void dispose(){
//     myFocusNode.dispose();
//     myController.dispose();
//     super.dispose();
//   }

//   void _printLatestValue(){
//     final text = myController.text;
//     print('Second Text Field: $text (${text.characters.length})');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reterive Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
             
//               onChanged: (text){
//                 print('First text field: $text(${text.characters.length})');
//               },
//             ),
//             TextField(
//                autofocus: true,
//               controller: myController,
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           showDialog(context: context, builder: (context){ return AlertDialog(content: Text(myController.text),
//           );},
//         );
//   },
//   tooltip: 'Show me the value!',
//   child: const Icon(Icons.text_fields),
//       ),
//     );
// }
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
      home: Scaffold(
        appBar: AppBar( 
          title: const Text('Form Validation Demo')
        ),
         body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                else {
                  // final isNumber = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  final isNumber = RegExp(r"^[0-9]");
                  if(isNumber.hasMatch(value)&& value.length==11) {
                    //if(isNumber.hasMatch(value)){
                    return null;
                  } else {
                    return "Must be 11 digits";
                  }
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data'))
                  );
                }
              }, 
              child: const Text('Submit')
              ),
          )
        ],
      )
      );
  }
}