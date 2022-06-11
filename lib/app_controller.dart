import 'package:flutter/cupertino.dart';

/*
posso chamar isso de regra de negocio
*/
class AppController extends ChangeNotifier {
  static AppController instace = AppController();
  //Design pattern chamado singleton que é quando cria uma classe
  //estatica dela mesma e instancia ela mesmo
  bool isDartTheme = true;
  changeTheme() {
    isDartTheme = !isDartTheme; //boolean recebe o inverso dele
    notifyListeners();
  }
}
//tenho q mandar essa função pra 2 classes (HomePage e AppWidget)
