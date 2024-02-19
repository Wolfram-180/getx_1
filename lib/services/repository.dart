import 'package:getx_example/models/reviews.dart';
import 'package:getx_example/services/provider.dart';

class ReviewRepository {
  StoreProvider storeProvider;
  ReviewRepository({required this.storeProvider});

  List<StoreReviews> readReviews() => storeProvider.readReviews();
  void writeReviews(List<StoreReviews> reviews) =>
      storeProvider.writeReview(reviews);
}
