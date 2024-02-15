import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/custom_password_input_text/custom_password_input_text_widget.dart';
import '/widgets/custom_button/custom_button_widget.dart';
import '/widgets/custom_input_text/custom_input_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mobile_view_model.dart';
export 'mobile_view_model.dart';

class MobileViewWidget extends StatefulWidget {
  const MobileViewWidget({super.key});

  @override
  State<MobileViewWidget> createState() => _MobileViewWidgetState();
}

class _MobileViewWidgetState extends State<MobileViewWidget> {
  late MobileViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileViewModel());
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Configuración de dispositivo',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                  wrapWithModel(
                    model: _model.customInputTextModel,
                    updateCallback: () => setState(() {}),
                    child: CustomInputTextWidget(
                      text: 'Usuario',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.customPasswordInputTextModel,
                    updateCallback: () => setState(() {}),
                    child: CustomPasswordInputTextWidget(
                      text: 'Contraseña',
                    ),
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
              wrapWithModel(
                model: _model.customButtonModel,
                updateCallback: () => setState(() {}),
                child: CustomButtonWidget(
                  text: 'Siguiente',
                  action: () async {
                    await Future.delayed(const Duration(milliseconds: 2000));
                  },
                ),
              ),
            ].divide(SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
