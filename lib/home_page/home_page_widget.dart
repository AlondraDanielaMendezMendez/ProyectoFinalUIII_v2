import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio_sesion/inicio_sesion_widget.dart';
import '../registro/registro_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF006064),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                    child: Text(
                      'Bienvenidos a WebMaker App',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Oswald',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                    child: Text(
                      'Si es tu primera vez en la app pulsa en REGISTRAR, de lo contrarios INICIA SESIÓN',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Oswald',
                            color: Color(0xFFBABABA),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistroWidget(),
                          ),
                        );
                      },
                      text: 'REGISTRAR',
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
                              color: Colors.white,
                              fontSize: 18,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: 0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InicioSesionWidget(),
                            ),
                          );
                        },
                        text: 'INICIA SESIÓN',
                        icon: Icon(
                          Icons.arrow_right,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFF083131),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
