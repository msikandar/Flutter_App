// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:open_file/open_file.dart';

// class BuildCardNotice extends StatelessWidget {
//   String heading = 'Heading...';
//   String link = 'link';

//   BuildCardNotice(String heading, String link){
//     heading = heading;
//     link = link;
//   }


//   Future<void> openFile() async {
//     final result = await OpenFile.open(link);
//     print(result);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape:RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       elevation: 7.0,
//       child: GestureDetector(
//         onTap: openFile,
//         child:Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: Colors.white,
//         ),
//             height: 100.0,
//              width: 400.0,
            
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:<Widget>[
//                  Text(link),
                 
//               ],
//             ),
            
//           ),
//       ),
//       margin: EdgeInsets.symmetric( vertical: 5.0, horizontal: 10.0),
    
//     );
//   }
// }