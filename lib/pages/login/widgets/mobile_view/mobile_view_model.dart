import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/custom_password_input_text/custom_password_input_text_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_input_text/custom_input_text_widget.dart';
import 'mobile_view_widget.dart' show MobileViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MobileViewModel extends FlutterFlowModel<MobileViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_input_text component.
  late CustomInputTextModel customInputTextModel;
  // Model for custom_password_input_text component.
  late CustomPasswordInputTextModel customPasswordInputTextModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customInputTextModel = createModel(context, () => CustomInputTextModel());
    customPasswordInputTextModel =
        createModel(context, () => CustomPasswordInputTextModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  void dispose() {
    customInputTextModel.dispose();
    customPasswordInputTextModel.dispose();
    customButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
