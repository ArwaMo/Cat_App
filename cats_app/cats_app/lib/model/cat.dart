class Cat {
  String? length;
  String? origin;
  String? imageLink;
  int? familyFriendly;
  int? shedding;
  int? generalHealth;
  int? playfulness;
  int? childrenFriendly;
  int? grooming;
  int? intelligence;
  int? otherPetsFriendly;
  int? minWeight;
  int? maxWeight;
  int? minLifeExpectancy;
  int? maxLifeExpectancy;
  String? name;

  Cat({
    this.length,
    this.origin,
    this.imageLink,
    this.familyFriendly,
    this.shedding,
    this.generalHealth,
    this.playfulness,
    this.childrenFriendly,
    this.grooming,
    this.intelligence,
    this.otherPetsFriendly,
    this.minWeight,
    this.maxWeight,
    this.minLifeExpectancy,
    this.maxLifeExpectancy,
    this.name,
  });

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        length: json["length"],
        origin: json["origin"],
        imageLink: json["image_link"],
        familyFriendly: json["family_friendly"],
        shedding: json["shedding"],
        generalHealth: json["general_health"],
        playfulness: json["playfulness"],
        childrenFriendly: json["children_friendly"],
        grooming: json["grooming"],
        intelligence: json["intelligence"],
        otherPetsFriendly: json["other_pets_friendly"],
        minWeight: json["min_weight"],
        maxWeight: json["max_weight"],
        minLifeExpectancy: json["min_life_expectancy"],
        maxLifeExpectancy: json["max_life_expectancy"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "origin": origin,
        "image_link": imageLink,
        "family_friendly": familyFriendly,
        "shedding": shedding,
        "general_health": generalHealth,
        "playfulness": playfulness,
        "children_friendly": childrenFriendly,
        "grooming": grooming,
        "intelligence": intelligence,
        "other_pets_friendly": otherPetsFriendly,
        "min_weight": minWeight,
        "max_weight": maxWeight,
        "min_life_expectancy": minLifeExpectancy,
        "max_life_expectancy": maxLifeExpectancy,
        "name": name,
      };
}
