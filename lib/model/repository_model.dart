import 'package:flutter_dashboard/extensions/convert_extension.dart';
import 'package:flutter_dashboard/types/version_control_type.dart';
import 'package:intl/intl.dart';

class RepositoryModel {
  final String username;
  final VersionControlType type;
  final String url;
  final String branch;
  final DateTime lastupdated;

  const RepositoryModel({
    required this.username,
    required this.type,
    required this.url,
    required this.branch,
    required this.lastupdated,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    final url = json['urlProyect'] as String;
    final datetime = DateFormat("yyyy-MM-dd HH:mm:ss Z").parse(json['lastUpdated'] as String);
    return RepositoryModel(
      username: json['colaborator'] as String,
      url: url,
      type: url.toVersionControlType(),
      branch: json['colaborator'] as String,
      lastupdated: datetime,
    );
  }
}
