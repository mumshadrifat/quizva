import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.cProgrammingText,
    this.yesterdayText,
    this.playsText,
    this.publicText,
    this.cText,
    this.qsText,
    this.id,
  }) {
    cProgrammingText = cProgrammingText ?? Rx("C Programming");
    yesterdayText = yesterdayText ?? Rx("Yesterday");
    playsText = playsText ?? Rx("2004 Plays");
    publicText = publicText ?? Rx("Public");
    cText = cText ?? Rx("C");
    qsText = qsText ?? Rx("10 qs");
    id = id ?? Rx("");
  }

  Rx<String>? cProgrammingText;

  Rx<String>? yesterdayText;

  Rx<String>? playsText;

  Rx<String>? publicText;

  Rx<String>? cText;

  Rx<String>? qsText;

  Rx<String>? id;
}
