import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
             width: 300,
             height: MediaQuery.of(context).size.height /3,
             
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  SearchImageWidget(),
                  SearchImageWidget(),
                  SearchImageWidget(),
                  SearchImageWidget(),
                ],
              ),
            )
          ],
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
    return SizedBox(
      height: 40,
      child: AspectRatio(
        aspectRatio: 2 / 2,
        child: Image.asset(
          'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
