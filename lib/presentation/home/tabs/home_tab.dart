// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:no_reel/application/home/home_bloc.dart';
import 'package:no_reel/presentation/widgets/loading_widget.dart';

import '../../../core/constants.dart';
import 'widgets/home_tab/artizts_and_creator_card.dart';
import 'widgets/home_tab/artizts_project_card.dart';
import 'widgets/home_tab/artizts_store_card.dart';
import 'widgets/home_tab/casting_and_auditions.dart';
import 'widgets/home_tab/events_and_academy_card.dart';
import 'widgets/home_tab/story_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  HomeBloc homeBloc = HomeBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeBloc.add(HomeInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is HomeErrorState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(state.error),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeInitialEvent());
                  },
                  icon: Icon(Icons.refresh))
            ],
          );
        }
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("whats your mind"),
              const StoryWidget(),
              TitlesContainer(
                title: "Artizts/Creators",
                color: Colors.blue[50]!,
              ),
              // atizts/creator
              SizedBox(
                  height: 300,
                  child: state is HomeSuccessState
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.homeModel.artizts?.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            var data = state.homeModel.artizts?.data?[index];
                            return ArtztsAndCreatorsCard(
                              name: data?.name ?? "N/A",
                              coverPhoto: data?.coverPhoto ?? storiesImageUrl,
                              industry: data?.industry ?? "N/A",
                              profilePhoto:
                                  data?.profilePhoto ?? storiesImageUrl,
                            );
                          },
                        )
                      : const AppLoadingWidget()),

// projects
              TitlesContainer(
                  color: Colors.orange[50]!, title: "Artizts Projects"),
              SizedBox(
                  height: 250,
                  child: state is HomeSuccessState
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              state.homeModel.projects?.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            var data = state.homeModel.projects?.data?[index];
                            return ArtztsProjectCard(
                              name: data?.projectName ?? "N/A",
                              coverPhoto:
                                  data?.auditionBannerUrl ?? storiesImageUrl,
                              postedOn: data?.createdOn ?? "N/A",
                            );
                          })
                      : const AppLoadingWidget())

              //Events&Academy
              ,
              const TitlesContainer(
                  color: Colors.white, title: "Events&Academy"),
              SizedBox(
                  height: 220,
                  child: state is HomeSuccessState
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.homeModel.events?.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            var data =
                                state.homeModel.events?.data?[index].event;
                            return EventsAndAcademyCard(
                              name: data?.title ?? "N/A",
                              coverPhoto: data?.poster ?? storiesImageUrl,
                              date: data?.startDate ?? "N/A",
                              location: data?.location ?? "N/A",
                              type: "type",
                            );
                          })
                      : const AppLoadingWidget())
              // atrizts store
              ,
              TitlesContainer(
                  color: Colors.orange[50]!, title: "Artizts Stores"),
              SizedBox(
                  height: 250,
                  child: state is HomeSuccessState
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.homeModel.stores?.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            var data = state.homeModel.stores?.data?[index];
                            return ArtztsStoreCard(
                              name: data?.name ?? "N/A",
                              coverPhoto:
                                  data?.storeBannerUrl ?? storiesImageUrl,
                              profilePhoto:
                                  data?.storeLogoUrl ?? storiesImageUrl,
                              industry: data?.industryId.toString() ?? "N/A",
                            );
                          })
                      : const AppLoadingWidget()),

              TitlesContainer(
                  color: Colors.blue[50]!, title: "Casting & Audtions"),
              SizedBox(
                  height: 250,
                  child: state is HomeSuccessState
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.homeModel.auditions?.length ?? 0,
                          itemBuilder: (context, index) {
                            var data = state.homeModel.auditions?[index];
                            return CastingAndAuditionsCard(
                              name: data?.user?.name ?? "N/A",
                              coverPhoto:
                                  data?.user?.coverphotoUrl ?? storiesImageUrl,
                              postedOn: data?.startDate ?? "N/A",
                              roles: data?.jobrole ?? "N/A",
                            );
                          })
                      : const AppLoadingWidget()),
            ],
          ),
        );
      },
    );
  }
}

class TitlesContainer extends StatelessWidget {
  final Color color;
  final String title;
  const TitlesContainer({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            width: 1,
            color: Colors.grey[300]!,
          )),
      child: Row(
        children: [
          const Icon(Icons.article_rounded),
          Text(" $title"),
          const Spacer(),
          const Text(
            "View All",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
