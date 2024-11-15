import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomStaggeredGrid extends StatelessWidget {
  final List<String> contents = [
    'Content 0',
    'Content 1',
    'Content 2',
    'Content 3',
    'Content 4',
    'Content 5',
    'Content 6',
    'Content 7',
    'Content 8',
    'Content 9',
    'Content 10',
    'Content 11',
    'Content 12',
    'Content 13',
    'Content 14',
    'Content 15',
    'Content 16',
    'Content 17',
    'Content 18',
    'Content 19',
    'Content 20',
  ];
  final List<String> mediaItems = [
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/london.png',
    'assets/images/new_york.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/havasu_falls.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    // 'assets/images/havasu_falls.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Staggered Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.builder(
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: mediaItems.length,
          itemBuilder: (context, index) {
            return _buildGridItem(index);
          },
        ),
      ),
    );
  }

  Widget _buildGridItem(int index) {

    final isSpanned = _isSpanned(index);

    return Container(
      margin: const EdgeInsets.all(2),
      height: isSpanned ? 205 : 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
          image: AssetImage(mediaItems[index]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  bool _isSpanned(int index) {
    return (index == 2 || index == 5 || index == 12 || index == 16);
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomStaggeredGrid(),
  ));
}

// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// class CustomStaggeredGrid extends StatelessWidget {
//   final List<String> contents = List.generate(24, (index) => 'Content ${index + 1}');
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Staggered Grid'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: MasonryGridView.builder(
//           gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//           ),
//           itemCount: contents.length,
//           itemBuilder: (context, index) {
//             return _buildGridItem(index);
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildGridItem(int index) {
//     // Determine which items should span larger.
//     final isSpanned = _isSpanned(index);
//
//     return Container(
//       margin: const EdgeInsets.all(4),
//       height: isSpanned ? 210 : 100, // Adjust heights for spanned items.
//       decoration: BoxDecoration(
//         color: Colors.blueAccent,
//         borderRadius: BorderRadius.circular(8),
//         image: DecorationImage(
//           image: AssetImage('assets/images/your_image.png'), // Update the image path as needed.
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Center(
//         child: Text(
//           contents[index],
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
//
//   // Function to determine whether an item should be larger.
//   bool _isSpanned(int index) {
//     // Calculate the current row
//     int row = index ~/ 3; // Integer division for the row number
//
//     // Logic for spanning
//     if (row == 0 || row == 1) {
//       // In the first two rows, the last item spans
//       return index % 3 == 2; // Spanning last item in even rows
//     } else if (row == 2 || row == 3) {
//       // In the last two rows, the first item spans
//       return index % 3 == 0; // Spanning first item in odd rows
//     }
//
//     return false; // No spanning for rows beyond 3
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: CustomStaggeredGrid(),
//   ));
// }
