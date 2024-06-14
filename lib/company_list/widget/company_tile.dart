
import 'package:company_list/company_list/model/company_list_model.dart';
import 'package:company_list/login/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyTile extends StatelessWidget {
  const CompanyTile({super.key,required this.index,required this.data});
  final int index;
  final Data data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),

        child: Row(children: [
           Text("${(index+1).toString()}. ",style: TextStyle(fontSize: 20),),
           Expanded(child: Text(data.name??"",style: TextStyle(fontSize: 20),))
        ],),
      ),
    );
  }
}
