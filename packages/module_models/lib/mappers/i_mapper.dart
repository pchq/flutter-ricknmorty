class IMapper<Model, ApiModel> {
  /// should be overrided
  Model? call(ApiModel apiModel) {
    return null;
  }

  int getIdByUrl(String url) => int.parse(RegExp(r"^.*\/(\d+)$").firstMatch(url)?.group(1) ?? '0');
}
