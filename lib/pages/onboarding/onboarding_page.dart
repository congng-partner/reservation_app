import 'package:flutter/material.dart';
import 'package:reservation_app/pages/onboarding/components/carousel_body_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var _curPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Image.asset('assets/images/logos/logo_with_text.png'),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _curPageIndex = value;
                  });
                },
                children: const [
                  CarouselBodyWidget(
                    imagePath: 'assets/images/illustrations/tracking_maps.png',
                    title: 'Nearby restaurants',
                    description:
                        'Don\'t have to go far to find a good restaurant',
                  ),
                  CarouselBodyWidget(
                    imagePath:
                        'assets/images/illustrations/order_illustration.png',
                    title: 'Convenient',
                    description: 'Online dish reservation',
                  ),
                  CarouselBodyWidget(
                    imagePath: 'assets/images/illustrations/safe_food.png',
                    title: 'Delicious',
                    description: 'Enjoy great food with your family',
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 26.0, right: 26.0, bottom: 24.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4B5563)),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF999999),
                      )
                    ],
                  ),
                  buildThreeDot(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildThreeDot(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildDot(context, _curPageIndex == 0),
        const SizedBox(
          width: 8,
        ),
        buildDot(context, _curPageIndex == 1),
        const SizedBox(
          width: 8,
        ),
        buildDot(context, _curPageIndex == 2),
      ],
    );
  }

  Widget buildDot(BuildContext context, bool isSelected) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFAD3F32) : Colors.grey,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
