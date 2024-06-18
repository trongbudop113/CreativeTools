import 'package:creative_tools/base/base_model.dart';
import 'package:creative_tools/src/image_resource.dart';

class BannerModel extends BaseModel{
  BannerModel(){
    onStart();
  }

  List<String> listBanner = [
    ImageResource.banner,
    ImageResource.banner,
    ImageResource.banner,
    ImageResource.banner,
  ];

  void onPageChange(int index){

  }

  @override
  void onFinish() {
    // TODO: implement onFinish
  }

  @override
  void onStart() {
    // TODO: implement onStart
  }
}