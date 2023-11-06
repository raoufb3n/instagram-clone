import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Search/Presentation/view/widgets/PostLayout.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PostLayout(), PostLayout()],
      ),
    );
  }
}



class SearchImageWidget extends StatelessWidget {
  const SearchImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 4,
      child: Image.asset(
        'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
