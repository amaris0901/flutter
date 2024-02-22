// import 'package:flutter/material.dart';

// void main() {
//   runApp(const HeroApp());
// }

// class HeroApp extends StatelessWidget {
//   const HeroApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Transistion Demo',
//       home: MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Main Screen'),),
//       body: GestureDetector(
//         onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context){
//             return const DetailScreen();
//           }));
//         },
//         child: Hero(
//           tag: 'imageHero',
//           child: Image.network('http://picsum.photos/250?image=9'),),
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar (title: const Text('Second Screen')),
//       body: GestureDetector(
//         onTap: (){
//           // Navigator.pop(context);
//         },
//         child: Center(
//           child: Hero(
//             tag: 'imageHero',
//             child: Image.network('http://picsum.photos/250?image=6'),
//         )),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }

// class FirstRoute extends StatelessWidget {
//   const FirstRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

// class Todo{
//   final String title;
//   final String description;

//   const Todo(this.title, this.description);
// }

// void main(){
//   runApp(
//     MaterialApp(
//       title: 'Passing Data',
//       home: TodoScreen(
//         todos: List.generate(20, (i) => Todo('Todo $i','A descriprtion of what needs to be done for Todo $i',)),
//       ),
//     ),
//   );
// }

// class TodoScreen extends StatelessWidget {
//   const TodoScreen({super.key, required this.todos});

//   final List<Todo> todos;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Todos'),),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (context, index){
//           return ListTile(
//             title: Text(todos[index].title),
//             onTap: (){
//               Navigator.push(context,
//                MaterialPageRoute(builder: (context)=> DetailScreen(todo: todos[index])));
//             },
//           );
//         }
//         ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key, required this.todo});
//   final Todo todo;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//           child:Text(todo.description),
//       ),
//     );
//   }
// }

// void main(){
//   runApp(
//     const MaterialApp(
//       title: 'Returning Data',
//       home: HomeScreen(),
//       )
//     );
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Returning Data Demo'),
//       ),
//       body: const Center(
//         child: SelectionButton(),
//       ),
//     );
//   }
// }

// class SelectionButton extends StatefulWidget {
//   const SelectionButton({super.key});

//   @override
//   State<SelectionButton> createState() => _SelectionButtonState();
// }

// class _SelectionButtonState extends State<SelectionButton> {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: (){
//       _navigateAndDisplaySelection(context);
//     }, child: const Text('Pick an option, any option'),);
//   }
//   Future<void> _navigateAndDisplaySelection(BuildContext context) async{
//     final result = await Navigator.push(context, 
//     MaterialPageRoute(builder: (context)=>const SelectionScreen()),);
//     if (!mounted) return;
//     ScaffoldMessenger.of(context)
//     ..removeCurrentSnackBar()
//     ..showSnackBar(SnackBar(content: Text('$result')));
//   }
// }

// class SelectionScreen extends StatelessWidget {
//   const SelectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Pick an option'),
//       ),
//       body: Center(child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ElevatedButton(onPressed: (){
//             Navigator.pop(context, 'Yep!');
//           }, child: const Text ('Yes')),
//         ),
//         ElevatedButton(onPressed: (){
//             Navigator.pop(context, 'Nope!');
//           }, child: const Text ('No')),
//        ],
//       )),
//     );
//   }
// }



void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
         '/third': (context) => const ThirdScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context,'/third');
          },
          child: const Text('Go to third screen'),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context,'/');
          },
          child: const Text('Go back to first!'),
        ),
      ),
    );
  }
}