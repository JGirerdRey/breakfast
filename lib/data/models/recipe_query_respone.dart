class RecipeQueryRespone {
  List<Results>? results;
  int? offset;
  int? number;
  int? totalResults;

  RecipeQueryRespone({
      this.results, 
      this.offset, 
      this.number, 
      this.totalResults});

  RecipeQueryRespone.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    offset = json['offset'];
    number = json['number'];
    totalResults = json['totalResults'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['offset'] = offset;
    map['number'] = number;
    map['totalResults'] = totalResults;
    return map;
  }

}

class Results {
  int? id;
  String? title;
  String? image;
  String? imageType;

  Results({
      this.id, 
      this.title, 
      this.image, 
      this.imageType});

  Results.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imageType = json['imageType'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['image'] = image;
    map['imageType'] = imageType;
    return map;
  }

}