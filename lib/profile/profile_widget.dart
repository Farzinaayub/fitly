import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../login1/login1_widget.dart';
import '../recall/recall_widget.dart';
import '../targetpage/targetpage_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  String uploadedFileUrl = '';
  double ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'PROFILE',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(150, 20, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TargetpageWidget(),
                          ),
                        );
                      },
                      text: 'GET STARTED',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFF09E20E),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFDBE2E7),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      final selectedMedia = await selectMedia(
                        mediaSource: MediaSource.photoGallery,
                        multiImage: false,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        final downloadUrls = (await Future.wait(
                                selectedMedia.map((m) async =>
                                    await uploadData(m.storagePath, m.bytes))))
                            .where((u) => u != null)
                            .toList();
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        if (downloadUrls != null &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() => uploadedFileUrl = downloadUrls.first);
                          showUploadMessage(
                            context,
                            'Success!',
                          );
                        } else {
                          showUploadMessage(
                            context,
                            'Failed to upload media',
                          );
                          return;
                        }
                      }
                    },
                    text: 'Change Photo',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFF1F4F8),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF4B39EF),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 1,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x3416202A),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          'Edit Profile',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.9, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login1Widget(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF95A1AC),
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.4),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecallWidget(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.fact_check_sharp,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
              ),
            ),
            RatingBar.builder(
              onRatingUpdate: (newValue) =>
                  setState(() => ratingBarValue = newValue),
              itemBuilder: (context, index) => Icon(
                Icons.star_rounded,
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
              direction: Axis.horizontal,
              initialRating: ratingBarValue ??= 3,
              unratedColor: Color(0xFF9E9E9E),
              itemCount: 5,
              itemSize: 30,
              glowColor: FlutterFlowTheme.of(context).secondaryColor,
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 10),
                child: Text(
                  'Progress bar',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
            CircularPercentIndicator(
              percent: 0.7,
              radius: 60,
              lineWidth: 24,
              animation: true,
              progressColor: FlutterFlowTheme.of(context).primaryColor,
              backgroundColor: Color(0xFF163159),
              center: Text(
                '70%',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Log Out',
                options: FFButtonOptions(
                  width: 90,
                  height: 40,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF090F13),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 1,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
