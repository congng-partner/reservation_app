import 'package:flutter/material.dart';
import 'package:reservation_app/pages/onboarding/components/carousel_body_widget.dart';
import 'package:reservation_app/routes/route_named.dart';
import 'package:reservation_app/utils/storage_key_management.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var _curPageIndex = 0;
  final _pageViewController = PageController();

  final _carousels = <CarouselBodyWidget>[
    const CarouselBodyWidget(
      imagePath: 'assets/images/illustrations/tracking_maps.png',
      title: 'Nearby restaurants',
      description: 'Don\'t have to go far to find a good restaurant',
    ),
    const CarouselBodyWidget(
      imagePath: 'assets/images/illustrations/order_illustration.png',
      title: 'Convenient',
      description: 'Online dish reservation',
    ),
    const CarouselBodyWidget(
      imagePath: 'assets/images/illustrations/safe_food.png',
      title: 'Delicious',
      description: 'Enjoy great food with your family',
    ),
  ];

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  void _onNavigateToHome(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StorageKeyManagement.isShownOnBoarding, true);

    if (mounted) {
      Navigator.pushReplacementNamed(context, RouteNamed.homePage);
    }
  }

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
                controller: _pageViewController,
                onPageChanged: (value) {
                  setState(() {
                    _curPageIndex = value;
                  });
                },
                children: _carousels,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 26.0, right: 26.0, bottom: 24.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          _onNavigateToHome(context);
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4B5563)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_curPageIndex == _carousels.length - 1) {
                            _onNavigateToHome(context);
                          } else {
                            _pageViewController.animateToPage(_curPageIndex + 1,
                                curve: Curves.easeInOut,
                                duration: const Duration(milliseconds: 300));
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF999999),
                        ),
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
