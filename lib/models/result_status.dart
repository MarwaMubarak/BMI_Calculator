String? ResultStatus(double result)
{

  if(result<18.5) {
    return 'Thin';
  } else if(result>=18.5&&result<=24.9) {
    return 'Normal';
  } else if(result>=25&&result<=29.9) {
    return 'OverWeight';
  } else if(result>=30.0) {
    return 'Obese';
  }
  return null;
}