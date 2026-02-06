class KasModel {
  final int? id;
  final String tanggal;
  final double kasAwal;
  final double totalPenjualan;
  final double totalPengeluaran;
  final double saldoAkhir;

  KasModel({
    this.id,
    required this.tanggal,
    required this.kasAwal,
    required this.totalPenjualan,
    required this.totalPengeluaran,
    required this.saldoAkhir,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'tanggal': tanggal,
        'kas_awal': kasAwal,
        'total_penjualan': totalPenjualan,
        'total_pengeluaran': totalPengeluaran,
        'saldo_akhir': saldoAkhir,
      };

  factory KasModel.fromMap(Map<String, dynamic> map) => KasModel(
        id: map['id'],
        tanggal: map['tanggal'],
        kasAwal: map['kas_awal'],
        totalPenjualan: map['total_penjualan'],
        totalPengeluaran: map['total_pengeluaran'],
        saldoAkhir: map['saldo_akhir'],
      );
}