import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.phpText,
    this.newText,
    this.updatedText,
    this.topicText,
    this.questionsText,
    this.phpImage,
    this.id,
  }) {
    phpText = phpText ?? Rx("PHP");
    newText = newText ?? Rx("NEW");
    updatedText = updatedText ?? Rx("Updated on Aug 22, 2023");
    topicText = topicText ?? Rx("34 Topic");
    questionsText = questionsText ?? Rx("96 Questions");
    phpImage = phpImage ?? Rx(ImageConstant.imgGroup698);
    id = id ?? Rx("");
  }

  Rx<String>? phpText;

  Rx<String>? newText;

  Rx<String>? updatedText;

  Rx<String>? topicText;

  Rx<String>? questionsText;

  Rx<String>? phpImage;

  Rx<String>? id;
}
