 import 'package:flutter/material.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';

class CastingAndAuditionsCard extends StatelessWidget {
  final String name;
  final String coverPhoto;
  final String postedOn;
  final String roles;

  const CastingAndAuditionsCard(
      {Key? key,
      required this.name,
      required this.coverPhoto,
      required this.postedOn,
      required this.roles})
      : super(key: key);

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
                child:
                AppCachedNetworkImage(imageUrl: coverPhoto, height: double.maxFinite,
                    boxFit: BoxFit.fitHeight,), 
                  
              )),
              Flexible(
                  child: Container(
                color: Colors.white,
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(postedOn),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Roles:",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      roles,
                      style: const TextStyle(color: Colors.blue),
                    )
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
                  "View Details",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              // view profile
            ],
          ),
        ],
      ),
    );
  }
}
