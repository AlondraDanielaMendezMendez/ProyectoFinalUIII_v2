import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio_sesion/inicio_sesion_widget.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  bool passwordVisibility1;
  TextEditingController textController5;
  bool passwordVisibility2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    passwordVisibility1 = false;
    textController5 = TextEditingController();
    passwordVisibility2 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
          child: Image.network(
            'https://github.com/AlondraDanielaMendezMendez/UIII-Proyecto-Final-iOS-Mendez-ADM/blob/main/logo.png?raw=true',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'WebMaker App',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Oswald',
                color: Color(0xFF006064),
                fontSize: 30,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF006064),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Registro',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Oswald',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Text(
                            'Crea una cuenta para personalizar tu experiencia en nuestra aplicación',
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: Color(0xFFBABABA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Usuario',
                              hintText: 'Usuario',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFB2DFDB),
                              suffixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Correo',
                              hintText: 'Correo',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFB2DFDB),
                              suffixIcon: Icon(
                                Icons.alternate_email,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController3,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Teléfono',
                              hintText: 'Teléfono',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFB2DFDB),
                              suffixIcon: Icon(
                                Icons.phone,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController4,
                            obscureText: !passwordVisibility1,
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              hintText: 'Contraseña',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFB2DFDB),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility1 = !passwordVisibility1,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController5,
                            obscureText: !passwordVisibility2,
                            decoration: InputDecoration(
                              labelText: 'Repite Contraseña',
                              hintText: 'Confirmar Contraseña',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF144A4C),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFB2DFDB),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility2 = !passwordVisibility2,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility2 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Oswald',
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
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
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '¿Tienes cuenta? ',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Oswald',
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                ),
                                Text(
                                  'Inicia Sesión',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Oswald',
                                        color: Color(0xFF083131),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavBarPage(initialPage: 'Inicio'),
                                ),
                              );
                            },
                            text: 'REGISTRARSE',
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
