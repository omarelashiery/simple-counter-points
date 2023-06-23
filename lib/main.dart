import 'package:flutter/material.dart';

void main() {
  runApp( Points());
}
 class Points extends StatefulWidget {
  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
   int teamA=0;

   int teamB=0;

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
          centerTitle: true,
           backgroundColor:   Colors.deepPurple,
           title: Text(
             'Points counter'
           ),
         ),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height:400,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('Team A',style:TextStyle(fontSize: 32,),)
                     ,Text('$teamA',style:TextStyle(fontSize: 150,),)
                      ,
                       ElevatedButton( style: ElevatedButton.styleFrom(
                         primary: Colors.orange,
                         minimumSize: Size(150, 50)
                       ),
                           onPressed: () {
                         setState(() {
                           teamA++;
                         });

                           print(teamA);
                           }, child:Text('Add 1 point ',style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,
                           ),)

                       )
                        ,
                       ElevatedButton( style: ElevatedButton.styleFrom(
                           primary: Colors.orange,
                           minimumSize: Size(150, 50)
                       ),
                           onPressed: () {
                         setState(() {
                           teamA+=2;
                         });

                           print(teamA);}, child:Text('Add 2 point ',style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,
                           ),)

                       )

                       ,  ElevatedButton( style: ElevatedButton.styleFrom(
                           primary: Colors.orange,
                           minimumSize: Size(150, 50)
                       ),
                           onPressed: () {
                         setState(() {
                           teamA+=3;
                         });

                             print(teamA);
                           }, child:Text('Add 3 point ',style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,
                           ),)

                       )

                     ],
                   ),
                 ),
                 Container(
                   height: 400,
                   child: VerticalDivider(

                     color: Colors.grey,
                     thickness: 1,
                     indent: 50,
                     endIndent: 50,
                   ),
                 ),
                 Container(
                 height: 400,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('Team B',style:TextStyle(fontSize: 32,),)
                       ,Text('$teamB',style:TextStyle(fontSize: 150,),)
                       ,
                       ElevatedButton( style: ElevatedButton.styleFrom(
                           primary: Colors.orange,
                           minimumSize: Size(150, 50)
                       ),
                           onPressed: () {
                         setState(() {
                           teamB++;
                         });

                           print(teamB);},
                           child:Text('Add 1 point ',style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,
                           ),)

                       )
                         ,
                       ElevatedButton( style: ElevatedButton.styleFrom(
                           primary: Colors.orange,
                           minimumSize: Size(150, 50)
                       ),
                           onPressed: () {

                         setState(() {
                           teamB+=2;
                         });
                         print(teamB);
                           }, child:Text('Add 2 point ',style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,
                           ),)

                       )

                       ,  ElevatedButton( style: ElevatedButton.styleFrom(
                           primary: Colors.orange,
                           minimumSize: Size(150, 50)
                       ),
                           onPressed: () {

                         setState(() {
                           teamB+=3;
                         });
                         print(teamB);
                           }, child:Text('Add 3 point ',style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,
                           ),)

                       )

                     ],
                   ),
                 )
               ],
             ),
             ElevatedButton( style: ElevatedButton.styleFrom(
                 primary: Colors.orange,
                 minimumSize: Size(150, 50)
             ),
                 onPressed: () {
               setState(() {
                 teamA=0;
                 teamB=0;
               });
                 }, child:Text(' Reset ',style: TextStyle(
                   fontSize: 18,
                   color: Colors.black,
                 ),)

             )
           ],
         ),
       ),
     );
   }
}
 