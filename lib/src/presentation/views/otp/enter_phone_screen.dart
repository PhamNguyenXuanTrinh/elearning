import 'package:elearning/src/presentation/widgets/btn_primary_widget.dart';
import 'package:elearning/src/utils/constants/imgs.dart';
import 'package:elearning/src/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class EnterOtpView extends StatelessWidget {
  const EnterOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 209, 214, 218),
        toolbarHeight: 220,
        title: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.continuePhone,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(AppImages.imgPhone),
          ],
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const Text(AppStrings.enterYourPhone),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: AppStrings.enterYourPhone,
                      ),
                    ),
                  ),
                  const PrimaryBtn(text: AppStrings.btnCtn, width: 160),
                ],
              ),
            ],
          )),
    );
  }
}