class LoginModel {
  String? token;
  AppTheme? theme;

  LoginModel({this.token, this.theme});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    theme = json['theme'] != null ? new AppTheme.fromJson(json['theme']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.theme != null) {
      data['theme'] = this.theme!.toJson();
    }
    return data;
  }
}

class AppTheme {
  String? name;
  List<Palettes>? palettes;
  String? primaryTextColor;
  String? textColor;

  AppTheme({this.name, this.palettes, this.primaryTextColor, this.textColor});

  AppTheme.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['palettes'] != null) {
      palettes = <Palettes>[];
      json['palettes'].forEach((v) {
        palettes!.add(new Palettes.fromJson(v));
      });
    }
    primaryTextColor = json['primaryTextColor'];
    textColor = json['textColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.palettes != null) {
      data['palettes'] = this.palettes!.map((v) => v.toJson()).toList();
    }
    data['primaryTextColor'] = this.primaryTextColor;
    data['textColor'] = this.textColor;
    return data;
  }
}

class Palettes {
  String? label;
  String? value;

  Palettes({this.label, this.value});

  Palettes.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['value'] = this.value;
    return data;
  }
}