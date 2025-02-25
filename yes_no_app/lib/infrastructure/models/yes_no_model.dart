

class YesNoModel {
  String answer;
  bool forced;
  String image;
  
  YesNoModel({this.answer, this.forced, this.image});

  factory YesNoModel.fromJson(Map<String, dynamic> json) {
    return YesNoModel(
      answer: json['answer'],
      forced: json['forced'],
      image: json['image']
    );
  }
}