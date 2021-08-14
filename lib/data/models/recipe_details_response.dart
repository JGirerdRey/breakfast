class RecipeDetailsResponse {
  bool? vegetarian;
  bool? vegan;
  bool? glutenFree;
  bool? dairyFree;
  bool? veryHealthy;
  bool? cheap;
  bool? veryPopular;
  bool? sustainable;
  int? weightWatcherSmartPoints;
  String? gaps;
  bool? lowFodmap;
  int? aggregateLikes;
  double? spoonacularScore;
  double? healthScore;
  String? creditsText;
  String? license;
  String? sourceName;
  double? pricePerServing;
  int? id;
  String? title;
  int? readyInMinutes;
  int? servings;
  String? sourceUrl;
  String? image;
  String? imageType;
  Nutrition? nutrition;
  String? summary;
  List<String>? dishTypes;
  List<String>? diets;
  String? instructions;
  List<AnalyzedInstructions>? analyzedInstructions;
  String? spoonacularSourceUrl;

  RecipeDetailsResponse({
      this.vegetarian, 
      this.vegan, 
      this.glutenFree, 
      this.dairyFree, 
      this.veryHealthy, 
      this.cheap, 
      this.veryPopular, 
      this.sustainable, 
      this.weightWatcherSmartPoints, 
      this.gaps, 
      this.lowFodmap, 
      this.aggregateLikes, 
      this.spoonacularScore, 
      this.healthScore, 
      this.creditsText, 
      this.license, 
      this.sourceName, 
      this.pricePerServing, 
      this.id, 
      this.title, 
      this.readyInMinutes, 
      this.servings, 
      this.sourceUrl, 
      this.image, 
      this.imageType, 
      this.nutrition, 
      this.summary, 
      this.dishTypes, 
      this.diets, 
      this.instructions, 
      this.analyzedInstructions, 
      this.spoonacularSourceUrl});

  RecipeDetailsResponse.fromJson(dynamic json) {
    vegetarian = json['vegetarian'];
    vegan = json['vegan'];
    glutenFree = json['glutenFree'];
    dairyFree = json['dairyFree'];
    veryHealthy = json['veryHealthy'];
    cheap = json['cheap'];
    veryPopular = json['veryPopular'];
    sustainable = json['sustainable'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    gaps = json['gaps'];
    lowFodmap = json['lowFodmap'];
    aggregateLikes = json['aggregateLikes'];
    spoonacularScore = json['spoonacularScore'];
    healthScore = json['healthScore'];
    creditsText = json['creditsText'];
    license = json['license'];
    sourceName = json['sourceName'];
    pricePerServing = json['pricePerServing'];
    id = json['id'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
    image = json['image'];
    imageType = json['imageType'];
    nutrition = json['nutrition'] != null ? Nutrition.fromJson(json['nutrition']) : null;
    summary = json['summary'];
    dishTypes = json['dishTypes'] != null ? json['dishTypes'].cast<String>() : [];
    diets = json['diets'] != null ? json['diets'].cast<String>() : [];
    instructions = json['instructions'];
    if (json['analyzedInstructions'] != null) {
      analyzedInstructions = [];
      json['analyzedInstructions'].forEach((v) {
        analyzedInstructions?.add(AnalyzedInstructions.fromJson(v));
      });
    }
    spoonacularSourceUrl = json['spoonacularSourceUrl'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['vegetarian'] = vegetarian;
    map['vegan'] = vegan;
    map['glutenFree'] = glutenFree;
    map['dairyFree'] = dairyFree;
    map['veryHealthy'] = veryHealthy;
    map['cheap'] = cheap;
    map['veryPopular'] = veryPopular;
    map['sustainable'] = sustainable;
    map['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    map['gaps'] = gaps;
    map['lowFodmap'] = lowFodmap;
    map['aggregateLikes'] = aggregateLikes;
    map['spoonacularScore'] = spoonacularScore;
    map['healthScore'] = healthScore;
    map['creditsText'] = creditsText;
    map['license'] = license;
    map['sourceName'] = sourceName;
    map['pricePerServing'] = pricePerServing;
    map['id'] = id;
    map['title'] = title;
    map['readyInMinutes'] = readyInMinutes;
    map['servings'] = servings;
    map['sourceUrl'] = sourceUrl;
    map['image'] = image;
    map['imageType'] = imageType;
    if (nutrition != null) {
      map['nutrition'] = nutrition?.toJson();
    }
    map['summary'] = summary;
    map['dishTypes'] = dishTypes;
    map['diets'] = diets;
    map['instructions'] = instructions;
    if (analyzedInstructions != null) {
      map['analyzedInstructions'] = analyzedInstructions?.map((v) => v.toJson()).toList();
    }
    map['spoonacularSourceUrl'] = spoonacularSourceUrl;
    return map;
  }

}

class AnalyzedInstructions {
  String? name;
  List<Steps>? steps;

  AnalyzedInstructions({
      this.name, 
      this.steps});

  AnalyzedInstructions.fromJson(dynamic json) {
    name = json['name'];
    if (json['steps'] != null) {
      steps = [];
      json['steps'].forEach((v) {
        steps?.add(Steps.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    if (steps != null) {
      map['steps'] = steps?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Steps {
  int? number;
  String? step;
  List<Ingredients>? ingredients;
  List<Equipment>? equipment;
  Length? length;

  Steps({
      this.number, 
      this.step, 
      this.ingredients, 
      this.equipment, 
      this.length});

  Steps.fromJson(dynamic json) {
    number = json['number'];
    step = json['step'];
    if (json['ingredients'] != null) {
      ingredients = [];
      json['ingredients'].forEach((v) {
        ingredients?.add(Ingredients.fromJson(v));
      });
    }
    if (json['equipment'] != null) {
      equipment = [];
      json['equipment'].forEach((v) {
        equipment?.add(Equipment.fromJson(v));
      });
    }
    length = json['length'] != null ? Length.fromJson(json['length']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['number'] = number;
    map['step'] = step;
    if (ingredients != null) {
      map['ingredients'] = ingredients?.map((v) => v.toJson()).toList();
    }
    if (equipment != null) {
      map['equipment'] = equipment?.map((v) => v.toJson()).toList();
    }
    if (length != null) {
      map['length'] = length?.toJson();
    }
    return map;
  }

}

class Length {
  int? number;
  String? unit;

  Length({
      this.number, 
      this.unit});

  Length.fromJson(dynamic json) {
    number = json['number'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['number'] = number;
    map['unit'] = unit;
    return map;
  }

}

class Equipment {
  int? id;
  String? name;
  String? localizedName;
  String? image;

  Equipment({
      this.id, 
      this.name, 
      this.localizedName, 
      this.image});

  Equipment.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    localizedName = json['localizedName'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['localizedName'] = localizedName;
    map['image'] = image;
    return map;
  }

}

class Ingredients {
  int? id;
  String? name;
  String? localizedName;
  String? image;

  Ingredients({
      this.id, 
      this.name, 
      this.localizedName, 
      this.image});

  Ingredients.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    localizedName = json['localizedName'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['localizedName'] = localizedName;
    map['image'] = image;
    return map;
  }

}

class Nutrition {
  List<Nutrients>? nutrients;
  List<Properties>? properties;
  List<Flavonoids>? flavonoids;
  List<Ingredients>? ingredients;
  CaloricBreakdown? caloricBreakdown;
  WeightPerServing? weightPerServing;

  Nutrition({
      this.nutrients, 
      this.properties, 
      this.flavonoids, 
      this.ingredients, 
      this.caloricBreakdown, 
      this.weightPerServing});

  Nutrition.fromJson(dynamic json) {
    if (json['nutrients'] != null) {
      nutrients = [];
      json['nutrients'].forEach((v) {
        nutrients?.add(Nutrients.fromJson(v));
      });
    }
    if (json['properties'] != null) {
      properties = [];
      json['properties'].forEach((v) {
        properties?.add(Properties.fromJson(v));
      });
    }
    if (json['flavonoids'] != null) {
      flavonoids = [];
      json['flavonoids'].forEach((v) {
        flavonoids?.add(Flavonoids.fromJson(v));
      });
    }
    if (json['ingredients'] != null) {
      ingredients = [];
      json['ingredients'].forEach((v) {
        ingredients?.add(Ingredients.fromJson(v));
      });
    }
    caloricBreakdown = json['caloricBreakdown'] != null ? CaloricBreakdown.fromJson(json['caloricBreakdown']) : null;
    weightPerServing = json['weightPerServing'] != null ? WeightPerServing.fromJson(json['weightPerServing']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (nutrients != null) {
      map['nutrients'] = nutrients?.map((v) => v.toJson()).toList();
    }
    if (properties != null) {
      map['properties'] = properties?.map((v) => v.toJson()).toList();
    }
    if (flavonoids != null) {
      map['flavonoids'] = flavonoids?.map((v) => v.toJson()).toList();
    }
    if (ingredients != null) {
      map['ingredients'] = ingredients?.map((v) => v.toJson()).toList();
    }
    if (caloricBreakdown != null) {
      map['caloricBreakdown'] = caloricBreakdown?.toJson();
    }
    if (weightPerServing != null) {
      map['weightPerServing'] = weightPerServing?.toJson();
    }
    return map;
  }

}

class WeightPerServing {
  int? amount;
  String? unit;

  WeightPerServing({
      this.amount, 
      this.unit});

  WeightPerServing.fromJson(dynamic json) {
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['amount'] = amount;
    map['unit'] = unit;
    return map;
  }

}

class CaloricBreakdown {
  double? percentProtein;
  double? percentFat;
  double? percentCarbs;

  CaloricBreakdown({
      this.percentProtein, 
      this.percentFat, 
      this.percentCarbs});

  CaloricBreakdown.fromJson(dynamic json) {
    percentProtein = json['percentProtein'];
    percentFat = json['percentFat'];
    percentCarbs = json['percentCarbs'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['percentProtein'] = percentProtein;
    map['percentFat'] = percentFat;
    map['percentCarbs'] = percentCarbs;
    return map;
  }

}

class Nutrients {
  String? title;
  String? name;
  double? amount;
  String? unit;

  Nutrients({
      this.title, 
      this.name, 
      this.amount, 
      this.unit});

  Nutrients.fromJson(dynamic json) {
    title = json['title'];
    name = json['name'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['title'] = title;
    map['name'] = name;
    map['amount'] = amount;
    map['unit'] = unit;
    return map;
  }

}

class Flavonoids {
  String? name;
  String? title;
  double? amount;
  String? unit;

  Flavonoids({
      this.name, 
      this.title, 
      this.amount, 
      this.unit});

  Flavonoids.fromJson(dynamic json) {
    name = json['name'];
    title = json['title'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['title'] = title;
    map['amount'] = amount;
    map['unit'] = unit;
    return map;
  }

}

class Properties {
  String? name;
  String? title;
  double? amount;
  String? unit;

  Properties({
      this.name, 
      this.title, 
      this.amount, 
      this.unit});

  Properties.fromJson(dynamic json) {
    name = json['name'];
    title = json['title'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['title'] = title;
    map['amount'] = amount;
    map['unit'] = unit;
    return map;
  }

}
