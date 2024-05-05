import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/features/community/presentation/pages/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF000000),
            background: const Color(0xFFF0F5FA)),
        // useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<List<String>> bottomNav = [
    [
      "assets/svg/bnavigation/home.svg",
      "assets/svg/bnavigation/home_active.svg"
    ],
    [
      "assets/svg/bnavigation/search.svg",
      "assets/svg/bnavigation/search_active.svg"
    ],
    [
      "assets/svg/bnavigation/bell.svg",
      "assets/svg/bnavigation/bell_active.svg"
    ],
    [
      "assets/svg/bnavigation/chat.svg",
      "assets/svg/bnavigation/chat_active.svg"
    ],
  ];

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
                  const BottomSheetExample(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      customButton: Container(
                        height: 20,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      items: [
                        ...MenuItems.firstItems.map(
                          (item) => DropdownMenuItem<MenuItem>(
                            value: item,
                            child: MenuItems.buildItem(item),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        MenuItems.onChanged(context, value as MenuItem);
                      },
                      dropdownStyleData: DropdownStyleData(
                        width: 200,
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFFFFFFFF),
                        ),
                        offset: const Offset(-110, -20),
                      ),
                      menuItemStyleData: MenuItemStyleData(
                        customHeights: List<double>.filled(
                            MenuItems.firstItems.length, 44),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const CommunityMainPage(),
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
              items: [
                for (List<String> item in bottomNav)
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
                                color: const Color(0xFF2A85FF).withOpacity(0.6), // Shadow color
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
  });

  final String text;
  final String icon;
}

abstract class MenuItems {
  static const List<MenuItem> firstItems = [ru, uzl, uzk, en];
  // static const List<MenuItem> secondItems = [en];

  static const ru = MenuItem(text: 'РУ - Русский', icon: "assets/image/ru.png");
  static const uzl =
      MenuItem(text: 'UZ - O’zbek (lotin)', icon: "assets/image/uz.png");
  static const uzk =
      MenuItem(text: 'УЗ - Ўзбек (кирилл)', icon: "assets/image/uz.png");
  static const en = MenuItem(text: 'EN - English', icon: "assets/image/en.png");

  static Widget buildItem(MenuItem item) {
    return Row(
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
      case MenuItems.en:
        //Do something
        break;
    }
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.transparent; // Remove hover effect
              }
              return Colors.transparent; // Default color when not hovered
            },
          ),
        ),
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
        onPressed: () {
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
                      TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  4.0), // Adjust the value as needed
                            ),
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: SvgPicture.asset("assets/svg/icon/close.svg"),
                      ),
                      Container(
                        height: 40,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffF0F5FA),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search",
                            hintStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                "assets/svg/icon/search.svg",
                              ),
                            ),
                            prefixIconColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(8.0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    4.0), // Adjust the value as needed
                              ),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
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
                        height: 56,
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(8.0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    4.0), // Adjust the value as needed
                              ),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
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
                        height: 56,
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(8.0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    4.0), // Adjust the value as needed
                              ),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
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
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
