import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login/widgets/menu_options/menu_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_list_widget_model.dart';
export 'menu_list_widget_model.dart';

class MenuListWidgetWidget extends StatefulWidget {
  const MenuListWidgetWidget({super.key});

  @override
  State<MenuListWidgetWidget> createState() => _MenuListWidgetWidgetState();
}

class _MenuListWidgetWidgetState extends State<MenuListWidgetWidget> {
  late MenuListWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuListWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        wrapWithModel(
          model: _model.menuOptionsModel1,
          updateCallback: () => setState(() {}),
          child: MenuOptionsWidget(
            text: 'Acerca de',
            icon: Icon(
              Icons.info_outline,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.menuOptionsModel2,
          updateCallback: () => setState(() {}),
          child: MenuOptionsWidget(
            text: 'Configuración',
            icon: Icon(
              Icons.build_circle_outlined,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.menuOptionsModel3,
          updateCallback: () => setState(() {}),
          child: MenuOptionsWidget(
            text: 'Estaciones de servicio',
            icon: Icon(
              Icons.local_gas_station,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.menuOptionsModel4,
          updateCallback: () => setState(() {}),
          child: MenuOptionsWidget(
            text: 'Gestión de guardias',
            icon: FaIcon(
              FontAwesomeIcons.userMd,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.menuOptionsModel5,
          updateCallback: () => setState(() {}),
          child: MenuOptionsWidget(
            text: 'Manuales',
            icon: Icon(
              Icons.menu_book,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.menuOptionsModel6,
          updateCallback: () => setState(() {}),
          child: MenuOptionsWidget(
            text: 'Teléfonos de contacto',
            icon: Icon(
              Icons.phone,
            ),
          ),
        ),
      ].divide(SizedBox(height: 25.0)),
    );
  }
}
