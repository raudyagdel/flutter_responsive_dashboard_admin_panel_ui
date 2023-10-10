import 'package:flutter/material.dart';
import 'package:flutter_dashboard/assets/assets.gen.dart';

enum VersionControlType { none, git, svn }

extension VersionControlTypeExtension on VersionControlType {
  Widget get icon {
    switch (this) {
      case VersionControlType.git:
        return Assets.icons.git.svg();
      case VersionControlType.svn:
        return Assets.icons.svn.svg();
      default:
        return Assets.icons.none.svg();
    }
  }
}
