
import 'package:flutter/material.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';

class ArtztsStoreCard extends StatelessWidget {
  final String name;
  final String profilePhoto;
  final String coverPhoto;
  final String industry;

  const ArtztsStoreCard({
    Key? key,
    required this.name,
    required this.profilePhoto,
    required this.coverPhoto,
    required this.industry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(5),
      // height: 230,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Flexible(
                  child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: SizedBox(
                  child:
                  AppCachedNetworkImage(imageUrl: coverPhoto,  height: double.maxFinite,
                    boxFit: BoxFit.fitHeight,), 
                   
                ),
              )),
              Flexible(
                  child: Container(
                color: Colors.white,
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage(profilePhoto),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(industry),
                  ],
                ),
              ),
              // follow
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: const EdgeInsets.symmetric(vertical: 3),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "View Store",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              // view profile
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                    .copyWith(bottom: 15),
                padding: const EdgeInsets.symmetric(vertical: 3),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.blue),
                ),
                child: const Center(
                    child: Text(
                  "Add Favorite",
                  style: TextStyle(color: Colors.blue),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}