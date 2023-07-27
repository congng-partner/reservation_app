import 'package:flutter/material.dart';
import 'package:reservation_app/utils/app_color.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best seller',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.brow_1),
            ),
            Text(
              'See All',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColor.grey_99),
            )
          ],
        )
      ],
    );
  }
}
