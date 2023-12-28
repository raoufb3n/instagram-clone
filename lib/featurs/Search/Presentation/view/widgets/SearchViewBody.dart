import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Search/Presentation/view/widgets/CustomTextField.dart';
import 'package:instagram_clone/featurs/Search/Presentation/view/widgets/PostLayout.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          title:  SizedBox(
            height: 38,
            child: CustomTextFields(),
          ),
        ),
        SliverToBoxAdapter(
          child:  PostLayout(),
        )
      ],
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
