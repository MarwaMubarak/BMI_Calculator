import 'package:flutter/material.dart';

class RowOfData extends StatelessWidget {
  final String unit;
  final int ageCounter;
  final int weightCounter;
  final int heightCounter;
  final String changed='';
 const RowOfData({Key? key, required this.unit,required  this.ageCounter, required this.weightCounter, required this.heightCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
       width: 300,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Colors.teal.withOpacity(0.2),
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 RawMaterialButton(

                   onPressed: () {
                     //cubit.increamentStates('weight');
                     /// increase

                   },
                   child: const Text('+'),
                   shape: const CircleBorder(),
                   fillColor: Colors.tealAccent.shade400,
                 ),
                 //in this text put your counter
                 const Text('',
                   style: TextStyle(color: Colors.white),),
                 RawMaterialButton(
                   onPressed: () {
                     //cubit.decrementStates('weight');
                     /// decrease
                   },
                   child: const Text('-'),
                   shape: const CircleBorder(),
                   fillColor: Colors.tealAccent.shade400,
                 ),
                 Text(unit, style: const TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white),)
               ],
             ),
           )
         ],
       ),
     ),
   );
        }

}
