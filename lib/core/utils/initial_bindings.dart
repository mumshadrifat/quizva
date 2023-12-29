import 'package:mumshad_s_application1/core/app_export.dart';
import 'package:mumshad_s_application1/data/apiClient/ApiClient.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient(appBaseUrl: 'https://quizva.com/'));
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
