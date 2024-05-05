import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skool/features/community/presentation/widgets/CommunityCard.dart';
import 'package:shimmer/shimmer.dart';

class CommunityPage extends StatelessWidget {
  CommunityPage({super.key});

  final List<String> buttonLabels = [
    "All",
    "How I use Skool",
    "Announcements",
    "Product Feedback",
    "Product Question",
    "Product Question",
    "Product Question",
    "Product Question",
    "Product Question",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFFFFFFF),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              onPressed: () => {},
              child: SizedBox(
                height: 52,
                width: MediaQuery.of(context).size.width,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width > 480
                      ? MediaQuery.of(context).size.width * 0.8
                      : MediaQuery.of(context).size.width * 0.7,
                  height: 80,
                  child: ClipRect(
                    child: Wrap(
                      spacing: 12.0,
                      runSpacing: 12.0,
                      children: [
                        for (String label in buttonLabels)
                          TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(8.0)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFBCDEFF),
                              ),
                            ),
                            onPressed: () => {},
                            child: Text(
                              label,
                              style: const TextStyle(
                                color: Color(0xFF070707),
                                fontSize: 12,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 34,
                      height: 34,
                      child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(8.0)),
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFFFFFFFF),
                          ), // Change background color
                        ),
                        onPressed: () => {},
                        child: SvgPicture.asset("assets/svg/icon/filter.svg"),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(8.0)),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFFFFFFFF),
                        ), // Change background color
                      ),
                      onPressed: () => {},
                      child: const Text(
                        "More...",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
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
            for (String _ in ["1", "2", "3", "4"]) CommunityCard(),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CircularProgressIndicator(
                  color: Color(0XFFBCDEFF),
                ))
          ],
        ),
      ),
    );
  }
}
