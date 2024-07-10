import 'package:flutter/material.dart';
import 'package:hyper_hire_assignment/theme/theme.dart';
import 'package:hyper_hire_assignment/widget/top_product_widget.dart';

import '../data/data.dart';
import '../widget/banner_widget.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset('assets/images/logo.png'),
        ),
        leadingWidth: 94,
        elevation: 1,
        shadowColor: const Color(0xFFD7D7D7),
        scrolledUnderElevation: 1,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF3C41BF),
                    Color(0xFF74FBDE),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: fontRegular(12, color: demiGray),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    hintText: '검색어를 입력하세요',
                    constraints: const BoxConstraints(maxHeight: 40),
                    hintStyle: fontRegular(12, color: demiGray),
                    suffixIconConstraints: const BoxConstraints(
                      maxWidth: 44,
                      minHeight: 14,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/icons/ic_search.png',
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const BannerWidget(),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '제일 핫한 리뷰를 만나보세요',
                        style: fontRegular(
                          12,
                          color: const Color(0xFF616161),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '리뷰️  랭킹⭐ top 3',
                        style: fontMedium(
                          18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const ImageIcon(
                    AssetImage('assets/icons/ic_more.png'),
                    size: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              controller: controller,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => TopProductWidget(
                topProduct: topProducts[index],
              ),
              itemCount: topProducts.length,
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              color: Color(0xFFEEEEEE),
              thickness: 14,
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    '골드 계급 사용자들이예요',
                    style: fontRegular(
                      12,
                      color: const Color(0xFF616161),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '베스트 리뷰어 🏆 Top10',
                    style: fontMedium(
                      18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  users.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                            user: users[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: ratingYellowColor,
                                ),
                                padding: users[index].isTopRated
                                    ? const EdgeInsets.all(5)
                                    : const EdgeInsets.all(0),
                                child: CircleAvatar(
                                  radius: 31,
                                  foregroundImage: NetworkImage(
                                    users[index].imageUrl,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                users[index].name,
                                style: fontMedium(
                                  14,
                                  color: const Color(0xFF616161),
                                ),
                              )
                            ],
                          ),
                          if (users[index].isTopRated)
                            const Positioned(
                              child: ImageIcon(
                                AssetImage(
                                  'assets/icons/ic_crown_gold.png',
                                ),
                                size: 20,
                                color: ratingYellowColor,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              color: const Color(0xFFEEEEEE),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'LOGO Inc.',
                    style: fontMedium(
                      14,
                      color: demiGray,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '회사 소개 ',
                        style: fontRegular(13, color: demiGray),
                      ),
                      Container(
                        height: 9,
                        width: 1,
                        color: const Color(0xFFC8C8C8),
                      ),
                      Text(
                        '인재 채용',
                        style: fontRegular(13, color: demiGray),
                      ),
                      Container(
                        height: 9,
                        width: 1,
                        color: const Color(0xFFC8C8C8),
                      ),
                      Text(
                        '기술 블로그',
                        style: fontRegular(13, color: demiGray),
                      ),
                      Container(
                        height: 9,
                        width: 1,
                        color: const Color(0xFFC8C8C8),
                      ),
                      Text(
                        '리뷰 저작권',
                        style: fontRegular(13, color: demiGray),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.send,
                            size: 16,
                            color: Color(0xFFC8C8C8),
                          ),
                          const SizedBox(width: 2,),
                          Text(
                            'review@logo.com',
                            style: fontRegular(13, color: demiGray),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: demiGray)),
                        child: Row(
                          children: [
                            Text(
                              'KOR',
                              style: fontRegular(10, color: demiGray),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: demiGray,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Divider(
                    color: Color(0xFFC8C8C8),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
                    style: fontRegular(10, color: demiGray),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD7D7D7),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1A000000),
                  blurRadius: 10.7,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              iconSize: 24,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedItemColor: basicBlack,
              unselectedItemColor: const Color(0xFFD9D9D9),
              selectedLabelStyle: fontRegular(14),
              unselectedLabelStyle: fontRegular(14),
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_home.png',
                    width: 24,
                  ),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_discover.png',
                    width: 24,
                  ),
                  label: '카테고리',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_meet.png',
                    width: 24,
                  ),
                  label: '커뮤니티',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_profile.png',
                    width: 24,
                  ),
                  label: '마이페이지',
                ),
              ],
            )),
      ),
    );
  }
}
