import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0xFF05003F),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Home',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.2, -1),
                child: Container(
                  width: 390,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFFCC1818),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.85),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(99),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 233.11,
                          height: 145.28,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 390,
                height: 375,
                decoration: BoxDecoration(
                  color: Color(0xFF05003F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

FlutterFlowIconButton({Color borderColor, int borderRadius, int borderWidth, int buttonSize, Icon icon, Null Function() onPressed}) {
}
