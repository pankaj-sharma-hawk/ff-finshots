import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bottomsheet_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../on_boarding_page/on_boarding_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class BookmarkWidget extends StatefulWidget {
  const BookmarkWidget({Key? key}) : super(key: key);

  @override
  _BookmarkWidgetState createState() => _BookmarkWidgetState();
}

class _BookmarkWidgetState extends State<BookmarkWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
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
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final bookmarkUsersRecord = snapshot.data!;
        return Title(
            title: 'Bookmark',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Color(0xFFE9E8E8),
              drawer: Container(
                width: 250,
                child: Drawer(
                  elevation: 15,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 370,
                              height: 160,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 0, 0),
                                      child: AuthUserStreamWidget(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.23,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.23,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: valueOrDefault<String>(
                                              currentUserPhoto,
                                              'https://picsum.photos/203',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Color(0xFF160D0D),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: AuthUserStreamWidget(
                                      child: Text(
                                        valueOrDefault<String>(
                                          currentUserDisplayName,
                                          'User',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 2, 2, 2),
                                    child: InkWell(
                                      onTap: () async {
                                        setDarkModeSetting(
                                            context, ThemeMode.light);
                                      },
                                      child: Image.asset(
                                        'assets/images/download.jpg',
                                        width: 60,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 2, 2, 2),
                                    child: InkWell(
                                      onTap: () async {
                                        setDarkModeSetting(
                                            context, ThemeMode.dark);
                                      },
                                      child: Image.asset(
                                        'assets/images/images.jpg',
                                        width: 60,
                                        height: 100,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 350,
                              height: 200,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 5, 3, 3),
                                      child: InkWell(
                                        onTap: () async {
                                          await launchURL(
                                              'https://www.youtube.com/c/FlutterFlow');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.youtube,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 0, 0, 0),
                                              child: Text(
                                                'News Shorts on Youtube',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          17, 5, 3, 3),
                                      child: InkWell(
                                        onTap: () async {
                                          await launchURL(
                                              'https://play.google.com/store/apps/details?id=com.flutterflow.fluttermet&hl=en_US&gl=US');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.play,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 0, 0),
                                              child: Text(
                                                'Rate us on PlayStore',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          17, 5, 3, 3),
                                      child: InkWell(
                                        onTap: () async {
                                          if (scaffoldKey
                                                  .currentState!.isDrawerOpen ||
                                              scaffoldKey.currentState!
                                                  .isEndDrawerOpen) {
                                            Navigator.pop(context);
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: 300,
                                                  child: BottomsheetWidget(),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.event_note,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 0, 0),
                                              child: Text(
                                                'Any Feedback?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          17, 5, 3, 3),
                                      child: InkWell(
                                        onTap: () async {
                                          await Share.share(
                                              'You can Download this app from below link - https://flutterflow.io/');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.share_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 0, 0),
                                              child: Text(
                                                'Share Us',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          17, 5, 3, 3),
                                      child: InkWell(
                                        onTap: () async {
                                          await signOut();
                                          await Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  OnBoardingPageWidget(),
                                            ),
                                            (r) => false,
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.logout,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 0, 0),
                                              child: Text(
                                                'Logout',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                            ),
                            Expanded(
                              child: Container(
                                width: 370,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Follow us on',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.facebookF,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 28,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.twitter,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 28,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 28,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.linkedinIn,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 28,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.telegramPlane,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 28,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.copyright_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColorBG,
                                              size: 24,
                                            ),
                                            Text(
                                              '2022 News Shorts v1',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 20,
                                  child: Container(
                                    width: 100,
                                    height: 105,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(7, 7, 7, 7),
                                              child: InkWell(
                                                onTap: () async {
                                                  scaffoldKey.currentState!
                                                      .openDrawer();
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                  child: Image.asset(
                                                    'assets/images/assets_images_hamburger.png',
                                                    width: 40,
                                                    height: 40,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 8, 15, 0),
                                                    child: Image.asset(
                                                      'assets/images/assets_images_logo_horizontal.png',
                                                      width: 80,
                                                      height: 80,
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15,
                                                                    25, 15, 15),
                                                        child: Icon(
                                                          Icons.filter_alt,
                                                          color:
                                                              Color(0x00FFFFFF),
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (bookmarkUsersRecord.newsIds!
                                        .toList()
                                        .length >=
                                    1)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child:
                                            StreamBuilder<List<NewsdataRecord>>(
                                          stream: queryNewsdataRecord(
                                            queryBuilder: (newsdataRecord) =>
                                                newsdataRecord.where('newsid',
                                                    whereIn: bookmarkUsersRecord
                                                        .newsIds!
                                                        .toList()),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<NewsdataRecord>
                                                columnNewsdataRecordList =
                                                snapshot.data!;
                                            return InkWell(
                                              onTap: () async {
                                                scaffoldKey.currentState!
                                                    .openDrawer();
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    columnNewsdataRecordList
                                                        .length, (columnIndex) {
                                                  final columnNewsdataRecord =
                                                      columnNewsdataRecordList[
                                                          columnIndex];
                                                  return Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(13,
                                                                    13, 13, 13),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 10,
                                                          child: Container(
                                                            width: 400,
                                                            height: 442,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child: Image
                                                                          .network(
                                                                        columnNewsdataRecord
                                                                            .image!,
                                                                        width:
                                                                            350,
                                                                        height:
                                                                            200,
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: double.infinity,
                                                                              height: 100,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0, -0.55),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                          child: Text(
                                                                                            columnNewsdataRecord.headline!,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).title1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontSize: 24,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: double.infinity,
                                                                              height: 100,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0, -0.55),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                          child: Text(
                                                                                            columnNewsdataRecord.description!,
                                                                                            maxLines: 4,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 380,
                                                                              height: 33,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 2),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  columnNewsdataRecord.minread!.toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                                ),
                                                                                                Text(
                                                                                                  ' Min(s) Read',
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                                                                                              child:
                                                                                                  InkWell(
                                                                                                onTap: () async {
                                                                                                  final usersUpdateData = {
                                                                                                    'news_ids': FieldValue.arrayRemove([
                                                                                                      columnNewsdataRecord.newsid
                                                                                                    ]),
                                                                                                  };
                                                                                                  await currentUserReference!.update(usersUpdateData);
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.bookmark_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).bookmarkcolor,
                                                                                                  size: 26,
                                                                                                ),
                                                                                              ).animated([
                                                                                                animationsMap['iconOnPageLoadAnimation']!
                                                                                              ]),
                                                                                            ),
                                                                                          ],
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
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                if (bookmarkUsersRecord.newsIds!
                                        .toList()
                                        .length ==
                                    0)
                                  Image.asset(
                                    'assets/images/49e58d5922019b8ec4642a2e2b9291c2.png',
                                    width: 370,
                                    height: 500,
                                    fit: BoxFit.cover,
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
            ));
      },
    );
  }
}
