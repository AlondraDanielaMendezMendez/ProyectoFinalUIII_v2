import '../clientes/clientes_widget.dart';
import '../empleados/empleados_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../inicio_sesion/inicio_sesion_widget.dart';
import '../main.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VentasWidget extends StatefulWidget {
  const VentasWidget({Key key}) : super(key: key);

  @override
  _VentasWidgetState createState() => _VentasWidgetState();
}

class _VentasWidgetState extends State<VentasWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF006064),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Ventas',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Oswald',
                color: Colors.white,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.login_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF083131),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/drawer.jpg?raw=true',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 20, 0),
                      child: Container(
                        width: 80,
                        height: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/user.png?raw=true',
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '[Usuario]',
                              style: FlutterFlowTheme.of(context).title1.override(
                                    fontFamily: 'Oswald',
                                    color: Color(0xFF006064),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFE0E381),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                                child: Text(
                                  'Owner',
                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Oswald',
                                        color: FlutterFlowTheme.of(context).secondaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'Estado de Negocio',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Oswald',
                        color: Color(0xFF006064),
                        fontSize: 30,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'Información de ventas y usuarios',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Oswald',
                        color: Color(0xFF7E8A8A),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBarPage(initialPage: 'Inicio'),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                          child: Icon(
                            Icons.home_outlined,
                            color: Color(0xFF006064),
                            size: 30,
                          ),
                        ),
                        Text(
                          'Inicio',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFF006064),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VentasWidget(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                          child: Icon(
                            Icons.credit_card,
                            color: Color(0xFF006064),
                            size: 30,
                          ),
                        ),
                        Text(
                          'Ventas',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFF006064),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClientesWidget(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                          child: Icon(
                            Icons.location_history,
                            color: Color(0xFF006064),
                            size: 30,
                          ),
                        ),
                        Text(
                          'Clientes',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFF006064),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmpleadosWidget(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                          child: Icon(
                            Icons.work,
                            color: Color(0xFF006064),
                            size: 30,
                          ),
                        ),
                        Text(
                          'Empleados',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFF006064),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InicioSesionWidget(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.powerOff,
                                  color: Color(0xFF65807E),
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Cerrar Sesión',
                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Oswald',
                                      color: Color(0xFF65807E),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Text(
                    'Pedidos Pendientes',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Oswald',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: Text(
                    'Detalle de los pedidos en curso',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Oswald',
                          color: Color(0xFFE7E7E7),
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF083131),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                  child: Image.network(
                                    'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/icon5.png?raw=true',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Página Web',
                                  style: FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Oswald',
                                        color: Color(0xFF006064),
                                      ),
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                          child: Text(
                                            'Producto: ',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: Color(0xFF006064),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '[Nombre del Producto]',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: Color(0x8A000000),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            expanded: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  'Producto: ',
                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                        fontFamily: 'Oswald',
                                                        color: Color(0xFF006064),
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                child: Text(
                                                  '[Nombre del Producto]',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                        fontFamily: 'Oswald',
                                                        color: Color(0x8A000000),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 3,
                                    thickness: 3,
                                    color: Color(0xFF006064),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.location_history,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Cliente:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '[Usuario]',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.notes,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Descripción:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                    child: Text(
                                      '[Descripción]',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Oswald',
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.monetization_on,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Costo:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '1800.00',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF083131),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                  child: Image.network(
                                    'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/icon4.png?raw=true',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Aplicación Móvil',
                                  style: FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Oswald',
                                        color: Color(0xFF006064),
                                      ),
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                          child: Text(
                                            'Producto: ',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: Color(0xFF006064),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '[Nombre del Producto]',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: Color(0x8A000000),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            expanded: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  'Producto: ',
                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                        fontFamily: 'Oswald',
                                                        color: Color(0xFF006064),
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                child: Text(
                                                  '[Nombre del Producto]',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                        fontFamily: 'Oswald',
                                                        color: Color(0x8A000000),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 3,
                                    thickness: 3,
                                    color: Color(0xFF006064),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.location_history,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Cliente:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '[Usuario]',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.notes,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Descripción:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                    child: Text(
                                      '[Descripción]',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Oswald',
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.monetization_on,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Costo:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '1800.00',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF083131),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                  child: Image.network(
                                    'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/icon5.png?raw=true',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Página Web',
                                  style: FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Oswald',
                                        color: Color(0xFF006064),
                                      ),
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                          child: Text(
                                            'Producto: ',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: Color(0xFF006064),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '[Nombre del Producto]',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: Color(0x8A000000),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            expanded: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  'Producto: ',
                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                        fontFamily: 'Oswald',
                                                        color: Color(0xFF006064),
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                child: Text(
                                                  '[Nombre del Producto]',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                        fontFamily: 'Oswald',
                                                        color: Color(0x8A000000),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 3,
                                    thickness: 3,
                                    color: Color(0xFF006064),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.location_history,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Cliente:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '[Usuario]',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.notes,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Descripción:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                    child: Text(
                                      '[Descripción]',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Oswald',
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Icon(
                                            Icons.monetization_on,
                                            color: Color(0xFF006064),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          'Costo:',
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF006064),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            '1800.00',
                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                  fontFamily: 'Oswald',
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
