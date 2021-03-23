class Contract {
  int contrat;
  String nomEtPrenom;
  String adresse;

  Contract({this.contrat, this.adresse, this.nomEtPrenom});
}

List<Contract> contracts = [
  Contract(
      contrat: 12345678,
      adresse: "rue kheireddine bacha korba,Nabeul",
      nomEtPrenom: "othman gueddana"),
  Contract(
      contrat: 12345678,
      adresse: "24 rue Gafsa manzeh 5,Ariana",
      nomEtPrenom: "Mohamed Gueddana"),
];
