// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  const AppCachedNetworkImage({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: boxFit,
      errorWidget: (context, url, error) => const Icon(
        Icons.warning,
        color: Colors.red,
      ),
    );
  }
}
