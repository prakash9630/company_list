
import 'package:company_list/core/common/page_holder.dart';
import 'package:company_list/dynamic_form/model/dynamic_form_model.dart';
import 'package:flutter/cupertino.dart';

import '../widget/dynamicform.dart';

class DynamicForm extends StatefulWidget {
  const DynamicForm({super.key,required this.fields});
  final List<Fields> fields ;

  @override
  State<DynamicForm> createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {
  @override
  Widget build(BuildContext context) {
    return PageHolder(
      appTitle: 'Dynamic form',
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: List.generate(widget.fields.length, (index){
              return DynamicFormElement(field: widget.fields[index],);
            }),
          ),
        ),
      ),
    );
  }
}
