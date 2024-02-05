import 'package:flutter/material.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';

class ArtztsProjectCard extends StatelessWidget {
  final String name;
  final String coverPhoto;
  final String postedOn;

  const ArtztsProjectCard(
      {Key? key,
      required this.name,
      required this.coverPhoto,
      required this.postedOn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
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
                  AppCachedNetworkImage(imageUrl: coverPhoto,    height: double.maxFinite,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      child: Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(postedOn),
                    const Text(
                      "View more",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
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
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: FittedBox(
                  child: Text(
                    "Coasting & Audition",
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
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
