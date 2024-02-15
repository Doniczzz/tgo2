import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/custom_password_input_text/custom_password_input_text_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_input_text/custom_input_text_widget.dart';
import 'alt_tablet_view_widget.dart' show AltTabletViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AltTabletViewModel extends FlutterFlowModel<AltTabletViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for passwordTablet.
  late CustomPasswordInputTextModel passwordTabletModel;
  // Model for userTablet.
  late CustomInputTextModel userTabletModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordTabletModel =
        createModel(context, () => CustomPasswordInputTextModel());
    userTabletModel = createModel(context, () => CustomInputTextModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  void dispose() {
    passwordTabletModel.dispose();
    userTabletModel.dispose();
    customButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
