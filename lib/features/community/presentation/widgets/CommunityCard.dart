import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/features/community/data/data_sources/community_service.dart';
import 'package:skool/features/community/data/repositories/impl_community_repo.dart';
import 'package:skool/features/community/presentation/bloc/community/community_bloc.dart';

class CommunityCard extends StatelessWidget {
  CommunityCard({super.key});

  final communityService = CommunityService.create();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommunityBloc(
          communityRepo: ImplCommunityRepo(communityService: communityService)),
      child: BlocBuilder<CommunityBloc, CommunityState>(
        builder: (context, state) {
          if (state is Loading) {
            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey
                          .withOpacity(0.3), // Background color of the skeleton
                      highlightColor: Colors.grey
                          .withOpacity(0.1), // Highlight color of the skeleton
                      child: Container(
                        width: double.infinity,
                        height: 270.0,
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          } else if (state is LoadedCommunityData) {
            final community = state.community;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var group in community)
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(16), // Set the border radius
                      color: Colors.white, // Set the background color
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          margin: const EdgeInsets.only(top: 7),
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/home/pin.svg",
                                height: 21,
                                width: 21,
                              ),
                              WButton(
                                borderRadius: 4,
                                color: AppColors.white,
                                horizontalPadding: 0,
                                verticalPadding: 0,
                                fontSize: 12,
                                onTap: () => {},
                                text: "",
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.visibility_off,
                                      size: 18,
                                      color: AppColors.c_2a,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Hide',
                                      style: TextStyle(
                                          fontSize: 12, color: AppColors.c_2a),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0xFFF0F5FA),
                          thickness: 1,
                        ),
                        Container(
                          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.only(left: 16, top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  SizedBox(
                                    height:
                                        40, // Set the height of the container
                                    child: CircleAvatar(
                                      radius:
                                          20, // Set the radius of the circle
                                      backgroundImage: NetworkImage(
                                        'https://picsum.photos/250?image=9',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cameron Williamson",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "19d ago in",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "Announcements",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Color(0xFF59ACFF)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                "${group.name}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  "${group.description}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  constraints: BoxConstraints(
                                      minWidth:
                                          MediaQuery.of(context).size.width -
                                              56),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              WButton(
                                                borderRadius: 4,
                                                color: AppColors.c_bc,
                                                horizontalPadding: 8,
                                                verticalPadding: 4,
                                                fontSize: 12,
                                                onTap: () => {},
                                                text: "",
                                                child: Row(
                                                  mainAxisSize: MainAxisSize
                                                      .min, // Use minimum main axis size
                                                  children: [
                                                    SvgPicture.asset(
                                                        "assets/svg/home/poll.svg"),
                                                    const SizedBox(
                                                        width:
                                                            4), // Add some space between icon and text
                                                    const Text(
                                                      'Poll',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              AppColors.c_07),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 12,
                                              ),
                                              const Text(
                                                "9 members have voted",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF070707)),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          Row(
                                            children: [
                                              WButton(
                                                color: AppColors.white,
                                                horizontalPadding: 0,
                                                verticalPadding: 0,
                                                onTap: () => {},
                                                text: "",
                                                child: Row(
                                                  mainAxisSize: MainAxisSize
                                                      .min, // Use minimum main axis size
                                                  children: [
                                                    SvgPicture.asset(
                                                        "assets/svg/icon/like.svg"),
                                                    const SizedBox(
                                                        width:
                                                            12), // Add some space between icon and text
                                                    const Text(
                                                      '355',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(
                                                              0xFF59ACFF)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              WButton(
                                                color: AppColors.white,
                                                horizontalPadding: 0,
                                                verticalPadding: 0,
                                                onTap: () => {},
                                                text: "",
                                                child: Row(
                                                  mainAxisSize: MainAxisSize
                                                      .min, // Use minimum main axis size
                                                  children: [
                                                    SvgPicture.asset(
                                                        "assets/svg/icon/message.svg"),
                                                    const SizedBox(
                                                        width:
                                                            12), // Add some space between icon and text
                                                    const Text(
                                                      '609',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(
                                                              0xFF59ACFF)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              WButton(
                                                color: AppColors.white,
                                                horizontalPadding: 0,
                                                verticalPadding: 0,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                textColor: AppColors.c_59,
                                                onTap: () => {},
                                                text: "New comment 10h ago",
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 12,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.translate(
                                        offset: const Offset(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            'https://picsum.photos/250?image=9',
                                            height: 75,
                                            width: 75,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            );
          } else if (state is ErrorLoadingCommunityData) {
            return Center(
              child:
                  Text('Error loading community data: ${state.errorMessage}'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
