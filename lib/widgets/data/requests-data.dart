class RequestsData {
  String numero;
  String objetdelareclamation;
  String datedecreation;
  String etapeencours;
  String commentaire;

  RequestsData(
      {this.commentaire,
      this.etapeencours,
      this.numero,
      this.datedecreation,
      this.objetdelareclamation});
}

List<RequestsData> requestsData = [
  RequestsData(
      commentaire: "aucune donnée trouvée",
      etapeencours: "aucune donnée trouvée",
      numero: "aucune donnée trouvée",
      datedecreation: "aucune donnée trouvée",
      objetdelareclamation: "aucune donnée trouvée"),
];
