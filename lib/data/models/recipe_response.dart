class RecipeResponse {
  List<Recipes>? recipes;

  RecipeResponse({
      this.recipes});

  RecipeResponse.fromJson(dynamic json) {
    if (json['recipes'] != null) {
      recipes = [];
      json['recipes'].forEach((v) {
        recipes?.add(Recipes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (recipes != null) {
      map['recipes'] = recipes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Recipes {
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
  List<ExtendedIngredients>? extendedIngredients;
  int? id;
  String? title;
  int? readyInMinutes;
  int? servings;
  String? sourceUrl;
  String? image;
  String? imageType;
  String? summary;
  List<String>? cuisines;
  List<String>? dishTypes;
  List<String>? diets;
  String? instructions;
  List<AnalyzedInstructions>? analyzedInstructions;
  String? spoonacularSourceUrl;

  Recipes({
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
      this.extendedIngredients,
      this.id,
      this.title,
      this.readyInMinutes,
      this.servings,
      this.sourceUrl,
      this.image,
      this.imageType,
      this.summary,
      this.cuisines,
      this.dishTypes,
      this.diets,
      this.instructions,
      this.analyzedInstructions,
      this.spoonacularSourceUrl});

  Recipes.fromJson(dynamic json) {
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
    if (json['extendedIngredients'] != null) {
      extendedIngredients = [];
      json['extendedIngredients'].forEach((v) {
        extendedIngredients?.add(ExtendedIngredients.fromJson(v));
      });
    }
    id = json['id'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
    image = json['image'];
    imageType = json['imageType'];
    summary = json['summary'];
    cuisines = json['cuisines'] != null ? json['cuisines'].cast<String>() : [];
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
    if (extendedIngredients != null) {
      map['extendedIngredients'] = extendedIngredients?.map((v) => v.toJson()).toList();
    }
    map['id'] = id;
    map['title'] = title;
    map['readyInMinutes'] = readyInMinutes;
    map['servings'] = servings;
    map['sourceUrl'] = sourceUrl;
    map['image'] = image;
    map['imageType'] = imageType;
    map['summary'] = summary;
    map['cuisines'] = cuisines;
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

  Steps({
      this.number,
      this.step,
      this.ingredients});

  Steps.fromJson(dynamic json) {
    number = json['number'];
    step = json['step'];
    if (json['ingredients'] != null) {
      ingredients = [];
      json['ingredients'].forEach((v) {
        ingredients?.add(Ingredients.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['number'] = number;
    map['step'] = step;
    if (ingredients != null) {
      map['ingredients'] = ingredients?.map((v) => v.toJson()).toList();
    }
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

class ExtendedIngredients {
  int? id;
  String? aisle;
  String? image;
  String? consistency;
  String? name;
  String? nameClean;
  String? original;
  String? originalString;
  String? originalName;
  double? amount;
  String? unit;
  Measures? measures;

  ExtendedIngredients({
      this.id,
      this.aisle,
      this.image,
      this.consistency,
      this.name,
      this.nameClean,
      this.original,
      this.originalString,
      this.originalName,
      this.amount,
      this.unit,
      this.measures});

  ExtendedIngredients.fromJson(dynamic json) {
    id = json['id'];
    aisle = json['aisle'];
    image = json['image'];
    consistency = json['consistency'];
    name = json['name'];
    nameClean = json['nameClean'];
    original = json['original'];
    originalString = json['originalString'];
    originalName = json['originalName'];
    amount = json['amount'];
    unit = json['unit'];
    measures = json['measures'] != null ? Measures.fromJson(json['measures']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['aisle'] = aisle;
    map['image'] = image;
    map['consistency'] = consistency;
    map['name'] = name;
    map['nameClean'] = nameClean;
    map['original'] = original;
    map['originalString'] = originalString;
    map['originalName'] = originalName;
    map['amount'] = amount;
    map['unit'] = unit;
    if (measures != null) {
      map['measures'] = measures?.toJson();
    }
    return map;
  }

}

class Measures {
  Us? us;
  Metric? metric;

  Measures({
      this.us,
      this.metric});

  Measures.fromJson(dynamic json) {
    us = json['us'] != null ? Us.fromJson(json['us']) : null;
    metric = json['metric'] != null ? Metric.fromJson(json['metric']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (us != null) {
      map['us'] = us?.toJson();
    }
    if (metric != null) {
      map['metric'] = metric?.toJson();
    }
    return map;
  }

}

class Metric {
  double? amount;
  String? unitShort;
  String? unitLong;

  Metric({
      this.amount,
      this.unitShort,
      this.unitLong});

  Metric.fromJson(dynamic json) {
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['amount'] = amount;
    map['unitShort'] = unitShort;
    map['unitLong'] = unitLong;
    return map;
  }

}

class Us {
  double? amount;
  String? unitShort;
  String? unitLong;

  Us({
      this.amount,
      this.unitShort,
      this.unitLong});

  Us.fromJson(dynamic json) {
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['amount'] = amount;
    map['unitShort'] = unitShort;
    map['unitLong'] = unitLong;
    return map;
  }

}