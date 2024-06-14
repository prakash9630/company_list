
import 'dart:ui';

Color hexToColor(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
class AppColors {
  // static const Color homeBackgroundColor = Color(0xFFF5F5F5);
  static const Color homeBackgroundColor = Color(0xffffffff);
  static const Color primaryColor = Color(0xFF3366DD);
  static const Color extraLightBlue = Color(0xFFE7F6FF);
  static const Color greenColor = Color(0xFF28A745);
  static const Color red = Color(0xffff0000);
  static const Color lightRed = Color(0xffFF4237);
  static const Color borderColor = Color(0xffE4E4E4);
  static const Color lightBlue = Color(0xff5298FB);
  static const Color deemBlue = Color(0xffCAD7F5);
  static const Color messageBoxText = Color(0xfff6f6f6);
  static const Color selectedBorderColor = Color(0xff3366DD);
  static const Color orangeColor = Color(0xFFFCB040);
  static const Color lightGrey = Color(0xFFB1AEB3);
  static const Color fontGrey = Color(0xff808080);
  static const Color secondaryColor = Color(0xffF5A303);
  static const Color lightFontGrey = Color(0xffB1AEB3);
  static const Color hintTextColor = Color(0xFFC4C4C4);
  static const Color searchHintTextColor = Color(0xFF9f9f9f);
  static const Color greyColor = Color(0xFF808080);
  static const Color buttonGreyColor = Color(0xFFc4c4c4);
  static const Color lightGreyColor = Color(0xFFB1AEB3);
  static const Color grey999Color = Color(0xff999999);
  static const Color grey777Color = Color(0xff777575);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color black2CColor = Color(0xff434343);
  static const Color headerBlack = Color(0xff252B36);
  static const Color lightRedColor = Color(0xffFFF8F8);
  static const Color containerBorder = Color(0xffECECEC);
  static const Color lightContainer = Color(0xfff2f2f2);


}
