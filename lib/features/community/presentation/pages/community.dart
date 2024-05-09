import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/features/community/data/data_sources/community_service.dart';
import 'package:skool/features/community/data/repositories/impl_community_repo.dart';
import 'package:skool/features/community/presentation/bloc/community_category/community_category_bloc.dart';
import 'package:skool/features/community/presentation/pages/write_post.dart';
import 'package:skool/features/community/presentation/widgets/CommunityCard.dart';

class CommunityPage extends StatelessWidget {
  final communityService = CommunityService.create();

  CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: WButton(
                borderRadius: 16,
                color: AppColors.white,
                horizontalPadding: 20,
                buttonPositionType: MainAxisAlignment.start,
                verticalPadding: 12,
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WritePost(),
                    ),
                  ),
                },
                text: "",
                child: const Row(
                  mainAxisSize: MainAxisSize.min, // Use minimum main axis size
                  children: [
                    SizedBox(
                      height: 28, // Set the height of the container
                      width: 28,
                      child: CircleAvatar(
                        radius: 14, // Set the radius of the circle
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/250?image=9',
                        ),
                      ),
                    ),
                    SizedBox(width: 14), // Add some space between icon and text
                    Text(
                      'Write something...',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            BlocProvider(
              create: (context) => CommunityCategoryBloc(
                  communityCategoryRepo:
                      ImplCommunityRepo(communityService: communityService)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width > 480
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.7,
                    height: 80,
                    child: BlocBuilder<CommunityCategoryBloc,
                        CommunityCategoryState>(
                      builder: (context, state) {
                        if (state is Loading) {
                          return ClipRect(
                            child: Wrap(
                              spacing: 12.0,
                              runSpacing: 12.0,
                              children: [
                                for (var _ in [1, 2, 3, 4, 5, 6, 7, 8, 9])
                                  Shimmer.fromColors(
                                    baseColor: Colors.grey.withOpacity(
                                        0.3), // Background color of the skeleton
                                    highlightColor: Colors.grey.withOpacity(
                                        0.1), // Highlight color of the skeleton
                                    child: Container(
                                      height: 34,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          );
                        } else if (state is LoadedCommunityData) {
                          final community = state.user;
                          return ClipRect(
                            child: Wrap(
                              spacing: 12.0,
                              runSpacing: 12.0,
                              children: [
                                WButton(
                                  borderRadius: 20,
                                  color: const Color(0xFFBCDEFF),
                                  textColor: AppColors.c_07,
                                  horizontalPadding: 8,
                                  verticalPadding: 8,
                                  fontSize: 12,
                                  onTap: () => {},
                                  text: "All",
                                ),
                                for (var i in community)
                                  WButton(
                                    borderRadius: 20,
                                    color: AppColors.white,
                                    horizontalPadding: 8,
                                    verticalPadding: 8,
                                    fontSize: 12,
                                    onTap: () => {},
                                    text: "${i.name}",
                                  ),
                              ],
                            ),
                          );
                        } else if (state is ErrorLoadingCommunityData) {
                          return Center(
                            child: Text(
                                'Error loading community data: ${state.errorMessage}'),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WButton(
                        borderRadius: 20,
                        color: AppColors.white,
                        horizontalPadding: 9,
                        verticalPadding: 9,
                        onTap: () => {},
                        text: "",
                        child: SvgPicture.asset("assets/svg/icon/filter.svg"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      WButton(
                        borderRadius: 20,
                        color: AppColors.white,
                        horizontalPadding: 8,
                        verticalPadding: 8,
                        fontSize: 12,
                        onTap: () => {},
                        text: "More...",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CommunityCard(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CircularProgressIndicator(
                color: Color(0XFFBCDEFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
