import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/features/community/presentation/pages/course.dart';

class Classroom extends StatelessWidget {
  Classroom({super.key});

  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 550
                ? 3
                : MediaQuery.of(context).size.width > 300
                    ? 2
                    : 1,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            mainAxisExtent: MediaQuery.of(context).size.width < 400 ? 242 : 274,
          ),
          itemCount: 10, // Change this to the number of cards you want
          itemBuilder: (BuildContext context, int index) {
            return Card(
              clipBehavior: Clip.hardEdge,
              color: const Color(0xFFFFFFFF),
              shadowColor: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.network(
                      'https://picsum.photos/250?image=$index',
                      fit: BoxFit.cover,
                      height:
                          MediaQuery.of(context).size.width < 400 ? 88 : 120,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(12.0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skool 101',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        SizedBox(
                          height: 34,
                          child: Text(
                            'Millionlab pullar ishlab topmoqchi bo’lsangiz millionlab insonlarni hayotini o’zgartiring.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        LinearProgressIndicator(
                          value: 0.45,
                          backgroundColor: Color(0xFFE0E0E0),
                          minHeight: 3,
                          borderRadius: BorderRadius.all(Radius.circular(1.5)),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF2A85FF)),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          "45% complete",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF070707)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border:
                            Border(top: BorderSide(color: Color(0xFFBCDEFF)))),
                    width: double.infinity,
                    height: 31,
                    child: WButton(
                      borderRadius: 0,
                      color: AppColors.white,
                      textColor: AppColors.c_2a,
                      horizontalPadding: 0,
                      verticalPadding: 0,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CoursePage(),
                          ),
                        ),
                      },
                      text: "Open".toUpperCase(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: WButton(
        margin: const EdgeInsets.only(right: 7),
        borderRadius: 8,
        color: AppColors.c_bc,
        textColor: AppColors.c_07,
        horizontalPadding: 24,
        verticalPadding: 10,
        fontSize: 14,
        onTap: () => {},
        text: "",
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset("assets/svg/classroom/add.svg"),
            const SizedBox(
              width: 10,
            ),
            Text(
              "add new course".toUpperCase(),
              style: const TextStyle(
                  color: Color(0xFF070707),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
