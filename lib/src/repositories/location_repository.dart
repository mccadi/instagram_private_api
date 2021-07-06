import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/location/search_response.dart';

class LocationRepository extends InstaRepository {
  LocationRepository(InstaClient client) : super(client);

  Future<LocationSearchResponse> search(double latitude, double longitude,
          {String searchQuery, String rankToken}) async =>
      LocationSearchResponse.fromJson(await client.request.get('/api/v1/location_search/', query: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'rank_token': rankToken ?? client.state.generateRandomUuid(),
        if (searchQuery != null) 'search_query': searchQuery,
      }));
}
