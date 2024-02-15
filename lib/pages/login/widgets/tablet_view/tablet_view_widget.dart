import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/custom_password_input_text/custom_password_input_text_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_icon_button/custom_icon_button_widget.dart';
import '/widgets/custom_input_text/custom_input_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tablet_view_model.dart';
export 'tablet_view_model.dart';

class TabletViewWidget extends StatefulWidget {
  const TabletViewWidget({super.key});

  @override
  State<TabletViewWidget> createState() => _TabletViewWidgetState();
}

class _TabletViewWidgetState extends State<TabletViewWidget> {
  late TabletViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabletViewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.customIconButtonModel,
                  updateCallback: () => setState(() {}),
                  child: CustomIconButtonWidget(
                    icon: Icon(
                      Icons.menu,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 35.0,
                    ),
                    action: () async {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: 452.0,
              constraints: BoxConstraints(
                minHeight: 416.0,
                maxHeight: 700.0,
              ),
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/logo_acudir_3.png',
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Configuración de dispositivo',
                          style: FlutterFlowTheme.of(context).titleLarge,
                        ),
                        wrapWithModel(
                          model: _model.userTabletModel,
                          updateCallback: () => setState(() {}),
                          child: CustomInputTextWidget(
                            text: 'Usuario',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.passwordTabletModel,
                          updateCallback: () => setState(() {}),
                          child: CustomPasswordInputTextWidget(
                            text: 'Contraseña',
                          ),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.customButtonModel,
                    updateCallback: () => setState(() {}),
                    child: CustomButtonWidget(
                      text: 'Siguiente',
                      action: () async {
                        await Future.delayed(
                            const Duration(milliseconds: 2000));
                      },
                    ),
                  ),
                ].divide(SizedBox(height: 30.0)),
              ),
            ),
          ].divide(SizedBox(height: 30.0)),
        ),
      ),
    );
  }
}
