import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const String appTitle = "Flutter layout demo";
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//       body: const SingleChildScrollView(
//         child: Column(
//           children: [
//             ImageSection(
//               image: 'images/lake.jpg'
//               ),
//             TitleSection(
//               name: 'Oeschinen Lake Campground', 
//               location: 'Kandersteg, Switzerland',
//               ),
//               ButtonSection(),
//               TextSection(
//                 description: 
//                 'Lake Oeschinen lies at the foot of the Blüemlisalp in the '            
//                 'Bernese Alps. Situated 1,578 meters above sea level, it '            
//                 'is one of the larger Alpine Lakes. A gondola ride from '            
//                 'Kandersteg, followed by a half-hour walk through pastures '            
//                 'and pine forest, leads you to the lake, which warms to 20 '            
//                 'degrees Celsius in the summer. Activities enjoyed here '            
//                 'include rowing, and riding the summer toboggan run.',            
//             ),
//           ],
//         )
//       ),
//       ),
//     );
//   }
// }

// class TitleSection extends StatelessWidget {
//   const TitleSection({
//     super.key,
//     required this.name,
//     required this.location,

//     });

//     final String name;
//     final String location;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(32),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: Text(
//                     name,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold
//                     ),
//                   ), 
//                 ),
//                 Text(
//                   location,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                   ),
//                 )
//               ],
//             ),
//           ),
//          const FavoriteWidget(),
//         ],
//       ),
//     );
//   }
// }

// class ButtonSection extends StatelessWidget {
//   const ButtonSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Color color = Theme.of(context).primaryColor;
//     return SizedBox(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           ButtonWithText(
//             color: color, 
//             icon: Icons.call, 
//             label: 'CALL',
//             ),
//           ButtonWithText(
//             color: color, 
//             icon: Icons.near_me, 
//             label: 'ROUTE',
//             ),
//           ButtonWithText(
//             color: color, 
//             icon: Icons.share, 
//             label: 'SHARE',
//             )
//         ],
//       ),
//     );
//   }
// }

// class ButtonWithText extends StatelessWidget {
//   const ButtonWithText({
//     super.key,
//     required this.color,
//     required this.icon,
//     required this.label,
//     });

//     final Color color;
//     final IconData icon;
//     final String label;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color:color),
//         Padding(
//           padding: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//           )
//       ],
//     );
//   }
// }

// class TextSection extends StatelessWidget {
//   const TextSection({
//     super.key,
//     required this.description,
//     });

//     final String description;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(32),
//       child: Text(
//         description,
//         softWrap: true,
//       ),
//       );
//   }
// }

// class ImageSection extends StatelessWidget {
//   const ImageSection(
//     {
//       super.key,
//       required this.image,    
//     });

//     final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       image,
//       width: 600,
//       height: 240,
//       fit: BoxFit.cover,
//     );
//   }
// }

// class FavoriteWidget extends StatefulWidget {
//   const FavoriteWidget({super.key});

//   @override
//   State<FavoriteWidget> createState() => _FavoriteWidgetState();
// }

// class _FavoriteWidgetState extends State<FavoriteWidget> {

//   bool _isFavorited = true;
//   int _favoriteCount = 41;
  
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(0),
//           child: IconButton(
//             padding: const EdgeInsets.all(0),
//             alignment: Alignment.centerRight,
//             icon: (_isFavorited
//             ?const Icon(Icons.star)
//             : const Icon(Icons.star_border)
//             ),
//             color: Colors.red[500],
//             onPressed: _toggleFavorite,
//             ),
//         ),
//         SizedBox(
//           width: 18,
//           child: SizedBox(
//             child: Text('$_favoriteCount'),
//           ),
//         )
//       ],
//     );
//   }
//   void _toggleFavorite(){
//     setState(() {
//       if (_isFavorited){
//         _favoriteCount -= 1;
//         _isFavorited = false;
//       } else {
//         _favoriteCount += 1;
//         _isFavorited = true;
//       }
//     });
//   }
// }

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Layout Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
         child: Column(
          children: [
            ImageSection(image: 'images/lake.jpg'),
            TitleSection(
              name: "Happy Happy", 
              location: "New York, USA",
              ),
            ButtonSection(),
            TextSection(
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et egestas quis ipsum suspendisse ultrices. Interdum posuere lorem ipsum dolor sit amet consectetur. Augue neque gravida in fermentum et sollicitudin ac orci. Mi eget mauris pharetra et ultrices neque ornare aenean. Libero volutpat sed cras ornare arcu. Nulla pharetra diam sit amet. Maecenas volutpat blandit aliquam etiam erat velit. Sed blandit libero volutpat sed cras ornare arcu. Egestas diam in arcu cursus euismod. In fermentum et sollicitudin ac. Mattis nunc sed blandit libero volutpat sed cras. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin. At auctor urna nunc id cursus metus aliquam eleifend mi. Orci eu lobortis elementum nibh tellus. Lorem ipsum dolor sit amet consectetur. Lacinia at quis risus sed vulputate odio ut enim. Amet cursus sit amet dictum. Elementum tempus egestas sed sed risus."
              ),
          ],
         ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
    });

    final String name;
    final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
              ],
            ),
            ),
             const FavoriteWidget(),
        ],
      ),
      );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    });

    final Color color;
    final IconData icon;
    final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          )
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
    });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
      );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {

  bool _isFavorited = true;
  int _favoriteCount = 41;
  void _toggleFavorite(){
    setState(() {
      if( _isFavorited){
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount +=1;
        _isFavorited = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border)
            ),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount')),
        )
      ],
    );
  }
}