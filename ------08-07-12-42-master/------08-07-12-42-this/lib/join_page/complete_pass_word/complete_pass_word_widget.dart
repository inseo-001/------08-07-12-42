import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'complete_pass_word_model.dart';
export 'complete_pass_word_model.dart';

class CompletePassWordWidget extends StatefulWidget {
  const CompletePassWordWidget({super.key});

  static String routeName = 'CompletePassWord';
  static String routePath = '/completePassWord';

  @override
  State<CompletePassWordWidget> createState() => _CompletePassWordWidgetState();
}

class _CompletePassWordWidgetState extends State<CompletePassWordWidget> {
  late CompletePassWordModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompletePassWordModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.info,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 아이콘(선택)
                    Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: theme.secondaryBackground,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.lock_reset_rounded,
                          size: 48, color: theme.primary),
                    ),
                    const SizedBox(height: 20),

                    // 제목
                    Text(
                      '비밀번호 변경 완료',
                      textAlign: TextAlign.center,
                      style: theme.displayLarge.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.w700,
                          fontStyle: theme.displayLarge.fontStyle,
                        ),
                        fontSize: 30,
                        letterSpacing: 0,
                        shadows: [
                          Shadow(
                            color: theme.secondaryText,
                            offset: const Offset(1.5, 1.5),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // 서브 텍스트
                    Text(
                      '성공적으로 비밀번호가 변경되었습니다.',
                      textAlign: TextAlign.center,
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        color: theme.secondaryText,
                        fontSize: 12,
                        letterSpacing: 0,
                      ),
                    ),

                    const SizedBox(height: 32),

                    // 버튼
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: FFButtonWidget(
                        onPressed: () =>
                            context.pushNamed(LoginMainWidget.routeName),
                        text: '로그인으로 돌아가기',
                        options: FFButtonOptions(
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
