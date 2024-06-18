import 'package:flutter/foundation.dart' show kIsWeb;

const ICON_PNG_PATH_WEB = "image/png/";
const ICON_PNG_PATH_MOBILE = "assets/image/png/";
const ICON_SVG_PATH_WEB = "image/image/svg/";
const ICON_SVG_PATH_MOBILE = "assets/image/svg/";

const String EXTENSION_PNG = ".png";
const String EXTENSION_SVG = ".svg";

class ImageResource {

  /// SVG File Path
  static String knife = getSvgSourcePath("knife");
  static String timer = getSvgSourcePath("timer");
  static String playCircle = getSvgSourcePath("play_circle");
  static String unlike = getSvgSourcePath("ic_unlike");

  /// PNG File Path
  static String banner = getPngSourcePath('banner');
  static String breakFast = getPngSourcePath('break_fast');
  static String cake = getPngSourcePath('cake');
  static String chocolate = getPngSourcePath('chocolate');
  static String meat = getPngSourcePath('meat');
  static String recipe = getPngSourcePath('recipe');
  static String sandwich = getPngSourcePath('sandwich');
  static String vegan = getPngSourcePath('vegan');

  static String adsFood = getPngSourcePath('ads_food');
  static String chef = getPngSourcePath('chef');
  static String chickenRice = getPngSourcePath('chicken_rice');
  static String salmon = getPngSourcePath('salmon');
  static String salad = getPngSourcePath('salad');
  static String meatBall = getPngSourcePath('meat_ball');
  static String pancake = getPngSourcePath('pancake');
  static String orangePancake = getPngSourcePath('orange_pancake');
  static String pasta = getPngSourcePath('pasta');
  static String burger = getPngSourcePath('burger');
  static String bgInbox = getPngSourcePath('bg_inbox');

}

String getPngSourcePath(String name) {
  if (kIsWeb) {
    // running on the web!
    return ICON_PNG_PATH_WEB + name + EXTENSION_PNG;
  } else {
    // NOT running on the web! You can check for additional platforms here.
    return ICON_PNG_PATH_MOBILE + name + EXTENSION_PNG;
  }
}

String getSvgSourcePath(String name) {
  if (kIsWeb) {
    // running on the web!
    return ICON_SVG_PATH_MOBILE + name + EXTENSION_SVG;
  } else {
    // NOT running on the web! You can check for additional platforms here.
    return ICON_SVG_PATH_WEB + name + EXTENSION_SVG;
  }
}