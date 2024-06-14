
import 'package:company_list/core/common/page_holder.dart';
import 'package:company_list/dynamic_form/model/dynamic_form_model.dart';
import 'package:company_list/dynamic_form/screen/dynamic_form.dart';
import 'package:company_list/map/google_map_screen.dart';
import 'package:flutter/material.dart';

import '../../core/const/app_color.dart';
import '../../core/util/use_json.dart';
import '../../login/model/login_model.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key ,this.them});
  final AppTheme? them;

  @override
  Widget build(BuildContext context) {
    return PageHolder(
      appBarColor: hexToColor(them!.palettes![0].value!),
        // textColor: Colors.white,
        appTitle: "Dashbard",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
         ElevatedButton(onPressed: () async {
           List<Fields> fields= await loadJson();
           Navigator.push(context, MaterialPageRoute(builder: (context)=>DynamicForm(fields: fields,)));

         }, child: const Text("Dynamic Form")),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMapScreen()));

        }, child: const Text("Google Map"))
      ],
    ));
  }
}
