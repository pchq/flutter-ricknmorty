import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ricknmorty/presentation/widgets/circle_loader.dart';

class CachedImage extends StatelessWidget {
  final String url;
  const CachedImage(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const CircleLoader(),
      errorWidget: (context, url, error) => const Icon(Icons.image_not_supported_outlined),
    );
  }
}
