import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/fundraiser/story_charities_nullstate_response.dart';

class FundraiserRepository extends InstaRepository {
  FundraiserRepository(InstaClient client) : super(client);

  Future<FundraiserStoryCharitiesNullstateResponse>
      storyCharitiesNullstate() async =>
          FundraiserStoryCharitiesNullstateResponse.fromJson(await client
              .request
              .get('/api/v1/fundraiser/story_charities_nullstate/'));
}
