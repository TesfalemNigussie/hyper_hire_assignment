import 'package:flutter/material.dart';
import 'package:hyper_hire_assignment/theme/theme.dart';

import '../model/user.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> items = [
    "“가격 저렴해요”",
    "“CPU온도 고온”",
    "“서멀작업 가능해요”",
    "“게임 잘 돌아가요”",
    "“발열이 적어요”",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ImageIcon(
              AssetImage('assets/icons/ic_back.png'),
              size: 24,
            ),
          ),
        ),
        leadingWidth: 54,
        centerTitle: true,
        elevation: 1,
        shadowColor: const Color(0xFFD7D7D7),
        scrolledUnderElevation: 1,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: fontRegular(
          2,
          color: demiGray,
        ),
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: fontRegular(
                1,
                color: demiGray,
              ),
            ),
            Text(
              '베스트 리뷰어',
              style: fontRegular(
                2,
                color: basicBlack,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CircleAvatar(
              radius: 60,
              foregroundImage: NetworkImage(
                widget.user.imageUrl,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.user.name,
              style: fontMedium(
                20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            if (widget.user.isTopRated) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ImageIcon(
                    AssetImage(
                      'assets/icons/ic_crown_gold.png',
                    ),
                    color: ratingYellowColor,
                    size: 20,
                  ),
                  Text(
                    '골드',
                    style: fontMedium(
                      14,
                      color: ratingYellowColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
            ],
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: liteGray,
              ),
              child: Text(
                '조립컴 업체를 운영하며 리뷰를 작성합니다.',
                style: fontRegular(
                  14,
                  color: demiGray,
                ),
              ),
            ),
            const SizedBox(
              height: 28,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '작성한 리뷰 ',
                      children: [
                        TextSpan(
                          text: '총 35개',
                          style: fontRegular(
                            12,
                            color: const Color(0xFF616161),
                          ),
                        ),
                      ],
                      style: fontMedium(
                        16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: demiGray,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '최신순',
                          style: fontRegular(10, color: demiGray),
                        ),
                        const SizedBox(
                          width: 10,
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
            ),
            const SizedBox(
              height: 2,
            ),
            const Divider(
              color: liteGray,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 104,
                        height: 104,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFCECECE),
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/d6e3/7990/83ba8a2b7ec818965a1c2eedeb558567?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FnvW5Vp5-pmvtpjEcaVgo38jhJzNF4LVW1btUwGowtrb280ZmFpLT~LPf2kvfINd-PUpr76aw-Li5joThDpzCZ~90hNlFG2Lvo7eoCldm1gjRmf-JyFpk8Z3qW5xoelOeo4vdND9nZaU9YLEZA8jR2CH5uaSz79sfzUpmRwq1xKTFGheW3TpjGBZTOXSxRRAkdGxG8LSQUHBIBH9z25TUCKoAWFSox-N4nQ4Iw7KT1UHgzJqJGAxh2AiDadjEp79H5l3knUEYORY6Z3iTcfkZ7ivMS6doHEqDhVWWiX7jeZRs3EtbSGuJ6Ho3VCiGXBdpm1sQWgMoEK6NoIS3383fQ__",
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'AMD 라이젠 5  ',
                                children: [
                                  TextSpan(
                                    text: '5600X 버미어\n정품 멀티팩',
                                    style: fontMedium(
                                      14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                                style: fontBold(
                                  14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                ...List.generate(
                                  5,
                                  (index) => ImageIcon(
                                    const AssetImage(
                                      'assets/icons/ic_star.png',
                                    ),
                                    size: 20,
                                    color: index == 4
                                        ? liteGray
                                        : ratingYellowColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.07",
                                  style: fontMedium(18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    color: liteGray,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            foregroundImage: NetworkImage(
                              widget.user.imageUrl,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.user.name,
                                style: fontMedium(14),
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => ImageIcon(
                                      const AssetImage(
                                        'assets/icons/ic_star.png',
                                      ),
                                      size: 20,
                                      color: index == 4
                                          ? liteGray
                                          : ratingYellowColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2022.12.09",
                                    style: fontMedium(
                                      18,
                                      color: const Color(0xFF868686),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const ImageIcon(
                        AssetImage(
                          'assets/icons/ic_bookmark.png',
                        ),
                        color: demiGray,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        items.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            items[index],
                            style: fontBold(
                              10,
                              color: const Color(0xFFA0A0A0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Row(
                      children: [
                        const ImageIcon(
                          AssetImage(
                            'assets/icons/ic_charge.png',
                          ),
                          color: primaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                            style: fontLight(
                              14,
                              color: const Color(0xFF616161),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Row(
                      children: [
                        const ImageIcon(
                          AssetImage(
                            'assets/icons/ic_charge.png',
                          ),
                          color: Color(0xFFD7D7D7),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                            style: fontLight(
                              14,
                              color: const Color(0xFF616161),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/711f/c390/70903f2b92f17fd4b10ea4e94c43c5a8?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=We3Ua7JnyNNRLZAdb3Hj-joG3LqoakPN4FVjA9xNc2YMstmaQhU-o2-9bkTKw7bMmLOZYQMLHD6DEEk2UllXAVz7RakvD44CBBXivVD2zm3w4m4b~~ET9LSm-jXDL2mJJ1tuRZvLkCqGLpUYrtdKCKU96wo~p3-0~6mWGhaXAAtOWFMhXyT~0ijs37eB44xW~-YMsZ1fr5uEAdXJEA3d5hEsnWmRWgJmgVbeiTjH8SnIRF3O6NH8QY6SGDZcX7IHTDlbDCvdwmYQuRhm0D7ELchvaJK7sIOeIrY9WGnqaAi1gJexl3ga~J7dq3a4Aty2hJghrkdDoyqPXRAHrDyhvw__",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/3e00/e8c5/98023efb3c21e59db47e074e28eb0117?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZP5h~Dr9NFcjNUJXoGw3VH3mQnA41e-xqfU1Pk4eUpP2Xx-OVkZZzLLgugf81~EPj1ZM3GWMpF9WAwKOa1SUZFQJr50dKjRuAalWqS0Qu7zCTJUGDqIwMFw1MOPd31AbNp6xATUA2oTTAf9Oz0vPneCSs4CZLncVGT5FcI4qPhzRbhjUTu3j353efm26FfuYUkdh-U-udME5~r~zOdON27L2-lCfHWMWc~UpSIDqWgy4NSpupu2lUpqB~8GiTfUtJ2YXkiFpuGPSZezh37x5JabP66fKp2pL56Ckv~E8ACyBUkxkwrCtJVxvuFhfcnjhn3dL3GFrVFmFcSJTbgwdHQ__",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/f5f2/ece2/963715ffa8fe9764c0d05975c5f4861c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ati9c2xUZDJIznKTjl3ZKmmEsEfGMg0zHREHyUp4oVkZuvE-mQyj0i1fi58ypbkSskYIv998~xbuW-Vw0jzaaf-OjWCX-0KhELdM1bxZNCLn3hS~JaBF30UDuHJa4DG-RlYvqk~9dzY9pOx4Y6-RPFiISiKUUdjizzPX1tZ45YD7tVKSv4WWTZtwPnZXc5njPm5v~DdXjRdDJ79kDd1EHj95CaIJ6VWRshizIHJKF9uqQj0yMrcvDwRrJIo0WldJbO5SU~CajPE8fY6d6t0nEtEWSk3CGj4rUzI2CL2V~hKemhPK~IWXPNSuE2IKSw48CxMTPXefrkRUZ6l-JoBPPA__",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Divider(
                    color: liteGray,
                  ),
                  Row(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          'assets/icons/ic_chat.png',
                        ),
                        size: 16,
                        color: Color(0xFFC4C4C4),
                      ),
                      const SizedBox(width: 3,),
                      Text(
                        '댓글 달기..',
                        style: fontMedium(
                          10,
                          color: const Color(0xFF616161),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xFFEEEEEE),
              thickness: 14,
            ),
          ],
        ),
      ),
    );
  }
}
