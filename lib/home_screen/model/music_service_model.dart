class ServiceModel {
  final String title;
  final String description;
  final String icon;

  ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
  });

  factory ServiceModel.fromFirestore(Map<String, dynamic> data) {
    return ServiceModel(
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      icon: data['icon'] ?? '',
    );
  }
}
