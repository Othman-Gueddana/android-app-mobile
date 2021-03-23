class Bills {
  Bills(
      {this.client,
      this.contrat,
      this.peridoe,
      this.typeFacture,
      this.dateLimite,
      this.netApayer,
      this.detail,
      this.selected = false});

  final String client;
  final int contrat;
  final String peridoe;
  final String typeFacture;
  final String dateLimite;
  final double netApayer;
  final String detail;
  bool selected;
}

List<Bills> data = [
  Bills(
    client: "Mr.Othman gueddana",
    contrat: 18224938,
    peridoe: "09/2020",
    typeFacture: "Facture eau",
    dateLimite: "03/2021",
    netApayer: 20.600,
    detail: 'Afficher les Details',
  ),
  Bills(
    client: "Mr.Marwen Gharbi",
    contrat: 58796321,
    peridoe: "03/2020",
    typeFacture: "Facture eau",
    dateLimite: "08/2020",
    netApayer: 30.500,
    detail: 'Afficher les Details',
  ),
  Bills(
    client: "Mme.Kalthoum benarous",
    contrat: 15589658,
    peridoe: "05/2020",
    typeFacture: "Facture eau",
    dateLimite: "01/2021",
    netApayer: 14.500,
    detail: 'Afficher les Details',
  ),
  Bills(
    client: "Mr.Hedi bel fkih",
    contrat: 258796321,
    peridoe: "02/2020",
    typeFacture: "Facture eau",
    dateLimite: "07/2020",
    netApayer: 12.200,
    detail: 'Afficher les Details',
  ),
  Bills(
    client: "M.Mohamed ben Ali",
    contrat: 12458963,
    peridoe: "01/2020",
    typeFacture: "Facture eau",
    dateLimite: "05/2020",
    netApayer: 50.100,
    detail: 'Afficher les Details',
  ),
  Bills(
    client: "M.Mohamed ben Ali",
    contrat: 12458963,
    peridoe: "04/2020",
    typeFacture: "Facture eau",
    dateLimite: "08/2020",
    netApayer: 90.600,
    detail: 'Afficher les Details',
  ),
  Bills(
    client: "Mr.Othman gueddana",
    contrat: 18224938,
    peridoe: "05/2020",
    typeFacture: "Facture eau",
    dateLimite: "09/2020",
    netApayer: 66.900,
    detail: 'Afficher les Details',
  ),
];
