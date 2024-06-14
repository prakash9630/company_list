
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../common/custom_textfield.dart';


class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key, this.dateCon,required this.labelText,this.showRequired=false});
 final TextEditingController? dateCon;
  final String labelText;
  final bool? showRequired;


  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  dynamic selectedDOB;
  String? currentDate;


  @override
  void initState() {
    super.initState();
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    currentDate=dateFormat.format(DateTime.now());
    widget.dateCon?.text=currentDate!;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText.isNotEmpty) ...[
          Text(widget.labelText,),
          const SizedBox(
            height: 10,
          ),
        ],
        CustomTextField(
          readOnly: true,
          labelText: "",
          showRequired: widget.showRequired!,
          hintText: "Select Date",
          hintStyle: const TextStyle(fontSize: 16),
          onTap: () {
            datePicker();
          },
          validator: (date){
            if(date==null || date.isEmpty ){
              return "Please provide date";
            }return null;
          },
          controller: widget.dateCon,
          borderRadius: 6,
          contentPadding: EdgeInsets.all(10.0),
          suffixIcon: const InkWell(
              child: Icon(Icons.arrow_drop_down_rounded)),
        ),
      ],
    );
  }
  datePicker() {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            height: 340.0,
            child: Column(
              children: [
                Expanded(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    maximumYear: DateTime.now().year,
                    minimumYear: 1999,
                    initialDateTime: selectedDOB != "" && selectedDOB != null
                        ? DateTime(
                        int.parse(selectedDOB.split("-")[0]),
                        int.parse(selectedDOB.split("-")[1]),
                        int.parse(selectedDOB.split("-")[2]),
                        0,
                        0,
                        0)
                        : DateTime.now(),
                    onDateTimeChanged: (DateTime newDateTime) {
                      setState(() {
                        var date = DateFormat('yyyy-MM-dd').format(newDateTime);
                        selectedDOB= date;
                      });
                    },
                    backgroundColor: Colors.white,
                    use24hFormat: true,
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          widget.dateCon?.text = selectedDOB == null
                              ? DateFormat('yyyy-MM-dd').format(DateTime.now())
                              : selectedDOB.toString();
                        });
                        Navigator.pop(context);
                      }, child: Text("Select"),),
                ),
                SizedBox(
                  height: 30.0,
                )
              ],
            ),
          );
        });
  }

}

