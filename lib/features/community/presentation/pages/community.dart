import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skool/config/routes/route_path.dart';
import 'package:skool/config/routes/route_service.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';
import 'package:skool/features/community/data/data_sources/community_service.dart';
import 'package:skool/features/community/data/repositories/impl_community_repo.dart';
import 'package:skool/features/community/presentation/bloc/community_category/community_category_bloc.dart';
import 'package:skool/features/community/presentation/pages/write_post.dart';
import 'package:skool/features/community/presentation/widgets/CommunityCard.dart';
import 'package:skool/features/search/presentation/pages/search.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

/// Main example page
class _CommunityPageState extends State<CommunityPage> {
  final communityService = CommunityService.create();

  int _selectedIndex = 0;

  final List<List<dynamic>> bottomNav = [
    [
      "assets/svg/bnavigation/home.svg",
      "assets/svg/bnavigation/home_active.svg",
      RoutePath.search,
      // const TabRouteData(path: RoutePath.search, routeInfo: RootSearch()),
    ],
    [
      "assets/svg/bnavigation/search.svg",
      "assets/svg/bnavigation/search_active.svg",
      // Search(),
    ],
    [
      "assets/svg/bnavigation/bell.svg",
      "assets/svg/bnavigation/bell_active.svg",
      // Search(),
    ],
    [
      "assets/svg/bnavigation/chat.svg",
      "assets/svg/bnavigation/chat_active.svg",
      // Search(),
    ],
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    context.router.pushNamed(RoutePath.search);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(64.0), // Set your preferred height here
          child: AppBar(
            titleSpacing: 0,
            backgroundColor: const Color(0xFFF0F5FA),
            centerTitle: true,
            title: Container(
              height: 64,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommunityDialog(),
                  LanguageDialog(),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
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
                      mainAxisSize:
                          MainAxisSize.min, // Use minimum main axis size
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
                        SizedBox(
                            width: 14), // Add some space between icon and text
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
                      communityCategoryRepo: ImplCommunityRepo(
                          communityService: communityService)),
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
                                            borderRadius:
                                                BorderRadius.circular(17),
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
                            child:
                                SvgPicture.asset("assets/svg/icon/filter.svg"),
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
        ),
        bottomNavigationBar: Container(
          height: 56,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xFFF2F2F2), // Border color
                width: 1.0, // Border width
              ),
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          ),
          child: ClipPath(
            clipper: const ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
            ),
            child: BottomNavigationBar(
              selectedLabelStyle: TextStyle(fontSize: 0, height: 0),
              items: <BottomNavigationBarItem>[
                for (List<dynamic> item in bottomNav)
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      item[0],
                    ),
                    backgroundColor: Color(0xFFFFFFFF),
                    activeIcon: Transform.translate(
                      offset: Offset(0.0, 7.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: SvgPicture.asset(item[1]),
                          ),
                          Container(
                            width: 24,
                            height: 2.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A85FF), // Line color
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                BottomNavigationBarItem(
                  icon: const CircleAvatar(
                    radius: 12, // Set the radius of the circle
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/250?image=9',
                    ),
                  ),
                  activeIcon: Transform.translate(
                    offset: const Offset(0.0, 7.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 12),
                          margin: const EdgeInsets.only(bottom: 0),
                          child: const CircleAvatar(
                            radius: 12, // Set the radius of the circle
                            backgroundImage: NetworkImage(
                              'https://picsum.photos/250?image=9',
                            ),
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 2.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2A85FF), // Line color
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF2A85FF)
                                    .withOpacity(0.6), // Shadow color
                                offset: const Offset(0, -1), // X 0 Y -1
                                blurRadius: 7, // BLUR 7
                                spreadRadius: 0, // Spread 0
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.icon,
    required this.lang,
  });

  final String text;
  final String icon;
  final String lang;
}

abstract class MenuItems {
  static const String currentLang = "EN";
  static const List<MenuItem> firstItems = [ru, uzl, uzk];
  // static const List<MenuItem> secondItems = [en];

  static const ru =
      MenuItem(text: 'РУ - Русский', icon: "assets/image/ru.png", lang: "RU");
  static const uzl = MenuItem(
      text: 'UZ - O’zbek (lotin)',
      icon: "assets/image/uz.png",
      lang: "UZLOTIN");
  static const uzk = MenuItem(
      text: 'УЗ - Ўзбек (кирилл)',
      icon: "assets/image/uz.png",
      lang: "UZKRILL");
  // static const en =
  //     MenuItem(text: 'EN - English', icon: "assets/image/en.png", lang: "EN");

  static Widget buildItem(MenuItem item) {
    return WButton(
      onTap: () => {},
      text: "",
      verticalPadding: 12,
      horizontalPadding: 12,
      // decoration: BoxDecoration(border: Border.all(color: AppColors.black)),
      child: Row(
        children: [
          Image.asset(item.icon),
          const SizedBox(
            width: 10,
          ),
          Text(
            item.text,
            style: const TextStyle(
              color: Color(0xFF070707),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  static void onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.ru:
        //Do something
        break;
      case MenuItems.uzk:
        //Do something
        break;
      case MenuItems.uzl:
        //Do something
        break;
      // case MenuItems.en:
      //   //Do something
      //   break;
    }
  }
}

class CommunityDialog extends StatelessWidget {
  CommunityDialog({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WButton(
        borderRadius: 4,
        verticalPadding: 4,
        horizontalPadding: 20,
        text: "",
        onTap: () => {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      WButton(
                        borderRadius: 4,
                        verticalPadding: 4,
                        horizontalPadding: 4,
                        text: "",
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset("assets/svg/icon/close.svg"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        width: MediaQuery.of(context).size.width,
                        child: WTextField(
                          controller: searchController,
                          hint: "Search",
                          hintFontSize: 14,
                          fillColor: const Color(0xffF0F5FA),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              "assets/svg/icon/search.svg",
                              width: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: WButton(
                          borderRadius: 4,
                          verticalPadding: 16,
                          horizontalPadding: 0,
                          buttonPositionType: MainAxisAlignment.start,
                          text: "",
                          onTap: () => Navigator.pop(context),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  "assets/svg/modal/create_community.svg"),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Create a community",
                                style: TextStyle(
                                    color: Color(0xFF070707),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: WButton(
                          borderRadius: 4,
                          verticalPadding: 16,
                          horizontalPadding: 0,
                          buttonPositionType: MainAxisAlignment.start,
                          text: "",
                          onTap: () => Navigator.pop(context),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svg/modal/discover.svg"),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Discover communities",
                                style: TextStyle(
                                    color: Color(0xFF070707),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: WButton(
                          borderRadius: 4,
                          verticalPadding: 16,
                          horizontalPadding: 0,
                          buttonPositionType: MainAxisAlignment.start,
                          text: "",
                          onTap: () => Navigator.pop(context),
                          child: Row(
                            children: [
                              Image.asset("assets/image/logo.png"),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Skool community",
                                style: TextStyle(
                                    color: Color(0xFF070707),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
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
          child: Row(
            children: [
              Image.asset(
                "assets/image/logo.png",
              ),
              const SizedBox(
                width: 12,
              ),
              const Text(
                "Skool community",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000)),
              ),
              const SizedBox(
                width: 12,
              ),
              SvgPicture.asset(
                "assets/svg/icon/arrow.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageDialog extends StatelessWidget {
  LanguageDialog({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WButton(
        borderRadius: 4,
        verticalPadding: 4,
        horizontalPadding: 20,
        text: "",
        onTap: () => {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                // height: 148,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                ...MenuItems.firstItems.map(
                                  (item) => DropdownMenuItem<MenuItem>(
                                    value: item,
                                    child: MenuItems.buildItem(item),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 16,
                        top: 8,
                        child: WButton(
                          borderRadius: 4,
                          verticalPadding: 4,
                          horizontalPadding: 4,
                          text: "",
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset("assets/svg/icon/close.svg"),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        },
        child: Row(
          children: [
            Image.asset(
              "assets/image/en.png",
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "EN",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              "assets/svg/icon/arrow.svg",
            ),
          ],
        ),
      ),
    );
  }
}
