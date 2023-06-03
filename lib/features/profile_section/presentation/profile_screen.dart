import 'package:flutter/material.dart';
import 'package:pit_box/utils/widgets/change_theme_button_widget.dart';

class ProfileSceen extends StatelessWidget {
  const ProfileSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: ChangeThemeButtonWidget()));
  }
}
