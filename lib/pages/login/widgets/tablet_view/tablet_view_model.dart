import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/custom_password_input_text/custom_password_input_text_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_icon_button/custom_icon_button_widget.dart';
import '/widgets/custom_input_text/custom_input_text_widget.dart';
import 'tablet_view_widget.dart' show TabletViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TabletViewModel extends FlutterFlowModel<TabletViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_icon_button component.
  late CustomIconButtonModel customIconButtonModel;
  // Model for userTablet.
  late CustomInputTextModel userTabletModel;
  // Model for passwordTablet.
  late CustomPasswordInputTextModel passwordTabletModel;
  // Model for custom_button component.
  late CustomButtonModel customButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customIconButtonModel = createModel(context, () => CustomIconButtonModel());
    userTabletModel = createModel(context, () => CustomInputTextModel());
    passwordTabletModel =
        createModel(context, () => CustomPasswordInputTextModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  void dispose() {
    customIconButtonModel.dispose();
    userTabletModel.dispose();
    passwordTabletModel.dispose();
    customButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
