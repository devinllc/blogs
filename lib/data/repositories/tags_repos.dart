import 'package:velocity_x/velocity_x.dart';

import '/data/datasources/remote/api_client.dart';
import '/data/datasources/remote/api_endpoint_urls.dart';

class TagsRepos extends ApiClient {
  TagsRepos();
  getAllTags() async {
    try {
      final response = await getResponse(path: ApiEndpointUrls.tags);
      if (response.statusCode == 200) {
        Vx.log(response.data);
      } else {}
    } on Exception catch (e) {
      Vx.log(e);
    }
  }
}
