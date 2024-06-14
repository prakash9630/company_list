import 'dart:convert';

import 'package:flutter/services.dart';

import '../../dynamic_form/model/dynamic_form_model.dart';

Future<List<Fields>> loadJson() async {
  String jsonString = await rootBundle.loadString('assets/form.json');
  print(jsonString);
 List<Map<String,dynamic>> listMap=[];
  for(var i in jsonDecode(jsonString)){
    listMap.add(i);
  }
  List<Fields> listFields=[];
   for(var i in listMap){
     for(var j in i['fields']){
       listFields.add(Fields.fromJson(j));
     }
   }

  return listFields;
}