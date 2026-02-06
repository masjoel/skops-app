class Entry {
  final int? id;
  final bool isIncome;
  final double amount;
  final String note;
  final DateTime createdAt;

  Entry({
    this.id,
    required this.isIncome,
    required this.amount,
    required this.note,
    required this.createdAt,
  });

  Entry copyWith({
    int? id,
    bool? isIncome,
    double? amount,
    String? note,
    DateTime? createdAt,
  }) {
    return Entry(
      id: id ?? this.id,
      isIncome: isIncome ?? this.isIncome,
      amount: amount ?? this.amount,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  factory Entry.fromMap(Map<String, dynamic> m) => Entry(
        id: m['id'] as int?,
        isIncome: (m['is_income'] as int) == 1,
        amount: (m['amount'] as num).toDouble(),
        note: m['note'] as String,
        createdAt: DateTime.fromMillisecondsSinceEpoch(m['created_at'] as int),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'is_income': isIncome ? 1 : 0,
        'amount': amount,
        'note': note,
        'created_at': createdAt.millisecondsSinceEpoch,
      };
}
