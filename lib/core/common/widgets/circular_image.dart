import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tickr/core/common/widgets/shimmer.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 80,
    this.height = 80,
    this.padding = EdgeInsets.zero,
    this.border = 80,
    this.applyImageRadius = true,
    this.borderRadius = 80,
    this.applyBG = false,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double border;
  final double width, height;
  final bool applyImageRadius;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool applyBG;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
      ),
      child: ClipRRect(
        borderRadius: applyImageRadius
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.zero,
        child: Center(
          child: isNetworkImage
              ? CachedNetworkImage(
                  imageUrl: image,
                  fit: fit,
                  color: overlayColor,
                  width: width,
                  height: height,
                  progressIndicatorBuilder: (
                    context,
                    url,
                    downloadProgress,
                  ) =>
                      TShimmerEffect(
                    width: width,
                    height: height,
                    radius: borderRadius,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              : Image(
                  fit: fit,
                  image: isNetworkImage
                      ? NetworkImage(image)
                      : AssetImage(image) as ImageProvider,
                  color: overlayColor,
                ),
        ),
      ),
    );
  }
}
