import 'package:appointment_doctor_app/core/constants/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: size.height * .6,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: SvgPicture.asset(
              AssetsManager.docdocLowOpacity,
              width: size.width,
              fit: BoxFit.fitWidth,
              alignment: AlignmentDirectional.topCenter,
            ),
          ),
          Container(
            height: size.height * .6,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.bottomCenter,
                end: AlignmentDirectional.topCenter,
                stops: const [0.14, 0.5],
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0),
                ],
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AssetsManager.doctor,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Best Doctor\nAppointment App",
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.primaryColor,
                height: 1.4,
                fontSize: 32.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
