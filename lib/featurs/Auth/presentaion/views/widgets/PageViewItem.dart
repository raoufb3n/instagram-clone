import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/CustomTextField.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/CutomButton.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem(
      {super.key,
      required this.hintText,
      required this.titleText,
      this.visible,
      this.visibleText,
      required this.onPressed});
  String titleText;
  bool? visible;
  Function()? onPressed;
  String hintText;
  String? visibleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(gradient: ColorsStyles.gradientTwo),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Text(
                  titleText,
                  style: Styles.displayBold22.copyWith(
                      color: ColorsStyles.TypoColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                SizedBox(
                  child: visible!
                      ? Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: Text(
                                visibleText!,
                                style: Styles.titleRegular14.copyWith(
                                  color: ColorsStyles.TypoColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            )
                          ],
                        )
                      : SizedBox(
                          height: 16,
                        ),
                ),
                CustomTextField(
                  hintText: hintText,
                  obsecure: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                    labelText: 'Next', check: false, onPressed: onPressed),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Already have an account?',
                      style: Styles.titleMeduim13
                          .copyWith(color: ColorsStyles.blue, fontSize: 15),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}