import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'pass_word_find_model.dart';
export 'pass_word_find_model.dart';

/// 비밀번호 찾기
class PassWordFindWidget extends StatefulWidget {
  const PassWordFindWidget({super.key});

  static String routeName = 'PassWordFind';
  static String routePath = '/passWordFind';

  @override
  State<PassWordFindWidget> createState() => _PassWordFindWidgetState();
}

class _PassWordFindWidgetState extends State<PassWordFindWidget> {
  late PassWordFindModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassWordFindModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    /// 010-1234-5678 형태
    _model.textFieldMask = MaskTextInputFormatter(mask: '###-####-####');
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 헤더
                Row(
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8,
                      buttonSize: 40,
                      icon: Icon(Icons.arrow_back,
                          color: theme.primaryText, size: 22),
                      onPressed: () => context.pushNamed(LoginMainWidget.routeName),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '비밀번호 찾기',
                      style: theme.titleLarge.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.w900,
                          fontStyle: theme.titleLarge.fontStyle,
                        ),
                        fontSize: 22,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),
                Text(
                  '계정에 연결된 전화번호를 입력하세요.',
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
                Text(
                  '전화번호',
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 8),

                // 국가코드 + 번호 입력 한 줄
                Row(
                  children: [
                    SizedBox(
                      width: 86, // 너무 좁지 않게 최소 고정
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>('+82'),
                        options: const ['+82', '+1', '+81'],
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
                        height: 44,
                        textStyle: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: theme.bodyMedium.fontWeight,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          letterSpacing: 0,
                        ),
                        hintText: '+82',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: theme.secondaryText,
                          size: 20,
                        ),
                        fillColor: theme.secondaryBackground,
                        elevation: 0,
                        borderColor: const Color(0xFFB9C2D4),
                        borderWidth: 1,
                        borderRadius: 8,
                        margin:
                        const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        keyboardType: TextInputType.number,
                        inputFormatters: [_model.textFieldMask],
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: '010-1234-5678',
                          hintStyle: theme.labelMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.labelMedium.fontWeight,
                              fontStyle: theme.labelMedium.fontStyle,
                            ),
                            letterSpacing: 0,
                            color: theme.secondaryText,
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
                              color: theme.primaryText.withOpacity(.3),
                              width: 1,
                            ),
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
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                        ),
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: theme.bodyMedium.fontWeight,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          letterSpacing: 0,
                        ),
                        validator:
                        _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                // 코드 보내기 버튼
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FFButtonWidget(
                    onPressed: () =>
                        context.pushNamed(PassWordCordWidget.routeName),
                    text: '코드 보내기',
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

                const SizedBox(height: 20),
                const Divider(height: 1),

                // 회원가입 CTA
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '회원가입을 안하셨나요?',
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        fontSize: 12,
                        letterSpacing: 0,
                      ),
                    ),
                    const SizedBox(width: 6),
                    FFButtonWidget(
                      onPressed: () => context.pushNamed(JoinMainWidget.routeName),
                      text: '회원가입',
                      options: FFButtonOptions(
                        height: 32,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        color: theme.info,
                        elevation: 0,
                        textStyle: theme.titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: theme.titleSmall.fontWeight,
                            fontStyle: theme.titleSmall.fontStyle,
                          ),
                          color: const Color(0xFF4D81E7),
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
