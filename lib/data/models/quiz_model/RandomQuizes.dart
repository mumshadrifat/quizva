class RandomQuizes {
  bool? status;
  String? message;
  Data? data;

  RandomQuizes({this.status, this.message, this.data});

  RandomQuizes.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}


class Data {
  int? id;
  String? title;
  String? slug;
  Null? shortDescription;
  String? longDescription;
  int? status;
  int? publicAccessibility;
  int? guestAccessibility;
  int? userAccessibility;
  int? memberAccessibility;
  int? privateAccessibility;
  int? totalScore;
  int? totalTime;
  int? programId;
  int? subjectId;
  int? topicId;
  int? totalVisitor;
  int? avgScore;
  Null? topScorer;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.title,
        this.slug,
        this.shortDescription,
        this.longDescription,
        this.status,
        this.publicAccessibility,
        this.guestAccessibility,
        this.userAccessibility,
        this.memberAccessibility,
        this.privateAccessibility,
        this.totalScore,
        this.totalTime,
        this.programId,
        this.subjectId,
        this.topicId,
        this.totalVisitor,
        this.avgScore,
        this.topScorer,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    shortDescription = json['short_description'];
    longDescription = json['long_description'];
    status = json['status'];
    publicAccessibility = json['public_accessibility'];
    guestAccessibility = json['guest_accessibility'];
    userAccessibility = json['user_accessibility'];
    memberAccessibility = json['member_accessibility'];
    privateAccessibility = json['private_accessibility'];
    totalScore = json['total_score'];
    totalTime = json['total_time'];
    programId = json['program_id'];
    subjectId = json['subject_id'];
    topicId = json['topic_id'];
    totalVisitor = json['total_visitor'];
    avgScore = json['avg_score'];
    topScorer = json['top_scorer'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['short_description'] = this.shortDescription;
    data['long_description'] = this.longDescription;
    data['status'] = this.status;
    data['public_accessibility'] = this.publicAccessibility;
    data['guest_accessibility'] = this.guestAccessibility;
    data['user_accessibility'] = this.userAccessibility;
    data['member_accessibility'] = this.memberAccessibility;
    data['private_accessibility'] = this.privateAccessibility;
    data['total_score'] = this.totalScore;
    data['total_time'] = this.totalTime;
    data['program_id'] = this.programId;
    data['subject_id'] = this.subjectId;
    data['topic_id'] = this.topicId;
    data['total_visitor'] = this.totalVisitor;
    data['avg_score'] = this.avgScore;
    data['top_scorer'] = this.topScorer;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}