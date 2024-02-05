import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_reel/application/feed/feed_bloc.dart';
import 'package:no_reel/core/constants.dart';
import 'package:no_reel/core/extensions.dart';
import 'package:no_reel/presentation/widgets/loading_widget.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';

class PostAndFeedTab extends StatefulWidget {
  const PostAndFeedTab({super.key});

  @override
  State<PostAndFeedTab> createState() => _PostAndFeedTabState();
}

class _PostAndFeedTabState extends State<PostAndFeedTab> {
  FeedBloc feedBloc = FeedBloc();
  int pageIdx = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    feedBloc.add(FeedInitialEvent(pageNo: pageIdx));
    scrollController.addListener(() {
      // scrollController.
      if (scrollController.offset + 30 >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        feedBloc.add(FeedInitialEvent(pageNo: ++pageIdx));
        pageIdx.toString().log("idx");
      }
    });
  }

  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<FeedBloc, FeedState>(
      bloc: feedBloc,
      listener: (context, state) {},
      builder: (context, state) {
         if (state is FeedErrorState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(state.error),
              IconButton(
                  onPressed: () {
                    feedBloc.add(FeedInitialEvent(pageNo: ++pageIdx));
                  },
                  icon: Icon(Icons.refresh))
            ],
          );
        }
        return SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                // controller: ,
                itemCount: state.feedsList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var data = state.feedsList[index];
                  List<String> nameL = data.userName?.split(" ") ?? [];
                  int count = 2;
                  if (nameL.length < 3) {
                    count = nameL.length;
                  }
                  String name = "";
                  for (var i = 0; i < count; i++) {
                    name = "$name ${nameL[i]}";
                  }
                  // if(index == state.feedsList.length-1){
                  //   return
                  //   state is  FeedLoadingState ?
                  //   const AppLoadingWidget()
                  //     : const SizedBox.shrink();
                  // }
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey[350]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                  data.userPhoto ?? storiesImageUrl),
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
                                    SizedBox(
                                      width: size.width * 0.4,
                                      child: Text(
                                        "$name  ",
                                        softWrap: false,
                                        style: const TextStyle(
                                          // fontSize: 12,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        maxLines: 2,
                                      ),
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
                                    )
                                  ],
                                ),
                                Text(data.postdate ?? "N/A")
                              ],
                            ),
                            const Spacer(),
                            const PostMenuButton(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: size.width * 0.8,
                                  child: Text(
                                    data.postcontent ?? "N/A",
                                    maxLines: 90,
                                  )),
                              // Text(data.),
                              SizedBox(
                                height: 90,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data.photos?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    var photo = data.photos?[index];
                                    return
                                        //
                                        AppCachedNetworkImage(imageUrl: photo);
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  CircleAvatar(
                                      // radius: 10,
                                      backgroundColor: Colors.grey[100],
                                      child: const Icon(
                                        Icons.comment,
                                        size: 15,
                                      )),
                                  Text("   ${data.commentsCount ?? 0}   "),
                                  CircleAvatar(
                                      backgroundColor: Colors.orange[50],
                                      child: const Icon(
                                        Icons.thumb_up_alt,
                                        color: Colors.orange,
                                      )),
                                  Text("   ${data.likesCount ?? 0}   "),
                                  CircleAvatar(
                                      backgroundColor: Colors.grey[100],
                                      child: const Icon(Icons.bookmark)),
                                  Text("   ${data.likesCount ?? 0}   "),
                                  // Text(data)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "View all (${data.commentsCount ?? 0}) comments -->",
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              state is FeedInitialState || state is FeedLoadingState
                  ? const AppLoadingWidget()
                  : const SizedBox.shrink()
            ],
          ),
        );
      },
    );
  }
}

class PostMenuButton extends StatelessWidget {
  const PostMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      itemBuilder: (context) => [
        const PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.telegram),
              Text("Share Via"),
            ],
          ),
        ),
        const PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.bookmark),
              Text("Save post"),
            ],
          ),
        ),
        PopupMenuItem(
            child: Container(
          width: 200,
          height: 5,
          color: Colors.grey[300],
        )),
        const PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.repeat),
              Text("Repost this"),
            ],
          ),
        ),
        const PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.warning),
              Text("Report User"),
            ],
          ),
        ),
      ],
    );
  }
}
