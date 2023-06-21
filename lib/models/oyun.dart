class Oyun {
  final int id;
  final String name;

  Oyun({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'Oyun{id: $id, name: $name}';
  }
}
