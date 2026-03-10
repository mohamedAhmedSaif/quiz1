class ConstsManager{
  ConstsManager._();
  static const String title1 = "Experience smooth and completely stress-free shipping of your parcel";
  static const String title2 = "Ship your parcel internationally with our reliable shipping service";
  static const String title3 = "Stay informed about the parcel and get the real-time location";
  static const List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: AssetsValuesManager.onBoarding1,
      title: title1,
    ),
    OnBoardingModel(
      image: AssetsValuesManager.onBoarding2,
      title: title2,
    ),
    OnBoardingModel(
      image: AssetsValuesManager.onBoarding3,
      title: title3,
    ),

  ];

}

class AssetsValuesManager {
  AssetsValuesManager._();
  static const String onBoarding1= "assets/images/png/logo.png" ;
  static const String onBoarding2= "assets/images/png/logo.png" ;
  static const String onBoarding3= "assets/images/png/logo.png" ;
}

class OnBoardingModel {
  final String image;
  final String title;

  const OnBoardingModel({required this.image, required this.title});
}
