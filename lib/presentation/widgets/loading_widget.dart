import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildShimmerEffect(context);
  }

Widget _buildShimmerEffect(BuildContext context) {
  final height = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: width / 2,
            height: height / 3.5,
            margin: EdgeInsets.only(right: width / 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 30),
              color: Colors.white,
            ),
          ),
          Container(
            width: width / 2,
            height: height / 3.5,
            margin: EdgeInsets.only(right: width / 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 30),
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

}
