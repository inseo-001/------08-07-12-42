import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_main_model.dart';
export 'login_main_model.dart';

class LoginMainWidget extends StatefulWidget {
  const LoginMainWidget({super.key});

  static String routeName = 'LoginMain';
  static String routePath = '/loginMain';

  @override
  State<LoginMainWidget> createState() => _LoginMainWidgetState();
}

class _LoginMainWidgetState extends State<LoginMainWidget> {
  late LoginMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginMainModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: theme.info,
      body: SafeArea(
        top: true,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            return SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ---------- TOP SECTION ----------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // 상단 로고/타이틀
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
                          child: Text(
                            'Dormi',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 20,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
                          child: Text(
                            '로그인',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 30,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                          child: Text(
                            '이메일과 비밀번호를 입력하여 로그인하세요.',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              color: const Color(0xFF6C7278),
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                        ),

                        // Email 라벨
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 24, 24, 6),
                          child: Text(
                            'Email',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              letterSpacing: 0,
                            ),
                          ),
                        ),

                        // Email 입력
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: TextFormField(
                            controller: _model.textController1,
                            focusNode: _model.textFieldFocusNode1,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFB9C2D4), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: theme.error, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: theme.error, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: theme.secondaryBackground,
                            ),
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              letterSpacing: 0,
                            ),
                            cursorColor: theme.primaryText,
                            validator: _model.textController1Validator
                                .asValidator(context),
                          ),
                        ),

                        // Password 라벨
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 16, 24, 6),
                          child: Text(
                            'Password',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              letterSpacing: 0,
                            ),
                          ),
                        ),

                        // Password 입력
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: TextFormField(
                            controller: _model.textController2,
                            focusNode: _model.textFieldFocusNode2,
                            obscureText: !_model.passwordVisibility,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFB9C2D4), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: theme.error, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: theme.error, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: theme.secondaryBackground,
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                      () => _model.passwordVisibility =
                                  !_model.passwordVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  size: 22,
                                ),
                              ),
                            ),
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              letterSpacing: 0,
                            ),
                            cursorColor: theme.primaryText,
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ),

                        // 비밀번호 찾기
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FFButtonWidget(
                                onPressed: () => context
                                    .pushNamed(PassWordFindWidget.routeName),
                                text: '비밀번호를 잊으셨나요?',
                                options: FFButtonOptions(
                                  height: 24,
                                  color: theme.info,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0),
                                  textStyle: theme.titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: theme.titleSmall.fontWeight,
                                      fontStyle: theme.titleSmall.fontStyle,
                                    ),
                                    color: const Color(0xFF4D81E7),
                                    letterSpacing: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // ---------- BOTTOM SECTION ----------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // 로그인 버튼
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: FFButtonWidget(
                              onPressed: () =>
                                  context.pushNamed(HomePageWidget.routeName),
                              text: '로그인',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48,
                                color: const Color(0xFF0E1534),
                                elevation: 0,
                                textStyle: theme.titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: theme.titleSmall.fontWeight,
                                    fontStyle: theme.titleSmall.fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),

                          const SizedBox(height: 18),

                          // 회원가입 안내
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '계정이 없으신가요?',
                                style: theme.bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.bodyMedium.fontWeight,
                                    fontStyle: theme.bodyMedium.fontStyle,
                                  ),
                                  color: const Color(0xFF494C51),
                                  fontSize: 10,
                                  letterSpacing: 0,
                                ),
                              ),
                              const SizedBox(width: 6),
                              FFButtonWidget(
                                onPressed: () =>
                                    context.pushNamed(JoinMainWidget.routeName),
                                text: '회원가입',
                                options: FFButtonOptions(
                                  height: 24,
                                  color: theme.info,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0),
                                  textStyle: theme.titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: theme.titleSmall.fontStyle,
                                    ),
                                    color: const Color(0xFF4D81E7),
                                    fontSize: 10,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
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
            );
          },
        ),
      ),
    );
  }
}
