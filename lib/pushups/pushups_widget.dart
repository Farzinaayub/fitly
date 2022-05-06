import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PushupsWidget extends StatefulWidget {
  const PushupsWidget({Key key}) : super(key: key);

  @override
  _PushupsWidgetState createState() => _PushupsWidgetState();
}

class _PushupsWidgetState extends State<PushupsWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF0F1113),
                          size: 24,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        'Back',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF0F1113),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Text(
                  'KNEE PUSH UPS ',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      '\nSTEP 1\nFacing the floor, balance your body with the arms positioned a little wider than the shoulders.\n\nSTEP 2\n\nLegs should be balanced on toes and make sure to maintain a straight body posture from head to toe. \n\nSTEP 3\n\nShould not bend or arch your body \n\nSTEP 4\n\nTo begin, lower your body to the ground, bending the elbows, and return to the original position without lying or touching the ground.  \n\nSTEP 5\n\nMake sure to inhale while you are going down and exhale while coming up.\n\nSTEP 6\n\nThe bending elbows should be at a 90-degree angle and do not bend your back during the exercise.  \n\nSTEP 7\n\nRepeat the exercise until you over-strain your body or do as much as your workout routine requirement.\n',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button-Login pressed ...');
            },
            text: 'START',
            options: FFButtonOptions(
              width: 270,
              height: 50,
              color: Color(0xFF0F1113),
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
              elevation: 3,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 8,
            ),
          ).animated([animationsMap['buttonOnActionTriggerAnimation']]),
        ],
      ),
    );
  }
}
