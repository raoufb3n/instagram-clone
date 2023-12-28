import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/featurs/Search/Presentation/view/widgets/SearchViewBody.dart';

class PostLayout extends StatelessWidget {
  const PostLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: context.height / 3.3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: context.width / 1.5,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                  crossAxisSpacing: 1.5,
                  mainAxisSpacing: 1.5,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children:const [
                    SearchImageWidget(),
                    SearchImageWidget(),
                    SearchImageWidget(),
                    SearchImageWidget(),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height:context.height / 3.1,
                  child: Image.asset(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.5),
          child: SizedBox(
            height: context.height / 3.2,
            width: context.width,
            child: GridView.count(
              physics:const NeverScrollableScrollPhysics(),
              padding:const EdgeInsets.only(right: 1.5, bottom: 1.5),
              crossAxisSpacing: 1.5,
              mainAxisSpacing: 1.5,
              shrinkWrap: true,
              crossAxisCount: 3,
              children:const [
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: context.height / 3.3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: context.height / 3.1,
                  child: Image.asset(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: context.width / 1.5,
                child: GridView.count(
                  physics:const NeverScrollableScrollPhysics(),
                  padding:const EdgeInsets.only(left: 1.5),
                  crossAxisSpacing: 1.5,
                  mainAxisSpacing: 1.5,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children:const [
                    SearchImageWidget(),
                    SearchImageWidget(),
                    SearchImageWidget(),
                    SearchImageWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
                Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.5),
          child: SizedBox(
            height: context.height / 3.2,
            width: context.width,
            child: GridView.count(
              physics:const NeverScrollableScrollPhysics(),
              padding:const EdgeInsets.only(right: 1.5, bottom: 1.5),
              crossAxisSpacing: 1.5,
              mainAxisSpacing: 1.5,
              shrinkWrap: true,
              crossAxisCount: 3,
              children:const [
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
                SearchImageWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
