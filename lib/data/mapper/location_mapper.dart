import 'package:ricknmorty/data/api_model/api_location.dart';
import 'package:ricknmorty/data/mapper/i_mapper.dart';
import 'package:ricknmorty/domain/model/location.dart';

class LocationMapper implements IMapper<Location, ApiLocation> {
  @override
  Location call(ApiLocation apiLocation) {
    return Location(
      name: apiLocation.name,
      url: apiLocation.url,
    );
  }
}
