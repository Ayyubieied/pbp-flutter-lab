class Budget {
  static List<Budget> listBudget = [];
  String judul;
  int nominal;
  String jenis;
  DateTime tanggal;

  Budget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.tanggal,
  });

  static void add({
    required judul,
    required nominal,
    required jenis,
    required tanggal,
  }) {
    listBudget.add(Budget(
      judul: judul,
      nominal: nominal,
      jenis: jenis,
      tanggal: tanggal,
    ));
  }
}