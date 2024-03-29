import 'package:elearning/src/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatefulWidget {
  final String title;
  final bool
      showDetails; // Biến để kiểm tra xem có hiển thị dòng tiêu đề hay không

  const LoginTitle({
    super.key,
    required this.title,
    this.showDetails = true, // Mặc định hiển thị dòng tiêu đề
  });

  @override
  State<LoginTitle> createState() => _LoginTitleState();
}

class _LoginTitleState extends State<LoginTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title, // Sử dụng tiêu đề từ tham số
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        if (widget.showDetails) // Kiểm tra có hiển thị dòng tiêu đề hay không
          const SizedBox(
            height: 5,
          ),
        if (widget.showDetails)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.signupDetails + widget.title.toLowerCase(),
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).cardColor,
              ),
            ),
          ),
      ],
    );
  }
}
