import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/features/community/presentation/pages/add_course.dart';
import 'package:skool/features/community/presentation/pages/add_module.dart';
import 'package:skool/features/community/presentation/pages/module.dart';

// class CoursePage extends StatefulWidget {
//   const CoursePage({super.key});

//   @override
//   State<CoursePage> createState() => _CoursePageState();
// }
class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

/// Main example page
class _CoursePageState extends State<CoursePage> {
  final List<List<dynamic>> courseDropdown = [
    ["Edit course", const AddCourse()],
    ["Add set", const AddCourse()],
    ["Add modul", const AddModule()],
    // ["Delete course", null],
  ];

  final List<String> setDropdown = [
    "Edit set",
    "Delete set",
    "Add modul in set",
  ];

  final List<List<Map<String, dynamic>>> courseModules = [
    [
      {
        "isExpanded": false,
        "moduleName": "Name1",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name2",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name3",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name4",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name5",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
    [
      {
        "isExpanded": false,
        "moduleName": "Name",
        "lessons": ["Hello", "Hi"]
      },
    ],
  ];

  @override
  build(context) => Scaffold(
        // backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              Image.asset("assets/image/logo.png"),
              const SizedBox(
                width: 12,
              ),
              const Text(
                "Skool community",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.c_d9,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Skool 101",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Transform.translate(
                            offset: const Offset(5, 0),
                            child: WButton(
                              color: AppColors.transparent,
                              textColor: AppColors.c_2a,
                              borderRadius: 8,
                              fontSize: 14,
                              verticalPadding: 0,
                              horizontalPadding: 0,
                              text: "",
                              onTap: () => {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(16))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            WButton(
                                              borderRadius: 4,
                                              verticalPadding: 4,
                                              horizontalPadding: 4,
                                              text: "",
                                              onTap: () =>
                                                  Navigator.pop(context),
                                              child: SvgPicture.asset(
                                                  "assets/svg/icon/close.svg"),
                                            ),
                                            for (dynamic name in courseDropdown)
                                              SizedBox(
                                                width: double.infinity,
                                                child: WButton(
                                                    borderRadius: 4,
                                                    verticalPadding: 16,
                                                    horizontalPadding: 0,
                                                    fontSize: 12,
                                                    textColor: AppColors.c_07,
                                                    buttonPositionType:
                                                        MainAxisAlignment.start,
                                                    text: "${name[0]}",
                                                    onTap: () => {
                                                          Navigator.pop(
                                                              context),
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      name[1],
                                                            ),
                                                          ),
                                                        }),
                                              ),
                                            SizedBox(
                                              width: double.infinity,
                                              child: WButton(
                                                borderRadius: 4,
                                                verticalPadding: 16,
                                                horizontalPadding: 0,
                                                fontSize: 12,
                                                textColor: AppColors.c_07,
                                                buttonPositionType:
                                                    MainAxisAlignment.start,
                                                onTap: () => {
                                                  Navigator.pop(context),
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  12.0), // Set your desired border radius here
                                                        ),
                                                        backgroundColor:
                                                            AppColors.white,
                                                        surfaceTintColor:
                                                            AppColors.white,
                                                        title: const Text(
                                                          'Delete course',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                AppColors.c_07,
                                                          ),
                                                        ),
                                                        content: const Text(
                                                            'Are you sure you want to delete your course?',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .c_07,
                                                            )),
                                                        actions: <Widget>[
                                                          WButton(
                                                            borderRadius: 8,
                                                            verticalPadding: 0,
                                                            horizontalPadding:
                                                                0,
                                                            textColor:
                                                                AppColors.c_a1,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            buttonPositionType:
                                                                MainAxisAlignment
                                                                    .center, // Changed to center
                                                            text: "cancel"
                                                                .toUpperCase(),
                                                            onTap: () =>
                                                                Navigator.pop(
                                                                    context),
                                                          ),
                                                          const SizedBox(
                                                              width: 20),
                                                          WButton(
                                                            borderRadius: 8,
                                                            color:
                                                                AppColors.c_bc,
                                                            verticalPadding: 12,
                                                            horizontalPadding:
                                                                24,
                                                            textColor:
                                                                AppColors.c_07,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            buttonPositionType:
                                                                MainAxisAlignment
                                                                    .center, // Changed to center
                                                            text: "Confirm"
                                                                .toUpperCase(),
                                                            onTap: () => {},
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                  // showModalBottomSheet<void>(
                                                  //   context: context,
                                                  //   builder:
                                                  //       (BuildContext context) {
                                                  //     return Container(
                                                  //       height: 224,
                                                  //       width: MediaQuery.of(
                                                  //               context)
                                                  //           .size
                                                  //           .width,
                                                  //       decoration: const BoxDecoration(
                                                  //           color: Color(
                                                  //               0xFFFFFFFF),
                                                  //           borderRadius:
                                                  //               BorderRadius.vertical(
                                                  //                   top: Radius
                                                  //                       .circular(
                                                  //                           16))),
                                                  //       child: Padding(
                                                  //         padding:
                                                  //             const EdgeInsets
                                                  //                 .symmetric(
                                                  //           horizontal: 20,
                                                  //           vertical: 28,
                                                  //         ),
                                                  //         child: Column(
                                                  //           crossAxisAlignment:
                                                  //               CrossAxisAlignment
                                                  //                   .start,
                                                  //           children: [
                                                  //             const Text(
                                                  //               'Delete course',
                                                  //               style:
                                                  //                   TextStyle(
                                                  //                 fontSize: 20,
                                                  //                 fontWeight:
                                                  //                     FontWeight
                                                  //                         .w600,
                                                  //                 color:
                                                  //                     AppColors
                                                  //                         .c_07,
                                                  //               ),
                                                  //             ),
                                                  //             const SizedBox(
                                                  //                 height: 28),
                                                  //             const Text(
                                                  //                 'Are you sure you want to remove your vote?',
                                                  //                 style:
                                                  //                     TextStyle(
                                                  //                   color:
                                                  //                       AppColors
                                                  //                           .c_07,
                                                  //                 )),
                                                  //             const SizedBox(
                                                  //                 height: 28),
                                                  //             Row(
                                                  //               children: [
                                                  //                 WButton(
                                                  //                   color:
                                                  //                       AppColors
                                                  //                           .c_bc,
                                                  //                   textColor:
                                                  //                       AppColors
                                                  //                           .c_07,
                                                  //                   fontSize:
                                                  //                       14,
                                                  //                   fontWeight:
                                                  //                       FontWeight
                                                  //                           .w600,
                                                  //                   horizontalPadding:
                                                  //                       24,
                                                  //                   verticalPadding:
                                                  //                       11,
                                                  //                   text: "Confirm"
                                                  //                       .toUpperCase(),
                                                  //                   onTap: () =>
                                                  //                       Navigator.of(context)
                                                  //                           .pop(),
                                                  //                 ),
                                                  //               ],
                                                  //             ),
                                                  //           ],
                                                  //         ),
                                                  //       ),
                                                  //     );
                                                  //   },
                                                  // ),
                                                },
                                                text: "Delete course",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              },
                              child: SizedBox(
                                height: 28,
                                child: SvgPicture.asset(
                                    "assets/svg/icon/threedot.svg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const LinearProgressIndicator(
                        value: 0.45,
                        backgroundColor: Color(0xFFE0E0E0),
                        minHeight: 3,
                        borderRadius: BorderRadius.all(Radius.circular(1.5)),
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xFF2A85FF)),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        "45% complete",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF070707)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: courseModules.map((module) {
                      return ExpansionPanelList(
                        elevation: 0,
                        dividerColor: AppColors.c_07,
                        expandedHeaderPadding: EdgeInsets.zero,
                        materialGapSize: 0,
                        expansionCallback: (panelIndex, isExpanded) {
                          setState(() {
                            courseModules.forEach((module) {
                              module[0]['isExpanded'] = false;
                            });
                            module[panelIndex]['isExpanded'] = isExpanded;
                          });
                        },
                        children: module
                            .map(
                              (e) => ExpansionPanel(
                                backgroundColor:
                                    e['isExpanded'] ? AppColors.c_f0 : null,
                                canTapOnHeader: true,
                                headerBuilder:
                                    (BuildContext _, bool isExpanded) {
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            color: AppColors.c_2a,
                                            width: 4,
                                            height: 40,
                                          ),
                                          const SizedBox(width: 16),
                                          Text(
                                            "${e['moduleName']}",
                                            style: const TextStyle(
                                              color: AppColors.c_07,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      e['isExpanded']
                                          ? Transform.rotate(
                                              angle: 90 *
                                                  (pi /
                                                      180), // Convert degrees to radians
                                              child: WButton(
                                                borderRadius: 4,
                                                verticalPadding: 0,
                                                horizontalPadding: 0,
                                                color: AppColors.transparent,
                                                buttonPositionType:
                                                    MainAxisAlignment.start,
                                                text: "",
                                                onTap: () => {
                                                  e['isExpanded'] = true,
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xFFFFFFFF),
                                                            borderRadius:
                                                                BorderRadius.vertical(
                                                                    top: Radius
                                                                        .circular(
                                                                            16))),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: <Widget>[
                                                              WButton(
                                                                borderRadius: 4,
                                                                verticalPadding:
                                                                    4,
                                                                horizontalPadding:
                                                                    4,
                                                                text: "",
                                                                onTap: () =>
                                                                    Navigator.pop(
                                                                        context),
                                                                child: SvgPicture
                                                                    .asset(
                                                                        "assets/svg/icon/close.svg"),
                                                              ),
                                                              for (String name
                                                                  in setDropdown)
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      WButton(
                                                                    borderRadius:
                                                                        4,
                                                                    verticalPadding:
                                                                        16,
                                                                    horizontalPadding:
                                                                        0,
                                                                    fontSize:
                                                                        12,
                                                                    textColor:
                                                                        AppColors
                                                                            .c_07,
                                                                    buttonPositionType:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    text: name,
                                                                    onTap: () =>
                                                                        Navigator.pop(
                                                                            context),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                },
                                                child: SizedBox(
                                                  height: 28,
                                                  child: SvgPicture.asset(
                                                      "assets/svg/icon/threedot.svg"),
                                                ),
                                              ),
                                            )
                                          : const Text(""),
                                    ],
                                  );
                                },
                                isExpanded: e['isExpanded'],
                                body: Column(
                                  children: [
                                    for (String _ in e["lessons"])
                                      SizedBox(
                                        width: double.infinity,
                                        child: WButton(
                                          borderRadius: 0,
                                          verticalPadding: 0,
                                          horizontalPadding: 0,
                                          buttonPositionType:
                                              MainAxisAlignment.start,
                                          text: "",
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Module(),
                                            ),
                                          ),
                                          child: Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.5,
                                                  bottom: 8.5,
                                                  left: 36,
                                                  right: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "Lesson 1",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: AppColors.c_07,
                                                        fontSize: 12),
                                                  ),
                                                  SvgPicture.asset(
                                                      "assets/svg/classroom/checked.svg"),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
