import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_b_s_main_model.dart';
export 'b_b_s_main_model.dart';

class BBSMainWidget extends StatefulWidget {
  const BBSMainWidget({super.key});

  static String routeName = 'BBSMain';
  static String routePath = '/bBSMain';

  @override
  State<BBSMainWidget> createState() => _BBSMainWidgetState();
}

class _BBSMainWidgetState extends State<BBSMainWidget> {
  late BBSMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BBSMainModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
              // 헤더
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Row(
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 9.0,
                      buttonSize: 36.0,
                      icon: const Icon(Icons.keyboard_backspace, color: Colors.black, size: 24),
                      onPressed: () => context.pushNamed(BBSListWidget.routeName),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '게시글',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '게시글 상세보기',
                            style: theme.labelMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.labelMedium.fontWeight,
                                fontStyle: theme.labelMedium.fontStyle,
                              ),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const _Divider(),

              // 제목 + 메뉴 아이콘
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '기숙사 세탁실 이용 팁 공유해요!',
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      buttonSize: 32,
                      icon: Icon(Icons.keyboard_control_sharp, color: theme.primaryText, size: 18),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              // 작성자 / 시간 / 조회수
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 20, 10),
                child: Row(
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Text(
                            '김민수',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              color: const Color(0xFF676767),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '2024-07-01 14 : 30',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              color: const Color(0xFF676767),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Row(
                      children: [
                        const Icon(Icons.visibility_outlined, color: Color(0xFF676767), size: 16),
                        const SizedBox(width: 4),
                        Text(
                          '122',
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                            color: const Color(0xFF676767),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // 본문
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  '안녕하세요! 기숙사 생활 한 학기째인 학생입니다/\n\n'
                      '세탁실을 이용하면서 알게된 팁들을 공유하려고 해요\n\n'
                      '1. 세탁기 사용 전 필터 청소하기\n이전 사용자가 남긴 이물질이 어쩌고\n\n'
                      '2. 세제는 적당량만\n너무많이 넣으면 행굼이 힘들어요\n\n'
                      '3. 세탁완료 알림받기\n앱으로 알림설정하면 편해요\n\n'
                      '4. 피크 시간 피하기\n저녁 8시는 시간이 길어요\n\n\n'
                      '다들 도움이 되었으면 좋겠어요 !',
                  style: theme.bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontStyle: theme.bodyMedium.fontStyle,
                    ),
                    color: const Color(0xFF676767),
                  ),
                ),
              ),

              const _Divider(),

              // 좋아요/댓글 수
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 6, 24, 0),
                child: Row(
                  children: [
                    const Icon(Icons.favorite_border, color: Color(0xFF676767), size: 17),
                    const SizedBox(width: 6),
                    Text(
                      '15',
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        color: const Color(0xFF676767),
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Icon(Icons.chat_bubble_outline_rounded, color: Color(0xFF676767), size: 17),
                    const SizedBox(width: 6),
                    Text(
                      '8',
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        color: const Color(0xFF676767),
                      ),
                    ),
                  ],
                ),
              ),

              const _Divider(top: 10),

              // 댓글 헤더
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                child: Row(
                  children: [
                    Text(
                      '댓글 2개',
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              // 댓글 입력창
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.secondaryBackground,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFD4CFCF)),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: '댓글을 입력하세요..',
                            hintStyle: theme.labelMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.labelMedium.fontWeight,
                                fontStyle: theme.labelMedium.fontStyle,
                              ),
                              fontSize: 12,
                            ),
                          ),
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                          ),
                          validator: _model.textControllerValidator.asValidator(context),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      color: const Color(0xFF0063FF),
                      borderRadius: BorderRadius.circular(24),
                      child: InkWell(
                        onTap: () {
                          // TODO: 댓글 등록 로직 연결
                        },
                        borderRadius: BorderRadius.circular(24),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          child: Text(
                            '등록',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // 댓글 리스트 아이템 1
              _CommentItem(
                name: '이영수',
                time: '2024-07-01 14 : 30',
                content: '정말 유용한 정보네요! 감사합니다.',
                likeCount: '2',
              ),

              // 댓글 리스트 아이템 2
              _CommentItem(
                name: '이민구',
                time: '2024-07-01 14 : 30',
                content: '응어쩔',
                likeCount: '999',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 구분선(좌우 꽉 차게)
class _Divider extends StatelessWidget {
  final double top;
  final double bottom;
  const _Divider({this.top = 0, this.bottom = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom),
      child: Divider(
        thickness: 2,
        height: 2,
        color: FlutterFlowTheme.of(context).alternate,
      ),
    );
  }
}

/// 댓글 아이템 카드
class _CommentItem extends StatelessWidget {
  final String name;
  final String time;
  final String content;
  final String likeCount;

  const _CommentItem({
    required this.name,
    required this.time,
    required this.content,
    required this.likeCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.info,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: theme.info),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 이름 / 날짜
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
              child: Row(
                children: [
                  Text(
                    name,
                    style: theme.bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontStyle: theme.bodyMedium.fontStyle,
                      ),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    time,
                    style: theme.bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: theme.bodyMedium.fontWeight,
                        fontStyle: theme.bodyMedium.fontStyle,
                      ),
                      color: const Color(0xFF676767),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            // 내용
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
              child: Text(
                content,
                style: theme.bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: theme.bodyMedium.fontWeight,
                    fontStyle: theme.bodyMedium.fontStyle,
                  ),
                  color: const Color(0xFF525252),
                ),
              ),
            ),

            // 좋아요
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Row(
                children: [
                  const Icon(Icons.favorite_border, color: Color(0xFF676767), size: 17),
                  const SizedBox(width: 6),
                  Text(
                    likeCount,
                    style: theme.bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: theme.bodyMedium.fontWeight,
                        fontStyle: theme.bodyMedium.fontStyle,
                      ),
                      color: const Color(0xFF676767),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: theme.alternate, height: 2),
          ],
        ),
      ),
    );
  }
}
