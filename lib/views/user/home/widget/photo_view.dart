import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../../widgets/appbar.dart';

class PhotoViewIdImage extends StatelessWidget {
  PhotoViewIdImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: KAppBar(title: ''), body: Container(child: PhotoView(imageProvider: NetworkImage(image))));
  }
}
