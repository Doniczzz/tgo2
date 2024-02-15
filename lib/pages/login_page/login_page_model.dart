import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/login/widgets/alt_tablet_view/alt_tablet_view_widget.dart';
import '/pages/login/widgets/menu_list_widget/menu_list_widget_widget.dart';
import '/pages/login/widgets/mobile_view/mobile_view_widget.dart';
import '/widgets/custom_icon_button/custom_icon_button_widget.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobile_view component.
  late MobileViewModel mobileViewModel;
  // Model for alt_tablet_view component.
  late AltTabletViewModel altTabletViewModel;
  // Model for custom_icon_button component.
  late CustomIconButtonModel customIconButtonModel;
  // Model for menu_list_widget component.
  late MenuListWidgetModel menuListWidgetModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mobileViewModel = createModel(context, () => MobileViewModel());
    altTabletViewModel = createModel(context, () => AltTabletViewModel());
    customIconButtonModel = createModel(context, () => CustomIconButtonModel());
    menuListWidgetModel = createModel(context, () => MenuListWidgetModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mobileViewModel.dispose();
    altTabletViewModel.dispose();
    customIconButtonModel.dispose();
    menuListWidgetModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
