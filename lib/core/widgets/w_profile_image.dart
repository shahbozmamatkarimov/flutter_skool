import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WProfileImage extends StatelessWidget {
  final double size;

  const WProfileImage({
    Key? key,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: CachedNetworkImage(
        imageUrl:
            "https://www.gravatar.uz/avatar/205e460b479e2e5b48aec07710c08d50",
        placeholder: (context, url) => const CupertinoActivityIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
