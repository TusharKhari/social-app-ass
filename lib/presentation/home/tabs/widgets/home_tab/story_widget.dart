import 'package:flutter/material.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';

import '../../../../../core/constants.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: 60,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 170,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
              child: index == 0
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.add_circle,
                          color: Colors.blue,
                        ),
                        Text("Create story")
                      ],
                    )
                  : const Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        AppCachedNetworkImage(
                          imageUrl: storiesImageUrl,
                          boxFit: BoxFit.cover,
                          width: 120,
                        ),
                        Column(
                          children: [
                            Spacer(),
                            CircleAvatar(child: Icon(Icons.person)),
                            Text(
                              "Person X\n",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ));
        },
      ),
    );
  }
}
