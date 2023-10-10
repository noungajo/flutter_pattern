import 'package:andal/static/defaulf_image_path.dart';
import 'package:flutter/cupertino.dart';

/*
extension AndaalNetworkImage on NetworkImage {
  try {
    return NetworkImage(
                              "${Client.url}/${widget.sourceImage}");
  } catch (e) {
   return Container();
  }
}*/
Widget andaalNetworkImage(String image, double width, double height) {
  try {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image)),
      ),
    );
  } catch (e) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
          livrePath,
        )),
      ),
    );
  }
}
