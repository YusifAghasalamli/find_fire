//UI da Assets.icons.gemSvg kimi cagrilacaq

class Assets {
  Assets._();
  static String assets = 'assets/';
  static IconAssets icons = IconAssets();
  static ImageAssets images = ImageAssets();
}

class IconAssets {
  String facebook = '${Assets.assets}icons/facebook.svg';
  String google = '${Assets.assets}icons/google.svg';
  String home = '${Assets.assets}icons/home.svg';
  String category = '${Assets.assets}icons/category.svg';
  String person = '${Assets.assets}icons/person_outline.svg';
  String calendar = '${Assets.assets}icons/calendar.svg';
  String logo = '${Assets.assets}icons/logo.svg';
  String phone = '${Assets.assets}icons/phone.svg';
  String pin = '${Assets.assets}icons/pin.svg';
  String plus = '${Assets.assets}icons/plus.svg';
  String camera = '${Assets.assets}icons/camera.svg';
}

class ImageAssets {
  String introBackground = '${Assets.assets}images/intro_background.png';
  String loginBackground = '${Assets.assets}images/login_background.png';
  String profilePhoto = '${Assets.assets}images/profile_photo.png';
  String map = '${Assets.assets}images/map.png';
}
