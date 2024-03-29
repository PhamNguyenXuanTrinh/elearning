import 'package:elearning/src/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class ListtileWidget extends StatelessWidget {
  final VoidCallback onFavoriteTap;
  final VoidCallback onEditAccountTap;
  final VoidCallback onSettingsTap;
  final VoidCallback onHelpTap;

  const ListtileWidget({
    super.key,
    required this.onFavoriteTap,
    required this.onEditAccountTap,
    required this.onSettingsTap,
    required this.onHelpTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(),
        ListTileButton(
          label: AppStrings.favourite,
          onTap: onFavoriteTap,
          height: 20,
        ),
        ListTileButton(
          label: AppStrings.editAcc,
          onTap: onEditAccountTap,
          height: 20,
        ),
        ListTileButton(
          label: AppStrings.setting,
          onTap: onSettingsTap,
          height: 20,
        ),
        ListTileButton(
          label: AppStrings.help,
          onTap: onHelpTap,
          height: 20,
        ),
      ],
    );
  }
}

class ListTileButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ListTileButton({
    super.key,
    required this.label,
    required this.onTap,
    required int height,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      onTap: onTap,
      trailing: const Icon(
          Icons.chevron_right), // Thêm icon chevron_right vào mỗi nút
    );
  }
}
