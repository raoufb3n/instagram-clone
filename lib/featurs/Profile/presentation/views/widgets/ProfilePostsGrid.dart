


import 'package:flutter/material.dart';

class ProfilePostsGrid extends StatelessWidget {
  const ProfilePostsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
   
        child: GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 1.5,
          mainAxisSpacing: 1.5,
          crossAxisCount: 3,
          children: [
            AspectRatio(
                aspectRatio: 2 / 2,
                child: Image.asset(
                  'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                  fit: BoxFit.fill,
                )),
            AspectRatio(
                aspectRatio: 2 / 2,
                child: Image.asset(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                    fit: BoxFit.fill)),
            AspectRatio(
                aspectRatio: 2 / 2,
                child: Image.asset(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                    fit: BoxFit.fill)),
          ],
        ),
     
    );
  }
}