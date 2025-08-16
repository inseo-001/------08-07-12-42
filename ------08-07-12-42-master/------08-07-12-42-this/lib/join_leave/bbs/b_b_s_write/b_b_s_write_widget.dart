import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_b_s_write_model.dart';
export 'b_b_s_write_model.dart';

class BBSWriteWidget extends StatefulWidget {
  const BBSWriteWidget({super.key});

  static String routeName = 'BBSWrite';
  static String routePath = '/bBSWrite';

  @override
  State<BBSWriteWidget> createState() => _BBSWriteWidgetState();
}

class _BBSWriteWidgetState extends State<BBSWriteWidget> {
  late BBSWriteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // 폼 키
  final _titleFormKey = GlobalKey<FormState>();
  final _contentFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BBSWriteModel());

    _model.textController1 ??= TextEditingController(); // 제목
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(); // 내용
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
              // 상단 헤더
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderRadius: 9,
                        buttonSize: 36,
                        icon: const Icon(Icons.keyboard_backspace, color: Colors.black, size: 24),
                        onPressed: () => context.pushNamed(BBSListWidget.routeName),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Text(
                              '게시글 작성',
                              style: theme.bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: theme.bodyMedium.fontStyle,
                                ),
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 2, 0, 0),
                            child: Text(
                              '새로운 게시글을 작성해보세요',
                              style: theme.labelMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: theme.labelMedium.fontWeight,
                                  fontStyle: theme.labelMedium.fontStyle,
                                ),
                                fontSize: 10,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 5, 12, 0),
                      child: SizedBox(
                        height: 32,
                        child: FFButtonWidget(
                          onPressed: _onSubmit,
                          text: '게시하기',
                          options: FFButtonOptions(
                            height: 32,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            color: const Color(0xFF0C62FD),
                            textStyle: theme.titleSmall.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FontWeight.w400,
                                fontStyle: theme.titleSmall.fontStyle,
                              ),
                              color: const Color(0xFFF6F2F2),
                              fontSize: 12,
                            ),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // 제목
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 20, 0, 0),
                child: _Label(context, '제목'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 6, 25, 0),
                child: Form(
                  key: _titleFormKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: _FFTextField(
                    controller: _model.textController1!,
                    focusNode: _model.textFieldFocusNode1!,
                    hintText: '게시글 제목을 입력하세요...',
                    validator: _model.textController1Validator.asValidator(context),
                    maxLines: 1,
                  ),
                ),
              ),

              // 내용
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 24, 0, 0),
                child: _Label(context, '내용'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 6, 25, 0),
                child: Form(
                  key: _contentFormKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: _FFTextField(
                    controller: _model.textController2!,
                    focusNode: _model.textFieldFocusNode2!,
                    hintText: '게시글 내용을 입력하세요.',
                    validator: _model.textController2Validator.asValidator(context),
                    maxLines: 10,
                    maxLength: 1000,
                  ),
                ),
              ),

              // 이미지 업로드 영역 (UI)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 16, 0, 0),
                child: _Label(context, '이미지 첨부'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 310.1,
                        height: 113.2,
                        decoration: BoxDecoration(
                          color: theme.info,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFC3BFBF)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.drive_folder_upload_outlined,
                                color: theme.secondaryText, size: 30),
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
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onSubmit() async {
    final titleOK = _titleFormKey.currentState?.validate() ?? false;
    final contentOK = _contentFormKey.currentState?.validate() ?? false;

    if (!titleOK || !contentOK) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('제목과 내용을 확인해 주세요.'),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
      return;
    }

    // TODO: 서버 전송 로직 연결
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('게시글이 등록되었습니다.'),
        backgroundColor: FlutterFlowTheme.of(context).primary,
      ),
    );

    // 목록 화면으로 이동
    context.pushNamed(BBSListWidget.routeName);
  }
}

/// ===== 공통 위젯 =====

Widget _Label(BuildContext context, String text) {
  final theme = FlutterFlowTheme.of(context);
  return Text(
    text,
    style: theme.bodyMedium.override(
      font: GoogleFonts.inter(
        fontWeight: theme.bodyMedium.fontWeight,
        fontStyle: theme.bodyMedium.fontStyle,
      ),
      fontSize: 15,
      letterSpacing: 0,
    ),
  );
}

class _FFTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final String? Function(String?)? validator;
  final int maxLines;
  final int? maxLength;

  const _FFTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText = '',
    this.validator,
    this.maxLines = 1,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      autofocus: false,
      obscureText: false,
      maxLines: maxLines,
      maxLength: maxLength,
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
          letterSpacing: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFD4CFCF), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFB9C2D4), width: 1),
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
      ),
      style: theme.bodyMedium.override(
        font: GoogleFonts.inter(
          fontWeight: theme.bodyMedium.fontWeight,
          fontStyle: theme.bodyMedium.fontStyle,
        ),
        letterSpacing: 0,
      ),
      cursorColor: theme.primaryText,
      validator: validator,
    );
  }
}
