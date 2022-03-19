import 'package:flutter/material.dart';
class Gender extends StatelessWidget {
final String imageUrl;
final String name;
final bool isMale;
  const Gender({Key? key,  required this.imageUrl,required this.name,required this.isMale}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
          onTap: ()
          {

            //cubit.genderStates('Male');
            /// isMale=(name=='Male')? true: false;
            /// gender='Male'
          },
          child: Container(

            height: 100,
            width: 80,
            decoration: BoxDecoration(
              //color:cubit.color1,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(imageUrl),
                Text(name,style: const TextStyle(color: Colors.white),),
              ],
            ),
          )
      );
  }
}
