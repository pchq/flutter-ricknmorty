abstract class IMapper<Model, ApiModel> {
  Model call(ApiModel apiModel);
}
