import 'package:flutter/foundation.dart';
import 'package:flutter_application_o2/database/information_db.dart';
import 'package:flutter_application_o2/models/Informations.dart';

class InformationProvider with ChangeNotifier{
    
      List<Informations> informations = [];
      
      List<Informations> getInformation(){
        return informations;
      }

      void addInformation(Informations statement){
          var db = InformationDB(dbName: "information.db").openDatabase();
          print(db);
          informations.insert(0,statement);

          notifyListeners();
      }
}