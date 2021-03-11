class User {
  int cin;
  int tel;
  String nomEtPrenom;
  String adresse;

  User({this.tel, this.adresse, this.nomEtPrenom, this.cin});
}

List<User> users = [
  User(
      cin: 09775750,
      tel: 12345678,
      adresse: "rue kheireddine bacha korba",
      nomEtPrenom: "othman gueddana"),
];
