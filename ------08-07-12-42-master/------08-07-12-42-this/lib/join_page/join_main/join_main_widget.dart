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
import 'join_main_model.dart';
export 'join_main_model.dart';

class JoinMainWidget extends StatefulWidget {
  const JoinMainWidget({super.key});

  static String routeName = 'joinMain';
  static String routePath = '/joinMain';

  @override
  State<JoinMainWidget> createState() => _JoinMainWidgetState();
}

class _JoinMainWidgetState extends State<JoinMainWidget> {
  late JoinMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JoinMainModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textFieldMask7 = MaskTextInputFormatter(mask: '###-####-####');

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode9 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  // 공통 입력 필드 빌더(라벨 + 입력창)
  Widget _labeledField({
    required String label,
    required Widget field,
    EdgeInsetsGeometry labelPadding =
    const EdgeInsets.only(top: 12, bottom: 6),
  }) {
    final theme = FlutterFlowTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: labelPadding,
          child: Text(
            label,
            style: theme.bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: theme.bodyMedium.fontWeight,
                fontStyle: theme.bodyMedium.fontStyle,
              ),
              letterSpacing: 0,
            ),
          ),
        ),
        field,
      ],
    );
  }

  // 공통 텍스트필드 스타일
  InputDecoration _decoration({
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    final theme = FlutterFlowTheme.of(context);
    return InputDecoration(
      isDense: true,
      hintText: hint,
      hintStyle: theme.labelMedium.override(
        font: GoogleFonts.inter(
          fontWeight: theme.labelMedium.fontWeight,
          fontStyle: theme.labelMedium.fontStyle,
        ),
        color: theme.primaryText,
        letterSpacing: 0,
      ),
      labelStyle: theme.labelMedium.override(
        font: GoogleFonts.inter(
          fontWeight: theme.labelMedium.fontWeight,
          fontStyle: theme.labelMedium.fontStyle,
        ),
        letterSpacing: 0,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFB9C2D4), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent, width: 1),
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
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Scaffold(
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
                ],
              ),
              const SizedBox(height: 8),

              // 타이틀 & 서브
              Text(
                '회원가입',
                style: theme.titleLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.w900,
                    fontStyle: theme.titleLarge.fontStyle,
                  ),
                  fontSize: 24,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '계속하려면 계정을 만드세요!',
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

              // 아이디
              _labeledField(
                label: '아이디',
                field: TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  decoration:
                  _decoration(hint: 'ID', prefixIcon: const Icon(Icons.person)),
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                  validator:
                  _model.textController1Validator.asValidator(context),
                ),
              ),

              // 비밀번호
              _labeledField(
                label: '비밀번호',
                field: TextFormField(
                  controller: _model.textController2,
                  focusNode: _model.textFieldFocusNode2,
                  obscureText: !_model.passwordVisibility1,
                  decoration: _decoration(
                    hint: 'Password',
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                              () => _model.passwordVisibility1 = !_model.passwordVisibility1),
                      child: Icon(
                        _model.passwordVisibility1
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
                  validator:
                  _model.textController2Validator.asValidator(context),
                ),
              ),

              // 비밀번호 재입력
              _labeledField(
                label: '비밀번호 재입력',
                field: TextFormField(
                  controller: _model.textController3,
                  focusNode: _model.textFieldFocusNode3,
                  obscureText: !_model.passwordVisibility2,
                  decoration: _decoration(
                    hint: 'Password',
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                              () => _model.passwordVisibility2 = !_model.passwordVisibility2),
                      child: Icon(
                        _model.passwordVisibility2
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
                  validator:
                  _model.textController3Validator.asValidator(context),
                ),
              ),

              // 이름
              _labeledField(
                label: '이름',
                field: TextFormField(
                  controller: _model.textController4,
                  focusNode: _model.textFieldFocusNode4,
                  decoration: _decoration(hint: 'Name'),
                  keyboardType: TextInputType.name,
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                  validator:
                  _model.textController4Validator.asValidator(context),
                ),
              ),

              // 학번
              _labeledField(
                label: '학번',
                field: TextFormField(
                  controller: _model.textController5,
                  focusNode: _model.textFieldFocusNode5,
                  decoration: _decoration(hint: 'student number'),
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                  validator:
                  _model.textController5Validator.asValidator(context),
                ),
              ),

              // 생년월일
              _labeledField(
                label: '생년 월일',
                field: TextFormField(
                  controller: _model.textController6,
                  focusNode: _model.textFieldFocusNode6,
                  decoration: _decoration(
                    hint: 'YY/MM/DD',
                    suffixIcon: const Icon(Icons.calendar_today_outlined),
                  ),
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                  validator:
                  _model.textController6Validator.asValidator(context),
                ),
              ),

              // 전화번호 (국가코드 + 번호)
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6),
                child: Text(
                  '전화번호',
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 88,
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: const ['+82', '+1', '+81'],
                      onChanged: (val) =>
                          safeSetState(() => _model.dropDownValue = val),
                      height: 40,
                      textStyle: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0,
                      ),
                      hintText: '+82',
                      icon: Icon(Icons.keyboard_arrow_down_rounded,
                          color: theme.secondaryText),
                      fillColor: theme.secondaryBackground,
                      elevation: 2,
                      borderColor: const Color(0xFFB9C2D4),
                      borderWidth: 0,
                      borderRadius: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: _model.textController7,
                      focusNode: _model.textFieldFocusNode7,
                      keyboardType: TextInputType.number,
                      inputFormatters: [_model.textFieldMask7],
                      decoration: _decoration(hint: 'PhoneNumber'),
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0,
                      ),
                      validator:
                      _model.textController7Validator.asValidator(context),
                    ),
                  ),
                ],
              ),

              // 성별 (두 버튼 같은 폭)
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6),
                child: Text(
                  '성별',
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {},
                      text: '남자',
                      options: FFButtonOptions(
                        height: 40,
                        color: Colors.white,
                        elevation: 0,
                        textStyle: theme.titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: theme.titleSmall.fontWeight,
                            fontStyle: theme.titleSmall.fontStyle,
                          ),
                          color: theme.primaryText,
                          letterSpacing: 0,
                        ),
                        borderSide:
                        const BorderSide(color: Color(0xFFB9C2D4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {},
                      text: '여자',
                      options: FFButtonOptions(
                        height: 40,
                        color: theme.info,
                        elevation: 0,
                        textStyle: theme.titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: theme.titleSmall.fontWeight,
                            fontStyle: theme.titleSmall.fontStyle,
                          ),
                          color: theme.primaryText,
                          letterSpacing: 0,
                        ),
                        borderSide:
                        const BorderSide(color: Color(0xFFB9C2D4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),

              // 주소
              _labeledField(
                label: '거주 지역',
                field: TextFormField(
                  controller: _model.textController8,
                  focusNode: _model.textFieldFocusNode8,
                  decoration: _decoration(hint: 'adress'),
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                  validator:
                  _model.textController8Validator.asValidator(context),
                ),
              ),
              _labeledField(
                label: '상세주소',
                field: TextFormField(
                  controller: _model.textController9,
                  focusNode: _model.textFieldFocusNode9,
                  decoration: _decoration(hint: 'adress'),
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: theme.bodyMedium.fontWeight,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0,
                  ),
                  validator:
                  _model.textController9Validator.asValidator(context),
                ),
              ),

              // 약관 동의
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 6,
                      children: [
                        FFButtonWidget(
                          onPressed: () =>
                              context.pushNamed(TermsofUseWidget.routeName),
                          text: '개인정보 수집 및 이용약관에',
                          options: FFButtonOptions(
                            height: 32,
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8),
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
                        Text(
                          '동의 하십니까?',
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      unselectedWidgetColor: const Color(0xFF635D5D),
                    ),
                    child: Checkbox(
                      value: _model.checkboxValue ??= true,
                      onChanged: (v) => safeSetState(() {
                        _model.checkboxValue = v ?? false;
                      }),
                      side: const BorderSide(width: 2, color: Color(0xFF635D5D)),
                      activeColor: theme.primaryBackground,
                      checkColor: const Color(0xFF4D81E7),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // 회원가입 버튼
              SizedBox(
                width: double.infinity,
                height: 48,
                child: FFButtonWidget(
                  onPressed: () =>
                      context.pushNamed(JoinCompleteWidget.routeName),
                  text: '회원가입',
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

              // 로그인 링크
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '이미 계정이 있으신가요?',
                    style: theme.bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: theme.bodyMedium.fontWeight,
                        fontStyle: theme.bodyMedium.fontStyle,
                      ),
                      fontSize: 12,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(width: 8),
                  FFButtonWidget(
                    onPressed: () => context.pushNamed(LoginMainWidget.routeName),
                    text: '로그인',
                    options: FFButtonOptions(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}
