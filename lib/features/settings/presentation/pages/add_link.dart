import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class AddLink extends StatefulWidget {
  const AddLink({super.key});

  @override
  State<AddLink> createState() => _AddLinkState();
}

class _AddLinkState extends State<AddLink> {
  final List<String> access = <String>[
    "Private (only members can see)",
    "Public (everybody can see)",
  ];
  late String access_value = access.first;
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.white,
          title: const WText(
            text: "Links",
            fontWeight: FontWeight.w600,
            color: AppColors.c_07,
          ),
          leading: IconButton(
            icon: SvgPicture.asset(
                "assets/svg/icon/back_route.svg"), // Your custom icon here
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Add link",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.c_07),
                ),
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Label",
                fontSize: 12,
                color: AppColors.c_a1,
              ),
              const SizedBox(height: 8),
              WTextField(
                controller: textController,
                hint: "",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "0/34",
                  style: TextStyle(fontSize: 12, color: AppColors.c_a1),
                ),
              ),
              const SizedBox(height: 24),
              WTextField(
                controller: textController,
                hint: "URL",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Privacy",
                fontSize: 12,
                color: AppColors.c_a1,
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.c_e0),
                    borderRadius: BorderRadius.circular(8)),
                height: 40,
                child: DropdownButton<String>(
                  value: access_value,
                  icon: SvgPicture.asset("assets/svg/icon/arrow.svg"),
                  elevation: 0,
                  padding: const EdgeInsets.all(12),
                  borderRadius: BorderRadius.circular(6),
                  dropdownColor: AppColors.white,
                  focusColor: AppColors.c_e0,
                  isExpanded: true,
                  style: const TextStyle(
                    color: AppColors.c_07,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  underline: Container(
                    height: 0,
                    color: Colors.deepPurpleAccent,
                  ),
                  selectedItemBuilder: (BuildContext context) {
                    return access.map<Widget>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList();
                  },
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      access_value = value!;
                    });
                  },
                  items: access.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        children: [
                          Text(value),
                          const SizedBox(width: 8),
                          access_value == value
                              ? SvgPicture.asset("assets/svg/icon/true.svg")
                              : const Text(""),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: WButton(
                      borderRadius: 8,
                      // buttonType: ButtonType.outline,
                      // color: AppColors.c_e0,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      buttonPositionType:
                          MainAxisAlignment.center, // Changed to center
                      text: "cancel".toUpperCase(),
                      onTap: () => {},
                    ),
                  ),
                  const SizedBox(width: 16), // Adjust the width for spacing
                  Expanded(
                    child: WButton(
                      borderRadius: 8,
                      color: AppColors.c_e0,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      buttonPositionType:
                          MainAxisAlignment.center, // Changed to center
                      text: "save".toUpperCase(),
                      onTap: () => {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
