import 'package:flutter_dashboard/types/version_control_type.dart';

extension StringConverter on String {
  ///Version Control Type Patterns
  static const Set<String> gitPatterns = {'gitlab', '.git', 'github'};
  static const Set<String> svnPatterns = {'svn'};

  VersionControlType toVersionControlType() {
    if (gitPatterns.contains(toLowerCase())) {
      return VersionControlType.git;
    }

    if (svnPatterns.contains(toLowerCase())) {
      return VersionControlType.svn;
    }

    return VersionControlType.none;
  }
}
