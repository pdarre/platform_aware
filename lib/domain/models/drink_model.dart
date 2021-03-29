class Drink {
  List<Drinks> drinks;

  Drink({this.drinks});

  Drink.fromJson(Map<String, dynamic> json) {
    if (json['drinks'] != null) {
      drinks = [];
      json['drinks'].forEach((v) {
        drinks.add(Drinks.fromJson(v));
      });
    }
  }
}

class Drinks {
  String idDrink;
  String strDrink;
  String strDrinkAlternate;
  String strTags;
  String strVideo;
  String strCategory;
  String strIBA;
  String strAlcoholic;
  String strGlass;
  String strInstructions;
  String strInstructionsES;
  String strInstructionsDE;
  String strInstructionsFR;
  String strInstructionsIT;
  String strInstructionsZHHANS;
  String strInstructionsZHHANT;
  String strDrinkThumb;
  String strImageSource;
  String strImageAttribution;
  String strCreativeCommonsConfirmed;
  String dateModified;
  List<String> ingredients = [];
  List<String> measures = [];

  Drinks({
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIBA,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsES,
    this.strInstructionsDE,
    this.strInstructionsFR,
    this.strInstructionsIT,
    this.strInstructionsZHHANS,
    this.strInstructionsZHHANT,
    this.strDrinkThumb,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
    this.ingredients,
  });

  Drinks.fromJson(Map<String, dynamic> json) {
    idDrink = json['idDrink'];
    strDrink = json['strDrink'];
    strDrinkAlternate = json['strDrinkAlternate'] ?? 'No data available';
    strTags = json['strTags'];
    strVideo = json['strVideo'];
    strCategory = json['strCategory'];
    strIBA = json['strIBA'];
    strAlcoholic = json['strAlcoholic'];
    strGlass = json['strGlass'];
    strInstructions = json['strInstructions'];
    strInstructionsES = json['strInstructionsES'];
    strInstructionsDE = json['strInstructionsDE'];
    strInstructionsFR = json['strInstructionsFR'];
    strInstructionsIT = json['strInstructionsIT'];
    strInstructionsZHHANS = json['strInstructionsZH-HANS'];
    strInstructionsZHHANT = json['strInstructionsZH-HANT'];
    strDrinkThumb = json['strDrinkThumb'];
    strImageSource = json['strImageSource'];
    strImageAttribution = json['strImageAttribution'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];

    for (var i = 1; i <= 15; i++) {
      if (json['strIngredient' + i.toString()] != null) {
        ingredients.add(json['strIngredient' + i.toString()]);
      }
      if (json['strMeasure' + i.toString()] != null) {
        measures.add(json['strMeasure' + i.toString()]);
      }
    }
  }
}
