import 'package:flutter/foundation.dart';
import 'package:flutter_application_o2/models/Information.dart';

class InformationProvider with ChangeNotifier{
    
      List<Information> informations = [
        Information(title: "ดินสอ",product: 100,price: 60),
        Information(title: "สมุด",product: 50,price: 10),
        Information(title: "หนังสือ",product: 60,price: 45)
      ];
      
      List<Information> getInformation(){
        return informations;
      }

      void addInformation(Information statement){
          informations.add(statement);
      }
}