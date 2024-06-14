import 'package:company_list/core/common/custom_dropdown_search.dart';
import 'package:company_list/core/common/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../../core/common/custom_date_picker.dart';
import '../model/dynamic_form_model.dart';


class DynamicFormElement extends StatefulWidget {
  final Fields field;

  const DynamicFormElement({Key? key, required this.field}) : super(key: key);

  @override
  _DynamicFormElementState createState() => _DynamicFormElementState();
}

class _DynamicFormElementState extends State<DynamicFormElement> {
  final multiSelectController = TextEditingController();
  final dateCon= TextEditingController();


  @override
  Widget build(BuildContext context) {
    final formInputType = widget.field.text;
    switch (formInputType) {
      case "Text":
        return CustomTextField(labelText: widget.field.label??"",
          showRequired: widget.field.isRequired!,
          readOnly: widget.field.disabled!,
          isPassword: widget.field.showPassword!,
          length: widget.field.maxlength,
            );

      case "Date-Time":
        return CustomDatePicker(labelText: widget.field.label??"",
          dateCon: dateCon,
        );
      case "Switch":
        return Switch(value: widget.field.value, onChanged: (v){
          setState(() {
            widget.field.value=v;
          });

        });
      case "Select":
        return CustomDropDownSearch<ListOptions>(items: widget.field.options,
            labelText: widget.field.label!,
          itemAsString: (item)=>item.optionLabel??"",
          );

      default:
        return Container(
          padding:EdgeInsets.symmetric(vertical: 1),child: Text("This is ${widget.field.label}",),
        );
    }
  }
}
