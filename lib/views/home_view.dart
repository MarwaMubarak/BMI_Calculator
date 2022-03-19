import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_5/blocs/states/states_cubit.dart';
import 'package:task_5/views/result_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StatesCubit(),
      child: BlocConsumer<StatesCubit, StatesState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit=StatesCubit.get(context);
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: const Text('BMI Calculator',style: TextStyle(color: Colors.white),),
        ),
        body:SafeArea(
          child: Container(
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.menu, color: Colors.grey,),
                      Icon(Icons.add_alert_rounded, color: Colors.grey,),
                    ],
                  ),
                  const Text('BMI Calculator', style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                  const Text('Gender', style: TextStyle(color: Colors.grey),),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: ()
                            {

                              cubit.genderStates('Male');
                              /// isMale=(name=='Male')? true: false;
                              /// gender='Male'
                            },
                            child: Container(

                              height: 100,
                              width: 80,
                              decoration: BoxDecoration(
                                color:cubit.color1,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('packages/gender_picker/assets/images/male.png'),
                                  const Text('Male',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            )
                        ),
                        //Gender(imageUrl: 'packages/gender_picker/assets/images/male.png', name: 'Male'),
                        GestureDetector(
                            onTap: ()
                            {
                              cubit.genderStates('Female');
                              /// isMale=(name=='Male')? true: false;
                              /// gender='Female'
                            },
                            child: Container(

                              height: 100,
                              width: 80,
                              decoration: BoxDecoration(
                                color: cubit.color2,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('packages/gender_picker/assets/images/female.png'),
                                  const Text('Female',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            )
                        ),
                        //Gender(imageUrl: 'packages/gender_picker/assets/images/female.png', name: 'Female'),
                      ],
                 ),
                  const Text('Weight',style: TextStyle(color: Colors.grey),),
                 // RowOfData( unit: 'Kg',ageCounter: ageCounter,heightCounter: heightCounter,weightCounter: weightCounter,cubit: cubit),
                 Center(
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
                                cubit.increamentStates('weight');
                                /// increase

                              },
                              child: const Text('+',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              shape: const CircleBorder(),
                              fillColor: Colors.tealAccent.shade400,
                            ),
                            Text('${cubit.weightCounter}',
                              style: const TextStyle(color: Colors.white),),
                            RawMaterialButton(
                              onPressed: () {
                                cubit.decrementStates('weight');
                                /// decrease
                              },
                              child: const Text('-',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              shape: const CircleBorder(),
                              fillColor: Colors.tealAccent.shade400,
                            ),
                            const Text('Kg', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
                  const Text('Height',style: TextStyle(color: Colors.grey),),
                  Center(
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
                                cubit.increamentStates('height');
                                /// increase

                              },
                              child: const Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              shape: const CircleBorder(),
                              fillColor: Colors.tealAccent.shade400,
                            ),
                            Text('${cubit.heightCounter}',
                              style: const TextStyle(color: Colors.white),),
                            RawMaterialButton(
                              onPressed: () {
                                cubit.decrementStates('height');
                                /// decrease
                              },
                              child: const Text('-',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              shape: const CircleBorder(),
                              fillColor: Colors.tealAccent.shade400,
                            ),
                            const Text('Cm', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
                  //RowOfData(unit: 'm',ageCounter: ageCounter,heightCounter: heightCounter,weightCounter: weightCounter,cubit: cubit),
                  const Text('Age',style: TextStyle(color: Colors.grey),),
                  Center(
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
                              cubit.increamentStates('age');
                              /// increase

                            },
                            child: const Text('+',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            shape: const CircleBorder(),
                            fillColor: Colors.tealAccent.shade400,
                          ),
                          Text('${cubit.ageCounter}',
                            style: const TextStyle(color: Colors.white),),
                          RawMaterialButton(
                            onPressed: () {
                              cubit.decrementStates('age');
                              /// decrease
                            },
                            child: const Text('-',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            shape: const CircleBorder(),
                            fillColor: Colors.tealAccent.shade400,
                          ),
                          const Text('Year', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
                  //RowOfData( unit: 'y',ageCounter: ageCounter,heightCounter: heightCounter,weightCounter: weightCounter,cubit: cubit),

                  SizedBox(
                    width: 280,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.teal.shade900),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ResultView(result: (cubit.weightCounter/((cubit.heightCounter/100.0)*(cubit.heightCounter/100.0))), age: cubit.ageCounter, isMale: cubit.isMale, weight: cubit.weightCounter, height: cubit.heightCounter)),
                        );
                      },
                      child: const Text('Calculate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
    )
  );
        },
),
);
  }
}//floatingActionButton