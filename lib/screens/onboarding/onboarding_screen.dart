import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home/global/global_colors.dart';
import 'package:smart_home/screens/onboarding/welcome_page.dart';

import 'onboarding_page.dart';
import 'page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const OnboardingPage(
      title: 'Convenience',
      subtitle:
          'Control your home devices using a single app from anywhere in the world',
      backgroundImage: 'assets/images/onboarding_image_1.png',
    ),
    const OnboardingPage(
      title: 'Stay informed',
      subtitle: 'Instant notification of you about any activity or alerts.',
      backgroundImage: 'assets/images/onboarding_image_2.png',
    ),
    const OnboardingPage(
      title: 'Automate',
      subtitle:
          'Switch through different scenes and quick action for fast management of your home.',
      backgroundImage: 'assets/images/onboarding_image_3.png',
    ),
  ];

  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            // Tạo PageView để hiển thị các trang onboarding
            PageView(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 20),
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(
                      _pages.length - 1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Tạo nút next để chuyển đến trang tiếp theo
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PageIndicator(
                      count: _pages.length,
                      index: _currentPage,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_currentPage == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomeScreen()),
                          );
                        }
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: GlobalColors.bgButtonLight, // Màu nền của nút
                        ),
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget biểu diễn một trang onboarding
