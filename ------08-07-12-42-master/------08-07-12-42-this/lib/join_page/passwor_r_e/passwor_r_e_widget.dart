import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'passwor_r_e_model.dart';
export 'passwor_r_e_model.dart';

class PassworREWidget extends StatefulWidget {
  const PassworREWidget({super.key});

  static String routeName = 'PassworRE';
  static String routePath = '/passworRE';

  @override
  State<PassworREWidget> createState() => _PassworREWidgetState();
}

class _PassworREWidgetState extends State<PassworREWidget> {
  late PassworREModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  bool get _pwVisible1 => _model.passwordVisibility1;
  bool get _pwVisible2 => _model.passwordVisibility2;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassworREModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.passwordVisibility1 = false;
    _model.passwordVisibility2 = false;
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  bool _isStrong(String v) => v.length >= 8; // 필요하면 규칙 추가 (영문/숫자/특수문자 등)
  bool get _matched =>
      _model.textController1?.text == _model.textController2?.text &&
          (_model.textController1?.text.isNotEmpty ?? false);

  bool get _canSubmit =>
      _isStrong(_model.textController1?.text ?? '') && _matched;

  String? _validateNewPw(String? v) {
    final val = (v ?? '').trim();
    if (val.isEmpty) return '새 비밀번호를 입력해 주세요.';
    if (!_isStrong(val)) return '8자 이상으로 입력해 주세요.';
    return null;
  }

  String? _validateConfirmPw(String? v) {
    final val = (v ?? '').trim();
    if (val.isEmpty) return '비밀번호를 다시 입력해 주세요.';
    if (val != _model.textController1?.text.trim()) return '비밀번호가 일치하지 않습니다.';
    return null;
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
          top: true,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxContentWidth =
              constraints.maxWidth < 600 ? constraints.maxWidth : 600.0;
              return Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContentWidth),
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    children: [
                      // 헤더
                      Row(
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8,
                            buttonSize: 40,
                            icon: Icon(
                              Icons.arrow_back,
                              color: theme.primaryText,
                              size: 22,
                            ),
                            onPressed: () {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              } else {
                                context.pushNamed(PassWordCordWidget.routeName);
                              }
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // 제목
                      Text(
                        '비밀번호 찾기',
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w900,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        '비밀번호를 입력하세요',
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: theme.bodyMedium.fontWeight,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          color: const Color(0xFF6C7278),
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // 새 비밀번호
                            Text(
                              '새 비밀번호',
                              style: theme.bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: theme.bodyMedium.fontWeight,
                                  fontStyle: theme.bodyMedium.fontStyle,
                                ),
                                letterSpacing: 0,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              obscureText: !_pwVisible1,
                              onChanged: (_) => safeSetState(() {}),
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: '새 비밀번호 (8자 이상)',
                                hintStyle: theme.labelMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.labelMedium.fontWeight,
                                    fontStyle: theme.labelMedium.fontStyle,
                                  ),
                                  color: theme.primaryText,
                                  letterSpacing: 0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFB9C2D4),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: theme.primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: theme.error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: theme.error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: theme.secondaryBackground,
                                suffixIcon: InkWell(
                                  onTap: () => safeSetState(
                                          () => _model.passwordVisibility1 =
                                      !_model.passwordVisibility1),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _pwVisible1
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
                              validator: _validateNewPw,
                            ),

                            const SizedBox(height: 20),

                            // 비밀번호 재입력
                            Text(
                              '비밀번호 재입력',
                              style: theme.bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: theme.bodyMedium.fontWeight,
                                  fontStyle: theme.bodyMedium.fontStyle,
                                ),
                                letterSpacing: 0,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              obscureText: !_pwVisible2,
                              onChanged: (_) => safeSetState(() {}),
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: '새 비밀번호 다시 입력',
                                hintStyle: theme.labelMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.labelMedium.fontWeight,
                                    fontStyle: theme.labelMedium.fontStyle,
                                  ),
                                  color: theme.primaryText,
                                  letterSpacing: 0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFB9C2D4),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: theme.primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: theme.error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: theme.error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: theme.secondaryBackground,
                                suffixIcon: InkWell(
                                  onTap: () => safeSetState(
                                          () => _model.passwordVisibility2 =
                                      !_model.passwordVisibility2),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _pwVisible2
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
                              validator: _validateConfirmPw,
                            ),

                            const SizedBox(height: 28),

                            // 제출 버튼
                            SizedBox(
                              height: 48,
                              child: FFButtonWidget(
                                onPressed: _canSubmit
                                    ? () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    context.pushNamed(
                                        CompletePassWordWidget.routeName);
                                  }
                                }
                                    : null,
                                text: '비밀번호 재설정',
                                options: FFButtonOptions(
                                  height: 48,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  color: const Color(0xFF0E1534),
                                  disabledColor: const Color(0xFFBDBDBD),
                                  textStyle: theme.titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: theme.titleSmall.fontWeight,
                                      fontStyle: theme.titleSmall.fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0,
                                  ),
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).padding.bottom),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
