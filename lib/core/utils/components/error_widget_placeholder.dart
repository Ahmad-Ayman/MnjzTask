import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helpers/enums.dart';
import '../helpers/utils_functions.dart';
import 'custom_text.dart';

class ErrorWidgetPlaceHolder extends StatelessWidget {
  ErrorWidgetPlaceHolder({
    Key? key,
    required this.errorState,
    required this.errorMsg,
    this.btnFunction,
  }) : super(key: key);
  final PageStates errorState;
  final String errorMsg;
  final VoidCallback? btnFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Lottie.asset(
            setImage(errorState),
          ),
        ),
        if (errorState != PageStates.internetError)
          Text(
            errorMsg,
            style: TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        if (errorState == PageStates.internetError && btnFunction != null)
          InkWell(
            onTap: btnFunction,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomText(
                text: 'Retry Now',
                fontColor: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
