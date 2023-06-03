import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/custom_icons.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final Icon? icons;
  final bool? leadingIcon;
  const AppBarWidget(
      {super.key, required this.title, this.icons, this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: leadingIcon == true
                ? GestureDetector(
                    child: CustomIcons.award,
                  )
                : SizedBox(
                    width: size.width * 0.1,
                  ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const Spacer(),
          icons != null
              ? IconButton(
                  icon: icons!,
                  onPressed: () {},
                )
              : SizedBox(
                  width: size.width * 0.1,
                )
        ],
      ),
    );
  }
}
