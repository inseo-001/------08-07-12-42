import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/services.dart';
import 'join_model.dart';
export 'join_model.dart';

class JoinWidget extends StatefulWidget {
  const JoinWidget({super.key});

  static String routeName = 'Join';
  static String routePath = '/join';

  @override
  State<JoinWidget> createState() => _JoinWidgetState();
}

class _JoinWidgetState extends State<JoinWidget> {
  late JoinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JoinModel());

    // 신청자 정보
    _model.textController1 ??= TextEditingController(); // 이름
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(); // 학번
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController(); // 학과
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController(); // 학년
    _model.textFieldFocusNode4 ??= FocusNode();

    // 연락처 정보
    _model.textController5 ??= TextEditingController(); // 본인 연락처
    _model.textFieldFocusNode5 ??= FocusNode();
    _model.textFieldMask5 = MaskTextInputFormatter(mask: '##.##.####'); // 네 코드 그대로 사용

    _model.textController6 ??= TextEditingController(); // 보호자 연락처
    _model.textFieldFocusNode6 ??= FocusNode();
    _model.textFieldMask6 = MaskTextInputFormatter(mask: '##.##.####'); // 네 코드 그대로 사용

    // 기숙사 정보
    _model.textController7 ??= TextEditingController(); // 희망 호실
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController(); // 입사 사유
    _model.textFieldFocusNode8 ??= FocusNode();
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
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // 상단바
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderRadius: 9,
                        buttonSize: 28.5,
                        icon: const Icon(Icons.keyboard_backspace, color: Colors.black, size: 26),
                        onPressed: () {
                          if (Navigator.of(context).canPop()) {
                            context.pop(); // 진짜 뒤로가기
                          } else {
                            // 스택이 없으면 메뉴로 이동 (대체)
                            context.goNamed(MenuMainWidget.routeName);
                          }
                        },
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                      child: Text(
                        '입사 신청',
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 2),

              // ───────── 신청자 정보 ─────────
              _SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SectionTitle(context, '신청자 정보'),
                    const SizedBox(height: 16),

                    _Label(context, '이름 *'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey7,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController1!,
                        focusNode: _model.textFieldFocusNode1!,
                        validator: _model.textController1Validator.asValidator(context),
                      ),
                    ),
                    const SizedBox(height: 10),

                    _Label(context, '학번 *'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey2,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController2!,
                        focusNode: _model.textFieldFocusNode2!,
                        keyboardType: TextInputType.number,
                        validator: _model.textController2Validator.asValidator(context),
                      ),
                    ),
                    const SizedBox(height: 10),

                    _Label(context, '학과 *'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey5,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController3!,
                        focusNode: _model.textFieldFocusNode3!,
                        validator: _model.textController3Validator.asValidator(context),
                      ),
                    ),
                    const SizedBox(height: 10),

                    _Label(context, '학년 *'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey3,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController4!,
                        focusNode: _model.textFieldFocusNode4!,
                        validator: _model.textController4Validator.asValidator(context),
                      ),
                    ),
                  ],
                ),
              ),

              // ───────── 연락처 정보 ─────────
              _SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SectionTitle(context, '연락처 정보'),
                    const SizedBox(height: 16),

                    _Label(context, '본인 연락처 *'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey6,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController5!,
                        focusNode: _model.textFieldFocusNode5!,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[_model.textFieldMask5],
                        validator: _model.textController5Validator.asValidator(context),
                        hintText: '',
                      ),
                    ),
                    const SizedBox(height: 10),

                    _Label(context, '보호자 연락처 *'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey8,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController6!,
                        focusNode: _model.textFieldFocusNode6!,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[_model.textFieldMask6],
                        validator: _model.textController6Validator.asValidator(context),
                        hintText: '',
                      ),
                    ),
                  ],
                ),
              ),

              // ───────── 기숙사 정보 ─────────
              _SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SectionTitle(context, '기숙사 정보'),
                    const SizedBox(height: 16),

                    _Label(context, '희망 호실'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey1,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController7!,
                        focusNode: _model.textFieldFocusNode7!,
                        validator: _model.textController7Validator.asValidator(context),
                      ),
                    ),
                    const SizedBox(height: 10),

                    _Label(context, '입사 사유'),
                    const SizedBox(height: 5),
                    Form(
                      key: _model.formKey4,
                      autovalidateMode: AutovalidateMode.always,
                      child: _FFTextField(
                        controller: _model.textController8!,
                        focusNode: _model.textFieldFocusNode8!,
                        validator: _model.textController8Validator.asValidator(context),
                      ),
                    ),
                  ],
                ),
              ),

              // ───────── 서류 첨부 (UI만) ─────────
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFC3BFBF)),
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SectionTitle(context, '서류 첨부'),
                      const SizedBox(height: 10),
                      _Label(context, '첨부 서류 (필수)'),
                      const SizedBox(height: 15),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: double.infinity,
                          height: 113,
                          decoration: BoxDecoration(
                            color: theme.info,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xFFC3BFBF)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.drive_folder_upload_outlined, size: 30),
                              const SizedBox(height: 6),
                              Text(
                                '클릭하여 파일을 선택하세요',
                                style: theme.bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.bodyMedium.fontWeight,
                                    fontStyle: theme.bodyMedium.fontStyle,
                                  ),
                                  fontSize: 13,
                                  letterSpacing: 0,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'PDF, JPG, PNG 파일만 업로드 가능',
                                style: theme.labelSmall.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.labelSmall.fontWeight,
                                    fontStyle: theme.labelSmall.fontStyle,
                                  ),
                                  fontSize: 8,
                                  letterSpacing: 0,
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

              // ───────── 제출 버튼 ─────────
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 314.3,
                      height: 45.5,
                      child: FFButtonWidget(
                        onPressed: () async {
                          final valid = (_model.formKey7.currentState?.validate() ?? true) &&
                              (_model.formKey2.currentState?.validate() ?? true) &&
                              (_model.formKey5.currentState?.validate() ?? true) &&
                              (_model.formKey3.currentState?.validate() ?? true) &&
                              (_model.formKey6.currentState?.validate() ?? true) &&
                              (_model.formKey8.currentState?.validate() ?? true) &&
                              (_model.formKey1.currentState?.validate() ?? true) &&
                              (_model.formKey4.currentState?.validate() ?? true);

                          if (!valid) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('필수 항목을 확인해 주세요.'),
                                backgroundColor: theme.error,
                              ),
                            );
                            return;
                          }

                          // TODO: 서버 전송 로직 연결
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('입사 신청이 제출되었습니다.'),
                              backgroundColor: theme.primary,
                            ),
                          );

                          context.pushNamed(JoinCompleteWidget.routeName);
                        },
                        text: '입사 신청하기',
                        options: FFButtonOptions(
                          height: 64.5,
                          padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          color: const Color(0xFF0E1534),
                          textStyle: theme.titleSmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: theme.titleSmall.fontWeight,
                              fontStyle: theme.titleSmall.fontStyle,
                            ),
                            color: Colors.white,
                          ),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
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
    );
  }
}

/// ========== 공통 UI 위젯 ==========

class _SectionCard extends StatelessWidget {
  final Widget child;
  const _SectionCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.info,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFC3BFBF)),
        ),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: child,
      ),
    );
  }
}

Widget _SectionTitle(BuildContext context, String text) {
  final theme = FlutterFlowTheme.of(context);
  return Text(
    text,
    style: theme.headlineMedium.override(
      font: GoogleFonts.interTight(
        fontWeight: theme.headlineMedium.fontWeight,
        fontStyle: theme.headlineMedium.fontStyle,
      ),
      fontSize: 15,
      letterSpacing: 0,
    ),
  );
}

Widget _Label(BuildContext context, String text) {
  final theme = FlutterFlowTheme.of(context);
  return Text(
    text,
    style: theme.headlineMedium.override(
      font: GoogleFonts.interTight(
        fontWeight: theme.headlineMedium.fontWeight,
        fontStyle: theme.headlineMedium.fontStyle,
      ),
      fontSize: 11,
      letterSpacing: 0,
    ),
  );
}

class _FFTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final int maxLines;
  final Widget? suffixIcon;

  const _FFTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText = '',
    this.keyboardType,
    this.inputFormatters,
    this.validator,
    this.maxLines = 1,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      autofocus: false,
      obscureText: false,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        labelStyle: theme.labelMedium.override(
          font: GoogleFonts.inter(
            fontWeight: theme.labelMedium.fontWeight,
            fontStyle: theme.labelMedium.fontStyle,
          ),
          letterSpacing: 0,
        ),
        hintStyle: theme.labelMedium.override(
          font: GoogleFonts.inter(
            fontWeight: theme.labelMedium.fontWeight,
            fontStyle: theme.labelMedium.fontStyle,
          ),
          fontSize: 10,
          letterSpacing: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFB9C2D4), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0x00000000), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.error, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.error, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: theme.secondaryBackground,
        suffixIcon: suffixIcon,
      ),
      style: theme.bodyMedium.override(
        font: GoogleFonts.inter(
          fontWeight: theme.bodyMedium.fontWeight,
          fontStyle: theme.bodyMedium.fontStyle,
        ),
        fontSize: 10,
        letterSpacing: 0,
      ),
      cursorColor: theme.primaryText,
      validator: validator,
    );
  }
}
