import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/assets_manager.dart';

class DocLogoWidget extends StatelessWidget {
  const DocLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsManager.docdocLogo),
      ],
    );
  }
}
