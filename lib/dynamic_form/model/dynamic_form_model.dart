import 'package:flutter/cupertino.dart';

class DynamicFormModel {
  String? title;
  List<Fields>? fields;
  bool? canDelete;

  DynamicFormModel({this.title, this.fields, this.canDelete});

  DynamicFormModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['fields'] != null) {
      fields = <Fields>[];
      json['fields'].forEach((v) {
        fields!.add(new Fields.fromJson(v));
      });
    }
    canDelete = json['canDelete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.fields != null) {
      data['fields'] = this.fields!.map((v) => v.toJson()).toList();
    }
    data['canDelete'] = this.canDelete;
    return data;
  }
}

class Fields {
  String? name;
  int? span;
  String? text;
  String? group;
  String? label;
  dynamic value;
  String? append;
  Events? events;
  List<ListOptions> ? options;
  String? prepend;
  bool? disabled;
  bool? isUnique;
  bool? clearable;
  String? fieldType;
  int? maxlength;
  bool? isRequired;
  int? labelWidth;
  dynamic defaultValue;
  bool? showPassword;
  bool? showWordLimit;
  bool? addMoreFeature;
  bool? advancedOptions;
  bool? isHelpBlockVisible;
  bool? isPlaceholderVisible;
  bool? isSignature;


  Fields(
      {this.name,
        this.span,
        this.text,
        this.group,
        this.label,
        this.value,
        this.options,
        this.append,
        this.events,
        this.prepend,
        this.disabled,
        this.isUnique,
        this.clearable,
        this.fieldType,
        this.maxlength,
        this.isRequired,
        this.labelWidth,
        this.defaultValue,
        this.showPassword,
        this.showWordLimit,
        this.addMoreFeature,
        this.advancedOptions,
        this.isHelpBlockVisible,
        this.isPlaceholderVisible,
        this.isSignature});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    span = json['span'];
    text = json['text'];
    group = json['group'];
    label = json['label'];
    value = json['value'];
    append = json['append'];
    if (json['options'] != null) {
      options = <ListOptions>[];
      json['options'].forEach((v) {
        options!.add( ListOptions.fromJson(v));
      });
    }

    events =
    json['events'] != null ? new Events.fromJson(json['events']) : null;
    prepend = json['prepend'];
    disabled = json['disabled'];
    isUnique = json['isUnique'];
    clearable = json['clearable'];
    fieldType = json['fieldType'];
    maxlength = json['maxlength'];
    isRequired = json['isRequired'];
    labelWidth = json['labelWidth'];
    defaultValue = json['defaultValue'];
    showPassword = json['showPassword'];
    showWordLimit = json['showWordLimit'];
    addMoreFeature = json['addMoreFeature'];
    advancedOptions = json['advancedOptions'];
    isHelpBlockVisible = json['isHelpBlockVisible'];
    isPlaceholderVisible = json['isPlaceholderVisible'];
    isSignature = json['isSignature'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['span'] = this.span;
    data['text'] = this.text;
    data['group'] = this.group;
    data['label'] = this.label;
    data['value'] = this.value;
    data['append'] = this.append;
    // if (this.events != null) {
    //   data['events'] = this.events!.toJson();
    // }
    data['prepend'] = this.prepend;
    data['disabled'] = this.disabled;
    data['isUnique'] = this.isUnique;
    data['clearable'] = this.clearable;
    data['fieldType'] = this.fieldType;
    data['maxlength'] = this.maxlength;
    data['isRequired'] = this.isRequired;
    data['labelWidth'] = this.labelWidth;
    data['defaultValue'] = this.defaultValue;
    data['showPassword'] = this.showPassword;
    data['showWordLimit'] = this.showWordLimit;
    data['addMoreFeature'] = this.addMoreFeature;
    data['advancedOptions'] = this.advancedOptions;
    data['isHelpBlockVisible'] = this.isHelpBlockVisible;
    data['isPlaceholderVisible'] = this.isPlaceholderVisible;
    data['isSignature'] = this.isSignature;
    return data;
  }
}

class Events {
  List<Null>? values;
  String? listens;
  String? triggers;

  Events({this.values, this.listens, this.triggers});

  Events.fromJson(Map<String, dynamic> json) {
    if (json['values'] != null) {
      values = <Null>[];
      // json['values'].forEach((v) {
      //   values!.add(new Null.fromJson(v));
      // });
    }
    listens = json['listens'];
    triggers = json['triggers'];
  }


}

class ListOptions{
  String? color;
  bool? is_faulty;
  String? optionLabel;
  String? optionValue;

  ListOptions({this.color,this.is_faulty,this.optionLabel,this.optionValue});

  ListOptions.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    is_faulty = json['is_faulty'];
    optionLabel = json['optionLabel'];
    optionValue = json['optionValue'];
  }

}

