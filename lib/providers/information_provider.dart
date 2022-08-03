import 'package:flutter/foundation.dart';
import 'package:flutter_application_o2/models/Information.dart';

class InformationProvider with ChangeNotifier{
    
      List<Information> informations = [];
      
      List<Information> getInformation(){
        return informations;
      }

      void addInformation(Information statement){
          informations.insert(0,statement);

          notifyListeners();
      }
}