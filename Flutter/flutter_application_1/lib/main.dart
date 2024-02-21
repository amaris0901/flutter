import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: Center(child: _buildGrid())
        // body: Center(child: _buildImageColumn())
          // rating star example
          // padding: const EdgeInsets.all(20),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     stars(),ratings(),
          //   ],
          // )
      )
    );
  }

Widget _buildGrid() => GridView.extent(
  maxCrossAxisExtent: 150,
  padding: const EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children: _buildGridTileList(30),
);

List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('images/pic$i.jpg')));
// 4 pics grid
//   Widget _buildImageColumn(){
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.black26,
//       ),
//       child: Column(
//         children: [
//           _buildImageRow(1),
//           _buildImageRow(3),
//         ],
//       ),
//     );
//   }

//   Widget _buildDecoratedImage(int imageIndex) =>
//     Expanded(
//       child:Container(
//         decoration: BoxDecoration(
//           border: Border.all(width: 10, color: Colors.black45,),
//           borderRadius: const BorderRadius.all(Radius.circular(8),),
//         ),
//         margin: const EdgeInsets.all(4),
//         child: Image.asset('images/pic$imageIndex.jpg'),
//       ),);

// Widget _buildImageRow(int imageIndex) => Row(
//   children: [
//     _buildDecoratedImage(imageIndex),
//     _buildDecoratedImage(imageIndex+1),
//   ],
// );
  // Rating
  // Widget stars() =>
  // Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     Icon(Icons.star,color: Colors.green[500],),
  //     Icon(Icons.star,color: Colors.green[400],),
  //     Icon(Icons.star,color: Colors.green[300],),
  //     const Icon(Icons.star, color: Colors.black38,),
  //     const Icon(Icons.star, color: Colors.black12,),
  //   // Expanded(child: Image.asset('images/pic1.jpg')),
  //   // Expanded(
  //   //   flex: 5, //has more space
  //   //   child: Image.asset('images/pic2.jpg')),
  //   // Expanded(child: Image.asset('images/pic3.jpg')),
  //   ],

  // );

  // Widget ratings() =>
  // const Text('170 Reviews',
  // style: TextStyle(
  //   color: Colors.black,
  //   fontWeight: FontWeight.w800,
  //   letterSpacing: 0.5,
  //   fontFamily: 'Roboto',
  //   fontSize: 20,
  // )); 
}

