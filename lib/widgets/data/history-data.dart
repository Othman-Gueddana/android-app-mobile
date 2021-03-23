class HistoryData {
  int periode;
  int ancienIndex;
  int index;
  int consommation;
  int estimation;
  int refernece;
  String type;
  String dateLimiteDePaiement;
  double montantTTC;

  HistoryData({
    this.estimation,
    this.consommation,
    this.periode,
    this.index,
    this.ancienIndex,
    this.refernece,
    this.type,
    this.dateLimiteDePaiement,
    this.montantTTC,
  });
}

List<HistoryData> historyData = [
  HistoryData(
      montantTTC: 19.600,
      dateLimiteDePaiement: "26/06/2020",
      type: 'Facture eau',
      refernece: 134117412,
      estimation: 16,
      consommation: 0,
      periode: 2020 - 1,
      index: 2791,
      ancienIndex: 2791),
  HistoryData(
      montantTTC: 24.200,
      dateLimiteDePaiement: "23/09/2020",
      type: 'Facture eau',
      refernece: 139248779,
      estimation: -16,
      consommation: 37,
      periode: 2020 - 2,
      index: 2869,
      ancienIndex: 2828),
  HistoryData(
      montantTTC: 63.900,
      dateLimiteDePaiement: "23/12/2020",
      type: 'Facture eau',
      refernece: 134117412,
      estimation: 0,
      consommation: 41,
      periode: 2020 - 3,
      index: 2913,
      ancienIndex: 2869),
];
