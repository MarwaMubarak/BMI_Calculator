import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'states_state.dart';

class StatesCubit extends Cubit <StatesState>
{
  StatesCubit() : super(StatesInitial());
  static StatesCubit  get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int ageCounter=20;
   int weightCounter=40;
   int heightCounter=150;
   bool isMale=true;
  Color color1 = Colors.teal.withOpacity(0.5);
  Color color2 = Colors.grey.withOpacity(0.5);

  void increamentStates(String data)
  {
    if(data=='weight') {
      weightCounter++;
    } else if(data=='height') {
      heightCounter++;
    } else {
      ageCounter++;
    }
    emit(StatesIncreamentState());
  }
  void decrementStates(String data)
  {
    if(data=='weight') {
      weightCounter--;
    } else if(data=='height') {
      heightCounter--;
    } else {
      ageCounter--;
    }
    emit(StatesDecrementState());
  }
  void genderStates(String gender)
  {
    if(gender=='Male')
      {
        color1 = Colors.teal.withOpacity(0.5);
        color2 = Colors.grey.withOpacity(0.5);
        isMale=true;
      }
    else
      {
        color2 = Colors.teal.withOpacity(0.5);
        color1 = Colors.grey.withOpacity(0.5);
        isMale=false;
      }
     emit(StatesGenderState());
  }

}