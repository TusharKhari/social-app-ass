import 'package:flutter/material.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';

class EventsAndAcademyCard extends StatelessWidget {
  final String name;
  final String coverPhoto;
  final String date;
  final String type;
  final String location;

  const EventsAndAcademyCard(
      {Key? key,
      required this.name,
      required this.coverPhoto,
      required this.date,
      required this.type,
      required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.all(5),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5)
                    .copyWith(left: 10, right: 70),
                padding: const EdgeInsets.symmetric(vertical: 1),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(child: Text(type)),
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
                    Text(date),
                    Text(location.split(",")[0]),
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
            ],
          ),
        ],
      ),
    );
  }
}
