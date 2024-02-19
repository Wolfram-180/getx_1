import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_example/constants/keys.dart';
import 'package:getx_example/models/reviews.dart';
import 'package:getx_example/services/storage_service.dart';

class StoreProvider {
  final StorageService _storageService = Get.find<StorageService>();

  List<StoreReviews> readReviews() {
    var reviews = <StoreReviews>[];
    jsonDecode(_storageService.read(reviewsKey).toString())
        .forEach((e) => reviews.add(StoreReviews.fromJson(e)));
    return reviews;
  }

  void writeReview(List<StoreReviews> reviews) {
    _storageService.write(reviewsKey, jsonEncode(reviews));
  }
}
