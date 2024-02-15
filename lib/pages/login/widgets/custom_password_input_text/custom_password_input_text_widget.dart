import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_password_input_text_model.dart';
export 'custom_password_input_text_model.dart';

class CustomPasswordInputTextWidget extends StatefulWidget {
  const CustomPasswordInputTextWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<CustomPasswordInputTextWidget> createState() =>
      _CustomPasswordInputTextWidgetState();
}

class _CustomPasswordInputTextWidgetState
    extends State<CustomPasswordInputTextWidget> {
  late CustomPasswordInputTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomPasswordInputTextModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
      autofocus: true,
      obscureText: !_model.passwordVisibility,
      decoration: InputDecoration(
        labelText: widget.text,
        labelStyle: FlutterFlowTheme.of(context).labelMedium,
        hintStyle: FlutterFlowTheme.of(context).labelMedium,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF32519E),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: InkWell(
          onTap: () => setState(
            () => _model.passwordVisibility = !_model.passwordVisibility,
          ),
          focusNode: FocusNode(skipTraversal: true),
          child: Icon(
            _model.passwordVisibility
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            size: 20.0,
          ),
        ),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium,
      validator: _model.textControllerValidator.asValidator(context),
    );
  }
}
