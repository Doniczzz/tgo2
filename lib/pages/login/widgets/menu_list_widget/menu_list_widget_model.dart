import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/menu_options/menu_options_widget.dart';
import 'menu_list_widget_widget.dart' show MenuListWidgetWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuListWidgetModel extends FlutterFlowModel<MenuListWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for menu_options component.
  late MenuOptionsModel menuOptionsModel1;
  // Model for menu_options component.
  late MenuOptionsModel menuOptionsModel2;
  // Model for menu_options component.
  late MenuOptionsModel menuOptionsModel3;
  // Model for menu_options component.
  late MenuOptionsModel menuOptionsModel4;
  // Model for menu_options component.
  late MenuOptionsModel menuOptionsModel5;
  // Model for menu_options component.
  late MenuOptionsModel menuOptionsModel6;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuOptionsModel1 = createModel(context, () => MenuOptionsModel());
    menuOptionsModel2 = createModel(context, () => MenuOptionsModel());
    menuOptionsModel3 = createModel(context, () => MenuOptionsModel());
    menuOptionsModel4 = createModel(context, () => MenuOptionsModel());
    menuOptionsModel5 = createModel(context, () => MenuOptionsModel());
    menuOptionsModel6 = createModel(context, () => MenuOptionsModel());
  }

  void dispose() {
    menuOptionsModel1.dispose();
    menuOptionsModel2.dispose();
    menuOptionsModel3.dispose();
    menuOptionsModel4.dispose();
    menuOptionsModel5.dispose();
    menuOptionsModel6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
