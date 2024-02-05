import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_reel/application/reel/reel_bloc.dart';
import 'package:no_reel/presentation/widgets/loading_widget.dart';

import '../../../core/constants.dart';
import 'widgets/reels_tab/video_with_thumb.dart';

class ReelsTab extends StatefulWidget {
  const ReelsTab({super.key});

  @override
  State<ReelsTab> createState() => _ReelsState();
}

class _ReelsState extends State<ReelsTab> {
  ReelBloc reelBloc = ReelBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reelBloc.add(ReelInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: reelBloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ReelErrorState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(state.error),
              IconButton(
                  onPressed: () {
                    reelBloc.add(ReelInitialEvent());
                  },
                  icon: Icon(Icons.refresh))
            ],
          );
        }
        if (state is ReelLoadingState) {
          return const AppLoadingWidget();
        }
        if (state is ReelSuccessState) {
          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: state.reelModel.reels?.length,
            itemBuilder: (context, index) {
              var data = state.reelModel.reels?[index];
              // data?.toJson().toString().log("reel");
              List<String> nameL = data?.userDetails?.name?.split(" ") ?? [];
              int count = 2;
              if (nameL.length < 3) {
                count = nameL.length;
              }
              String name = "";
              for (var i = 0; i < count; i++) {
                name = "$name ${nameL[i]}";
              }
              return Stack(
                children: [
                  VideoWithThumb(
                      tUrl: data?.thumbnail ?? "", vUrl: data?.mediaFile ?? ""),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Row(
                          children: [
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                  data?.thumbnail ?? storiesImageUrl),
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  children: [
                                    FittedBox(
                                      child: Text("  $name  ",
                                          softWrap: false,
                                          style: const TextStyle(
                                              color: Colors.white)),
                                    ),
                                    const Icon(
                                      Icons.verified,
                                      size: 15,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Row(
                                        children: [
                                          Icon(Icons.add_circle,
                                              size: 10, color: Colors.blue),
                                          Text(
                                            " Follow",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "             s${data?.caption ?? "N/A"}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        }
        return const Scaffold();
      },
    );
  }
}
