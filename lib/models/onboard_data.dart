class OnBoarding {
  final String title;
  final String image;
  final String content;

  OnBoarding({required this.title, required this.image, required this.content});
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Convenience',
    image: 'assets/images/onboarding_image_1.png',
    content:
        'Control your home devices using a single app from anywhere in the world',
  ),
  OnBoarding(
    title: 'Stay informed',
    image: 'assets/images/onboarding_image_2.png',
    content: 'Instant notification of you about any activity or alerts.',
  ),
  OnBoarding(
    title: 'Automate',
    image: 'assets/images/onboarding_image_3.png',
    content:
        'Switch through different scenes and quick action for fast management of your home.',
  ),
];
