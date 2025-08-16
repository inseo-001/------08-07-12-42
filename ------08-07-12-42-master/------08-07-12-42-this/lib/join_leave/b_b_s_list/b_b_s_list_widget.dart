import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_b_s_list_model.dart';
export 'b_b_s_list_model.dart';

class BBSListWidget extends StatefulWidget {
  const BBSListWidget({super.key});

  static String routeName = 'BBSList';
  static String routePath = '/bBSList';

  @override
  State<BBSListWidget> createState() => _BBSListWidgetState();
}

class _BBSListWidgetState extends State<BBSListWidget> {
  late BBSListModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BBSListModel());
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
              // ===== 헤더: 제목/설명 + 글쓰기 버튼 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 제목/설명
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '학생 게시판',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
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
                          const SizedBox(height: 4),
                          Text(
                            '자유롭게 소통하고 정보를 공유해보세요',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.labelMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.labelMedium.fontWeight,
                                fontStyle: theme.labelMedium.fontStyle,
                              ),
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    // 글쓰기 버튼
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () => context.pushNamed(BBSWriteWidget.routeName),
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0C62FD),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          '+   글쓰기',
                          style: theme.titleMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w300,
                              fontStyle: theme.titleMedium.fontStyle,
                            ),
                            color: const Color(0xFFF6F2F2),
                            fontSize: 11,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),
              Divider(thickness: 2, color: theme.alternate, height: 2),

              // ===== 검색창 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 6),
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.secondaryBackground,
                    boxShadow: const [
                      BoxShadow(blurRadius: 4, color: Colors.white, offset: Offset(0, 2)),
                    ],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFF747474)),
                  ),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Icon(Icons.search),
                      hintText: '게시글을 검색해보세요',
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      labelStyle: theme.labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.labelMedium.fontWeight,
                          fontStyle: theme.labelMedium.fontStyle,
                        ),
                        fontSize: 12,
                        letterSpacing: 0,
                      ),
                      hintStyle: theme.labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.labelMedium.fontWeight,
                          fontStyle: theme.labelMedium.fontStyle,
                        ),
                        fontSize: 13,
                        letterSpacing: 0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0x00000000), width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0x00000000), width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: theme.error, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: theme.error, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      filled: true,
                      fillColor: theme.secondaryBackground,
                    ),
                    style: theme.bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: theme.bodyMedium.fontWeight,
                        fontStyle: theme.bodyMedium.fontStyle,
                      ),
                      fontSize: 13,
                      letterSpacing: 0,
                    ),
                    cursorColor: theme.primaryText,
                    validator: _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),

              // ===== 목록 아이템들 =====
              const SizedBox(height: 4),
              _PostCard(
                onTap: () => context.pushNamed(BBSMainWidget.routeName),
                title: '기숙사 세탁실 이용 팁 공유해요!',
                summary: '세탁실 이용할 때 도움되는 팁들을 공유해보아요',
                author: '김민수',
                datetime: '2024-07-01 14 : 30',
                views: '122',
                comments: '8',
                likes: '15',
              ),
              _PostCard(
                onTap: () {},
                title: '같이 밥 먹을 룸메이트 구해요',
                summary: '혼자 밥 먹기 심심해서 같이 식당 가실분 구합니다.',
                author: '이서현',
                datetime: '2024-07-01 14 : 30',
                views: '122',
                comments: '8',
                likes: '15',
                likeColor: const Color(0xFFFB0505),
              ),
              _PostCard(
                onTap: () {},
                title: 'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',
                summary: '내가 다시 수정하는게 말이 안됨 으이?',
                author: '김민수',
                datetime: '2024-07-01 14 : 30',
                views: '999',
                comments: '8',
                likes: '999',
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

/// ===== 재사용 카드 위젯 =====
class _PostCard extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String summary;
  final String author;
  final String datetime;
  final String views;
  final String comments;
  final String likes;
  final Color? likeColor;

  const _PostCard({
    required this.onTap,
    required this.title,
    required this.summary,
    required this.author,
    required this.datetime,
    required this.views,
    required this.comments,
    required this.likes,
    this.likeColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: theme.info,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: theme.info),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Column(
              children: [
                // 제목
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          fontSize: 15,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // 요약
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        summary,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: theme.bodyMedium.fontWeight,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          color: const Color(0xFF525252),
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // 메타정보 + 뱃지들
                Row(
                  children: [
                    // 작성자 / 시간
                    Expanded(
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              author,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: theme.bodyMedium.fontWeight,
                                  fontStyle: theme.bodyMedium.fontStyle,
                                ),
                                color: const Color(0xFF676767),
                                fontSize: 10,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Flexible(
                            child: Text(
                              datetime,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: theme.bodyMedium.fontWeight,
                                  fontStyle: theme.bodyMedium.fontStyle,
                                ),
                                color: const Color(0xFF676767),
                                fontSize: 10,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 우측 아이콘/숫자 묶음
                    Row(
                      children: [
                        const Icon(Icons.visibility_outlined, color: Color(0xFF676767), size: 15),
                        const SizedBox(width: 4),
                        Text(
                          views,
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                            color: const Color(0xFF676767),
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.chat_bubble_outline_rounded, color: Color(0xFF676767), size: 15),
                        const SizedBox(width: 4),
                        Text(
                          comments,
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                            color: const Color(0xFF676767),
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(Icons.favorite_border, color: likeColor ?? const Color(0xFF676767), size: 15),
                        const SizedBox(width: 4),
                        Text(
                          likes,
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                            color: const Color(0xFF676767),
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Divider(thickness: 1, color: theme.alternate, height: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
