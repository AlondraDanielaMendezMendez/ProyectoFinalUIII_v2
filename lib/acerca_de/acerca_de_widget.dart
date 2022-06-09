import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AcercaDeWidget extends StatefulWidget {
  const AcercaDeWidget({Key key}) : super(key: key);

  @override
  _AcercaDeWidgetState createState() => _AcercaDeWidgetState();
}

class _AcercaDeWidgetState extends State<AcercaDeWidget> {
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
          'Acerca De',
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Image.network(
                            'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/logo.png?raw=true',
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.2,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: Text(
                          'WebMaker App',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Oswald',
                                color: Colors.white,
                                fontSize: 35,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Icon(
                            Icons.track_changes,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Misión',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Oswald',
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                      child: Text(
                        'WebMaker tiene como objetivo ayudar a todo aquellos que quieran comenzar a emprender por medio de nuevos medios como la tecnología llevandolos de la mano a tener éxito en su negocio o proyecto.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Oswald',
                              color: Color(0xFFBABABA),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Visión',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Oswald',
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                      child: Text(
                        'Ser la aplicación a la que más gente emprendedora ha llegado con el fin de involucrarse en los medios digitales actuales.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Oswald',
                              color: Color(0xFFBABABA),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Text(
                            'WebMaker App by:',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Oswald',
                                  color: Color(0xFFBABABA),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Text(
                          'Alondra Daniela Méndez Méndez',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFFBABABA),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                    Text(
                      'Copyright © 2022 WebMaker App ',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Oswald',
                            color: Color(0xFFBABABA),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
