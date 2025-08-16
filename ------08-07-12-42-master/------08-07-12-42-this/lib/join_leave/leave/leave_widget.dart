import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'leave_model.dart';
export 'leave_model.dart';

class LeaveWidget extends StatefulWidget {
  const LeaveWidget({super.key});
  static String routeName = 'Leave';
  static String routePath = '/leave';

  @override
  State<LeaveWidget> createState() => _LeaveWidgetState();
}

class _LeaveWidgetState extends State<LeaveWidget> {
  late LeaveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaveModel());

    _model.textController1 ??= TextEditingController(); // 이름
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(); // 학번
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController(); // 학과
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController(); // 학년
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController(); // 퇴사 예정일
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController(); // 퇴사 사유
    _model.textFieldFocusNode6 ??= FocusNode();
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
              // ───────── 상단 바 ─────────
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 9,
                      buttonSize: 28.5,
                      icon: const Icon(
                        Icons.keyboard_backspace,
                        color: Colors.black,
                        size: 26,
                      ),
                      onPressed: () {
                        if (Navigator.of(context).canPop()) {
                          context.pop(); // 진짜 뒤로가기
                        } else {
                          // 스택이 없으면 메뉴로 이동 (대체)
                          context.goNamed(MenuMainWidget.routeName);
                        }
                      },
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '퇴사 신청',
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
                  ],
                ),
              ),
              const Divider(thickness: 2),

              // ───────── 신청자 정보 ─────────
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: _Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SectionTitle(context, '신청자 정보'),
                      const SizedBox(height: 16),

                      _Label(context, '이름 *'),
                      const SizedBox(height: 5),
                      Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.always,
                        child: _TextField(
                          controller: _model.textController1!,
                          focusNode: _model.textFieldFocusNode1!,
                          hintText: '이름을 입력하세요',
                          validator: _model.textController1Validator.asValidator(context),
                        ),
                      ),
                      const SizedBox(height: 10),

                      _Label(context, '학번 *'),
                      const SizedBox(height: 5),
                      Form(
                        key: _model.formKey6,
                        autovalidateMode: AutovalidateMode.always,
                        child: _TextField(
                          controller: _model.textController2!,
                          focusNode: _model.textFieldFocusNode2!,
                          hintText: '학번을 입력하세요',
                          keyboardType: TextInputType.number,
                          validator: _model.textController2Validator.asValidator(context),
                        ),
                      ),
                      const SizedBox(height: 10),

                      _Label(context, '학과 *'),
                      const SizedBox(height: 5),
                      Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.always,
                        child: _TextField(
                          controller: _model.textController3!,
                          focusNode: _model.textFieldFocusNode3!,
                          hintText: '학과를 입력하세요',
                          validator: _model.textController3Validator.asValidator(context),
                        ),
                      ),
                      const SizedBox(height: 10),

                      _Label(context, '학년 *'),
                      const SizedBox(height: 5),
                      Form(
                        key: _model.formKey5,
                        autovalidateMode: AutovalidateMode.always,
                        child: _TextField(
                          controller: _model.textController4!,
                          focusNode: _model.textFieldFocusNode4!,
                          hintText: '학년을 입력하세요',
                          validator: _model.textController4Validator.asValidator(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ───────── 퇴사 정보 ─────────
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: _Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SectionTitle(context, '퇴사 정보'),
                      const SizedBox(height: 16),

                      _Label(context, '퇴사 예정일 *'),
                      const SizedBox(height: 5),
                      Form(
                        key: _model.formKey3,
                        autovalidateMode: AutovalidateMode.always,
                        child: _TextField(
                          controller: _model.textController5!,
                          focusNode: _model.textFieldFocusNode5!,
                          hintText: 'YYYY-MM-DD',
                          validator: _model.textController5Validator.asValidator(context),
                          suffixIcon: const Icon(Icons.calendar_today),
                        ),
                      ),
                      const SizedBox(height: 10),

                      _Label(context, '퇴사 사유 *'),
                      const SizedBox(height: 5),
                      Form(
                        key: _model.formKey4,
                        autovalidateMode: AutovalidateMode.always,
                        child: _TextField(
                          controller: _model.textController6!,
                          focusNode: _model.textFieldFocusNode6!,
                          hintText: '퇴사 사유를 입력하세요',
                          validator: _model.textController6Validator.asValidator(context),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ───────── 서류 첨부(업로드 UI 더미) ─────────
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: _Card(
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
                          height: 113.2,
                          decoration: BoxDecoration(
                            color: theme.info,
                            borderRadius: BorderRadius.circular(8.0),
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
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'PDF, JPG, PNG 파일만 업로드 가능',
                                style: theme.labelSmall.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.labelSmall.fontWeight,
                                    fontStyle: theme.labelSmall.fontStyle,
                                  ),
                                  fontSize: 8,
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
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FFButtonWidget(
                    onPressed: () async {
                      final valid = (_model.formKey1.currentState?.validate() ?? false) &&
                          (_model.formKey2.currentState?.validate() ?? false) &&
                          (_model.formKey3.currentState?.validate() ?? false) &&
                          (_model.formKey4.currentState?.validate() ?? false) &&
                          (_model.formKey5.currentState?.validate() ?? false) &&
                          (_model.formKey6.currentState?.validate() ?? false);

                      if (!valid) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('필수 입력값을 확인해 주세요.'),
                            backgroundColor: theme.error,
                          ),
                        );
                        return;
                      }

                      // TODO: 파일 첨부 필수 검사/서버 업로드 로직 연결
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('퇴사 신청이 제출되었습니다.'),
                          backgroundColor: theme.primary,
                        ),
                      );
                    },
                    text: '퇴사 신청하기',
                    options: FFButtonOptions(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      color: const Color(0xFF0E1534),
                      textStyle: theme.titleSmall.override(
                        font: GoogleFonts.interTight(
                          fontWeight: theme.titleSmall.fontWeight,
                          fontStyle: theme.titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
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

/// 공통 카드 컨테이너
class _Card extends StatelessWidget {
  final Widget child;
  const _Card({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.secondaryBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFC3BFBF)),
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
      child: child,
    );
  }
}

/// 섹션 타이틀
Widget _SectionTitle(BuildContext context, String text) {
  final theme = FlutterFlowTheme.of(context);
  return Text(
    text,
    style: theme.headlineMedium.override(
      font: GoogleFonts.interTight(
        fontWeight: theme.headlineMedium.fontWeight,
        fontStyle: theme.headlineMedium.fontStyle,
      ),
      fontSize: 16,
      letterSpacing: 0,
    ),
  );
}

/// 라벨
Widget _Label(BuildContext context, String text) {
  final theme = FlutterFlowTheme.of(context);
  return Text(
    text,
    style: theme.headlineMedium.override(
      font: GoogleFonts.interTight(
        fontWeight: theme.headlineMedium.fontWeight,
        fontStyle: theme.headlineMedium.fontStyle,
      ),
      fontSize: 12,
      letterSpacing: 0,
    ),
  );
}

/// 공통 텍스트필드
class _TextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int maxLines;
  final Widget? suffixIcon;

  const _TextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.keyboardType,
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
      maxLines: maxLines,
      decoration: InputDecoration(
        isDense: true,
        labelStyle: theme.labelMedium.override(
          font: GoogleFonts.inter(
            fontWeight: theme.labelMedium.fontWeight,
            fontStyle: theme.labelMedium.fontStyle,
          ),
          letterSpacing: 0,
        ),
        hintText: hintText,
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
