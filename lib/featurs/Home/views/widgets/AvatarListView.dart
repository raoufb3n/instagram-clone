import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/ProfileAvatar.dart';

class AvatarListView extends StatelessWidget {
  const AvatarListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: SizedBox(
          height: 90,
          child: Row(
            children: [
              ProfileAvatar(isUser: true),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ProfileAvatar(isUser: false),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
