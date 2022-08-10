import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../phone_number_page/phone_number_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPageWidget extends StatefulWidget {
  const OnBoardingPageWidget({Key? key}) : super(key: key);

  @override
  _OnBoardingPageWidgetState createState() => _OnBoardingPageWidgetState();
}

class _OnBoardingPageWidgetState extends State<OnBoardingPageWidget> {
  PageController? pageViewController;
  TextEditingController? emailIDController;
  TextEditingController? emailIDLoginController;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  TextEditingController? emailIDSignUPController;
  TextEditingController? nameController;
  TextEditingController? passwordSingUpController;
  late bool passwordSingUpVisibility;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailIDController = TextEditingController();
    emailIDLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
    emailIDSignUPController = TextEditingController();
    nameController = TextEditingController();
    passwordSingUpController = TextEditingController();
    passwordSingUpVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFE0E0E6),
          ),
          child: Container(
            width: double.infinity,
            height: 500,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: PageView(
                    controller: pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                              child: Image.asset(
                                'assets/images/assets_images_onboarding1.png',
                                width: 500,
                                height: 300,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text(
                              'Financial News Made Simple',
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                            Text(
                              'Your daily dose of the lastest, most important financial developments delivered in plain English. In less than 3 mins.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                              child: Image.asset(
                                'assets/images/assets_images_onboarding2.png',
                                width: 500,
                                height: 300,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text(
                              'One Notification a day',
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                            Text(
                              'Set a time and receive your Finshot just when you want it. One Notification, No Spam.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                              child: Image.asset(
                                'assets/images/assets_images_onboarding3.png',
                                width: 500,
                                height: 300,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text(
                              'Packed with Real Insights',
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                            Text(
                              'Get Real Insights on mundane stories so that you can always be the smartest person in the room.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFE0E0E6),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 95, 0, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 340,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E6),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: Text(
                                                  'Sign in to',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 20),
                                                child: Image.asset(
                                                  'assets/images/assets_images_logo_horizontal.png',
                                                  width: 200,
                                                  height: 60,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final user =
                                                    await signInWithGoogle(
                                                        context);
                                                if (user == null) {
                                                  return;
                                                }
                                                await Navigator
                                                    .pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        NavBarPage(
                                                            initialPage:
                                                                'HomePage'),
                                                  ),
                                                  (r) => false,
                                                );
                                              },
                                              text: 'Sign in with Google',
                                              icon: FaIcon(
                                                FontAwesomeIcons.google,
                                              ),
                                              options: FFButtonOptions(
                                                width: 330,
                                                height: 40,
                                                color: Color(0xFF125C89),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print(
                                                    'FSignInButton pressed ...');
                                              },
                                              text: 'Sign in with Facebook',
                                              icon: FaIcon(
                                                FontAwesomeIcons.facebookF,
                                              ),
                                              options: FFButtonOptions(
                                                width: 330,
                                                height: 40,
                                                color: Color(0xFF125C89),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print(
                                                    'ASignInButton pressed ...');
                                              },
                                              text: 'Sign in with Apple',
                                              icon: FaIcon(
                                                FontAwesomeIcons.appleAlt,
                                              ),
                                              options: FFButtonOptions(
                                                width: 330,
                                                height: 40,
                                                color: Color(0xFF125C89),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        PhoneNumberPageWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Sign in with Phone',
                                              icon: Icon(
                                                Icons.phone,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: 330,
                                                height: 40,
                                                color: Color(0xFF125C89),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.2,
                                            indent: 15,
                                            endIndent: 15,
                                            color: Color(0xFF66A3C0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().isUserSignInWindow)
                                  Container(
                                    width: double.infinity,
                                    height: 310,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE0E0E6),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: DefaultTabController(
                                            length: 2,
                                            initialIndex: 0,
                                            child: Column(
                                              children: [
                                                TabBar(
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1,
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryColor,
                                                  tabs: [
                                                    Tab(
                                                      text: 'Sign In',
                                                    ),
                                                    Tab(
                                                      text: 'Sign Up',
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              child: Form(
                                                                key: formKey3,
                                                                autovalidateMode:
                                                                    AutovalidateMode
                                                                        .disabled,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            emailIDLoginController,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          hintText:
                                                                              'Email',
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          prefixIcon:
                                                                              Icon(
                                                                            Icons.email_outlined,
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              2),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            passwordLoginController,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            !passwordLoginVisibility,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          hintText:
                                                                              'Password',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodyText2
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          prefixIcon:
                                                                              Icon(
                                                                            Icons.lock,
                                                                          ),
                                                                          suffixIcon:
                                                                              InkWell(
                                                                            onTap: () =>
                                                                                setState(
                                                                              () => passwordLoginVisibility = !passwordLoginVisibility,
                                                                            ),
                                                                            focusNode:
                                                                                FocusNode(skipTraversal: true),
                                                                            child:
                                                                                Icon(
                                                                              passwordLoginVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                                              color: Color(0xFF757575),
                                                                              size: 22,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                final user =
                                                                    await signInWithEmail(
                                                                  context,
                                                                  emailIDLoginController!
                                                                      .text,
                                                                  passwordLoginController!
                                                                      .text,
                                                                );
                                                                if (user ==
                                                                    null) {
                                                                  return;
                                                                }

                                                                await Navigator
                                                                    .pushAndRemoveUntil(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        NavBarPage(
                                                                            initialPage:
                                                                                'HomePage'),
                                                                  ),
                                                                  (r) => false,
                                                                );
                                                              },
                                                              text: 'Sign In',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 330,
                                                                height: 40,
                                                                color: Color(
                                                                    0xFF125C89),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  setState(() =>
                                                                      FFAppState()
                                                                              .isUserSignInWindow =
                                                                          false);
                                                                  setState(() =>
                                                                      FFAppState()
                                                                              .isForgotPasswordWindow =
                                                                          true);
                                                                },
                                                                child: Text(
                                                                  'Forgot Password ??',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFF125C89),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              child: Form(
                                                                key: formKey2,
                                                                autovalidateMode:
                                                                    AutovalidateMode
                                                                        .disabled,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            nameController,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          hintText:
                                                                              'Name',
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          prefixIcon:
                                                                              Icon(
                                                                            Icons.person_outline_outlined,
                                                                            size:
                                                                                25,
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            emailIDSignUPController,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          hintText:
                                                                              'Email',
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          prefixIcon:
                                                                              Icon(
                                                                            Icons.email_outlined,
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                        keyboardType:
                                                                            TextInputType.emailAddress,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              2),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            passwordSingUpController,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            !passwordSingUpVisibility,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          hintText:
                                                                              'Password',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodyText2
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFA8ADB6),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          prefixIcon:
                                                                              Icon(
                                                                            Icons.lock,
                                                                          ),
                                                                          suffixIcon:
                                                                              InkWell(
                                                                            onTap: () =>
                                                                                setState(
                                                                              () => passwordSingUpVisibility = !passwordSingUpVisibility,
                                                                            ),
                                                                            focusNode:
                                                                                FocusNode(skipTraversal: true),
                                                                            child:
                                                                                Icon(
                                                                              passwordSingUpVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                                              color: Color(0xFF757575),
                                                                              size: 22,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                        keyboardType:
                                                                            TextInputType.visiblePassword,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                final user =
                                                                    await createAccountWithEmail(
                                                                  context,
                                                                  emailIDSignUPController!
                                                                      .text,
                                                                  passwordSingUpController!
                                                                      .text,
                                                                );
                                                                if (user ==
                                                                    null) {
                                                                  return;
                                                                }

                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        NavBarPage(
                                                                            initialPage:
                                                                                'HomePage'),
                                                                  ),
                                                                );
                                                              },
                                                              text: 'Sign Up',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 330,
                                                                height: 40,
                                                                color: Color(
                                                                    0xFF125C89),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                            ),
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
                                      ],
                                    ),
                                  ),
                                if (FFAppState().isForgotPasswordWindow)
                                  Container(
                                    width: double.infinity,
                                    height: 310,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE0E0E6),
                                    ),
                                    child: DefaultTabController(
                                      length: 1,
                                      initialIndex: 0,
                                      child: Column(
                                        children: [
                                          TabBar(
                                            labelColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1,
                                            indicatorColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor,
                                            tabs: [
                                              Tab(
                                                text: 'Reset Password',
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: TabBarView(
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: Form(
                                                          key: formKey1,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20,
                                                                            20,
                                                                            20,
                                                                            0),
                                                                child:
                                                                    TextFormField(
                                                                  controller:
                                                                      emailIDController,
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    hintText:
                                                                        'Email',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2,
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFA8ADB6),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFA8ADB6),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    prefixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .email_outlined,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text: 'Reset',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 330,
                                                          height: 40,
                                                          color:
                                                              Color(0xFF125C89),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            setState(() =>
                                                                FFAppState()
                                                                        .isForgotPasswordWindow =
                                                                    false);
                                                            setState(() =>
                                                                FFAppState()
                                                                        .isUserSignInWindow =
                                                                    true);
                                                          },
                                                          child: Text(
                                                            'Cancel',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF125C89),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.9),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: SmoothPageIndicator(
                      controller: pageViewController ??=
                          PageController(initialPage: 0),
                      count: 4,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) {
                        pageViewController!.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 25,
                        radius: 16,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
                        paintStyle: PaintingStyle.fill,
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
