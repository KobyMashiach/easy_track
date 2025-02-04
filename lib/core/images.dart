import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_track/widgets/general/circular_progress_image.dart';
import 'package:flutter/material.dart';

cacheImage(String imageUrl) => CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(
        child: CircularProgressImage(),
      ),
      errorWidget: (context, url, error) => const Center(
        child: Icon(
          Icons.broken_image,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
