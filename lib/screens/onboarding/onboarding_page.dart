import 'package:flutter/material.dart';
import 'package:smart_home/global/global_style.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subtitle;

  final String backgroundImage;
  final bool isLastPage;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    this.isLastPage = false, // Mặc định là không phải trang cuối cùng
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Image.asset(
          backgroundImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(1, 1, 1, 0.40),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 240,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.39, 1.0],
                  colors: [
                    Color(0xFF010101),
                    Color(0x00010101),
                  ],
                ),
              ),
            )),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                title,
                style: GlobalStyles.titleBold(context),
              ),
              const SizedBox(height: 10),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 70),
              // Nếu là trang cuối cùng thì hiển thị hai nút login và register
            ],
          ),
        ),
      ],
    );
  }
}
