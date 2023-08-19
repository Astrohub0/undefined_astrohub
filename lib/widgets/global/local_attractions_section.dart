import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocalAttractionsSection extends StatelessWidget {

  const LocalAttractionsSection({
    super.key,
    required this.imageURLs,
  });
  final imageURLs;


  @override
  Widget build(BuildContext context) {
    // this is a widget that is inside a container which has a title followed by a row of images
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Local Attractions',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageURLs.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imageURLs[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
