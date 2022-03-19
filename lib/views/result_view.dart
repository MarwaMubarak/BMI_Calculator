import 'package:flutter/material.dart';
import 'package:task_5/models/result_status.dart';
import 'package:task_5/views/home_view.dart';

class ResultView extends StatelessWidget {
  final double result;
  final int age;
  final bool isMale;
  final int weight;
  final int height;

  const ResultView({Key? key, required this.result, required this.age, required this.isMale,required this.weight,required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: const Text('BMI Calculator',style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Result',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 30),),
                const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 90,
                    backgroundImage: AssetImage('C:/Users/Legion 5/StudioProjects/task_5/lib/assets/images/BMI2.jpg')
                  ,
                ),
                Column(
                  children: [
                    Text('Gender: ${isMale ?'Male':'Female'} ',style: const TextStyle(color: Colors.grey,fontSize: 20),),
                    Text('Age: $age',style: const TextStyle(color: Colors.grey,fontSize: 20),),
                    Text('Weight: $weight',style: const TextStyle(color: Colors.grey,fontSize: 20),),
                    Text('Height: $height',style: const TextStyle(color: Colors.grey,fontSize: 20),),
                  ],
                ),
                Column(
                  children: [
                    Text('Your Current BMI ',style: TextStyle(color: Colors.grey.shade300,fontSize: 30,fontWeight: FontWeight.bold),),
                    Text(result.toStringAsFixed(3),style: TextStyle(color: Colors.teal.shade600,fontSize: 30,fontWeight: FontWeight.bold),),
                    const Text('Weight Status',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('${ResultStatus(result)}',style: const TextStyle(color: Colors.teal,fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
                  SizedBox(
                  width: 280,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.teal.shade700),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const HomeView()),
                      );
                    },
                    child: const Text('Recalculate BMI',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ),
      )
    );
  }
}

