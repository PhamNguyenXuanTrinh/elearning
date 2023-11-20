import 'package:elearning/src/presentation/views/course_detail_screen/course_details_widget/course_detail_widget.dart';
import 'package:elearning/src/presentation/widgets/btn_primary_widget.dart';
import 'package:flutter/material.dart';

class NavigationDetail extends StatefulWidget {
  const NavigationDetail({Key? key}) : super(key: key);

  @override
  _NavigationDetailState createState() => _NavigationDetailState();
}

class _NavigationDetailState extends State<NavigationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CourseDetailScreen(),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .hoverColor, // Use hoverColor from the theme
                  padding: const EdgeInsets.fromLTRB(28, 14, 28, 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: PrimaryBtn(text: "Pay now"),
            ),
          ),
        ],
      ),
    );
  }
}
