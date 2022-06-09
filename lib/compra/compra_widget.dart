import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../main.dart';
import '../tarjeta/tarjeta_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompraWidget extends StatefulWidget {
  const CompraWidget({Key key}) : super(key: key);

  @override
  _CompraWidgetState createState() => _CompraWidgetState();
}

class _CompraWidgetState extends State<CompraWidget> {
  String dropDownValue;
  TextEditingController textController1;
  TextEditingController textController2;
  bool switchListTileValue1;
  bool switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

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
            Icons.chevron_left,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'TiposDeApp'),
              ),
            );
          },
        ),
        title: Text(
          'Perfil',
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          child: Image.network(
                            'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/header.jpg?raw=true',
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Divider(
                          height: 0,
                          thickness: 3,
                          color: Color(0xFF006064),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFF083131),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Text(
                              'COMPRA',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).title1.override(
                                    fontFamily: 'Oswald',
                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                    fontSize: 25,
                                  ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 0,
                          thickness: 3,
                          color: Color(0xFF006064),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Divider(
                                height: 0,
                                thickness: 3,
                                indent: 20,
                                endIndent: 20,
                                color: Color(0xFF006064),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: textController1,
                                          onChanged: (_) => EasyDebounce.debounce(
                                            'textController1',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nombre del Producto',
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF002A22),
                                                width: 1,
                                              ),
                                              borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF002A22),
                                                width: 1,
                                              ),
                                              borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFB2DFDB),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                        child: FlutterFlowDropDown(
                                          options: [
                                            'Base de Datos',
                                            'Web App',
                                            'App Móvil',
                                            'Hosting',
                                            'Dominio'
                                          ],
                                          onChanged: (val) => setState(() => dropDownValue = val),
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                fontFamily: 'Oswald',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: 'Servicio',
                                          fillColor: Color(0xFFB2DFDB),
                                          elevation: 5,
                                          borderColor: Color(0xFF002A22),
                                          borderWidth: 0,
                                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                                          hidesUnderline: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                child: TextFormField(
                                  controller: textController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Descripción',
                                    hintText: 'Descripción',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF144A4C),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF144A4C),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFB2DFDB),
                                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Oswald',
                                        color: FlutterFlowTheme.of(context).secondaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Divider(
                                height: 0,
                                thickness: 3,
                                indent: 20,
                                endIndent: 20,
                                color: Color(0xFF006064),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: SwitchListTile(
                                  value: switchListTileValue1 ??= true,
                                  onChanged: (newValue) => setState(() => switchListTileValue1 = newValue),
                                  title: Text(
                                    'Mantenimiento',
                                    style: FlutterFlowTheme.of(context).title3.override(
                                          fontFamily: 'Oswald',
                                          color: Color(0xFF006064),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  subtitle: Text(
                                    'Verificar el funcionamiento durante 6 meses',
                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                          fontFamily: 'Oswald',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                  tileColor: Colors.white,
                                  activeColor: Color(0xFF006064),
                                  dense: true,
                                  controlAffinity: ListTileControlAffinity.trailing,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: SwitchListTile(
                                  value: switchListTileValue2 ??= false,
                                  onChanged: (newValue) => setState(() => switchListTileValue2 = newValue),
                                  title: Text(
                                    'Actualizaciones',
                                    style: FlutterFlowTheme.of(context).title3.override(
                                          fontFamily: 'Oswald',
                                          color: Color(0xFF006064),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  subtitle: Text(
                                    'Nuevas funciones o adaptación a otros dispositivos',
                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                          fontFamily: 'Oswald',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                  tileColor: Colors.white,
                                  activeColor: Color(0xFF006064),
                                  dense: true,
                                  controlAffinity: ListTileControlAffinity.trailing,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 0,
                          thickness: 3,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xFF006064),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total: ',
                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Oswald',
                                      color: Color(0xFF006064),
                                      fontSize: 20,
                                    ),
                              ),
                              Container(
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xFF083131),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                  child: Text(
                                    '\$00.00',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                          fontFamily: 'Oswald',
                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                          child: Text(
                            'Nuestros trabajadores recibirán tu solicitud de compra y se pondrán en contacto por medio de la aplicación.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: Color(0xFF7E8A8A),
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 10, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TarjetaWidget(),
                                        ),
                                      );
                                    },
                                    text: 'COMPRAR',
                                    icon: Icon(
                                      Icons.arrow_right,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50,
                                      color: Color(0xFF083131),
                                      textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                            fontFamily: 'Oswald',
                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                            fontSize: 18,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => NavBarPage(initialPage: 'Carrito'),
                                        ),
                                      );
                                    },
                                    text: 'CARRITO',
                                    icon: Icon(
                                      Icons.add_shopping_cart,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50,
                                      color: Color(0xFFE7E7E7),
                                      textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                            fontFamily: 'Oswald',
                                            color: Color(0xFF083131),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
