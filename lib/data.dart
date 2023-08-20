// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

var pageList = [
  PageModel(
      imageUrl: "assets/images/onboarding_image_1.png",
      title: "MUSIC",
      body: "EXPERIENCE WICKED PLAYLISTS",
      titleGradient: [Color(0xFF9708CC), Color(0xFF43CBFF)]),
  PageModel(
      imageUrl: "assets/images/onboarding_image_2.png",
      title: "SPA",
      body: "FEEL THE MAGIC OF WELLNESS",
      titleGradient: [Color(0xFFE2859F), Color(0xFFFCCF31)]),
  PageModel(
      imageUrl: "assets/images/onboarding_image_3.png",
      title: "TRAVEL",
      body: "LET'S HIKE UP",
      titleGradient: [Color(0xFF5EFCE8), Color(0xFF736EFE)]),
];

class PageModel {
  String imageUrl;
  String title;
  String body;
  List<Color> titleGradient = [];
  PageModel({
    required this.imageUrl,
    required this.title,
    required this.body,
    required this.titleGradient,
  });
 
}
