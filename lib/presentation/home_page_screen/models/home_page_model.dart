import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';
import 'viewhierarchy1_item_model.dart';

/// This class defines the variables used in the [home_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageModel {
  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        phpText: "PHP".obs,
        newText: "NEW".obs,
        updatedText: "Updated on Aug 22, 2023".obs,
        topicText: "34 Topic".obs,
        questionsText: "96 Questions".obs,
        phpImage: ImageConstant.imgGroup698.obs),
    ViewhierarchyItemModel(
        phpText: "Javascript".obs,
        newText: "NEW".obs,
        updatedText: "Updated on Aug 22, 2023".obs,
        topicText: "34 Topic".obs,
        questionsText: "96 Questions".obs,
        phpImage: ImageConstant.imgUser.obs)
  ]);

  Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([
    Viewhierarchy1ItemModel(
        cProgrammingText: "C Programming".obs,
        yesterdayText: "Yesterday".obs,
        playsText: "2004 Plays".obs,
        publicText: "Public".obs,
        cText: "C".obs,
        qsText: "10 qs".obs),
    Viewhierarchy1ItemModel(
        cProgrammingText: "PHP".obs,
        yesterdayText: "1 week ago".obs,
        playsText: "30089 Plays".obs,
        publicText: "Public".obs,
        cText: "10 qs".obs),
    Viewhierarchy1ItemModel(
        cProgrammingText: "JavaScript".obs,
        yesterdayText: "Yesterday".obs,
        playsText: "2004 Plays".obs,
        publicText: "Public".obs,
        cText: "10 qs".obs)
  ]);
}
