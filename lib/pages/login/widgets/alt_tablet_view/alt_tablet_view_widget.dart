import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/custom_password_input_text/custom_password_input_text_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_input_text/custom_input_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alt_tablet_view_model.dart';
export 'alt_tablet_view_model.dart';

class AltTabletViewWidget extends StatefulWidget {
  const AltTabletViewWidget({super.key});

  @override
  State<AltTabletViewWidget> createState() => _AltTabletViewWidgetState();
}

class _AltTabletViewWidgetState extends State<AltTabletViewWidget> {
  late AltTabletViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AltTabletViewModel());
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
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Material(
          color: Colors.transparent,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            width: 1107.0,
            height: 670.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              80.0, 0.0, 80.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Configuración de dispositivo',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/logo_acudir_3.png',
                                      width: 300.0,
                                      height: 124.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 416.0,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.passwordTabletModel,
                                        updateCallback: () => setState(() {}),
                                        child: CustomPasswordInputTextWidget(
                                          text: 'Contraseña',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 416.0,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.userTabletModel,
                                        updateCallback: () => setState(() {}),
                                        child: CustomInputTextWidget(
                                          text: 'Usuario',
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 25.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 474.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
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
                        ),
                      ].divide(SizedBox(height: 30.0)),
                    ),
                  ),
                ].divide(SizedBox(height: 30.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
