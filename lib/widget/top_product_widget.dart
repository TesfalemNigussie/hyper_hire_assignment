import 'package:flutter/material.dart';
import 'package:hyper_hire_assignment/model/top_product.dart';
import 'package:hyper_hire_assignment/theme/theme.dart';

class TopProductWidget extends StatefulWidget {
  final TopProduct topProduct;

  const TopProductWidget({super.key, required this.topProduct});

  @override
  State<TopProductWidget> createState() => _TopProductWidgetState();
}

class _TopProductWidgetState extends State<TopProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 104,
            height: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xFFCECECE),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 6),
                      child: getGrown(widget.topProduct.productRank),
                    ),
                  ],
                ),
                Image.network(
                  widget.topProduct.productImage,
                  fit: BoxFit.contain,
                  height: 78,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: widget.topProduct.productTitle,
                    children: [
                      TextSpan(
                        text: widget.topProduct.productName,
                        style: fontMedium(14),
                      ),
                    ],
                    style: fontBold(14),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: widget.topProduct.productDetail
                        .map((e) => Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Text(
                                    e,
                                    style: fontRegular(12, color: basicBlack),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage(
                        'assets/icons/ic_star.png',
                      ),
                      color: ratingYellowColor,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "${widget.topProduct.productRating.toString()} ",
                        children: [
                          TextSpan(
                            text: '(${widget.topProduct.productReview})',
                            style: fontBold(
                              10,
                              color: const Color(0xFFC4C4C4),
                            ),
                          )
                        ],
                        style: fontBold(10, color: ratingYellowColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: widget.topProduct.productTags
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 6),
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            e,
                            style: fontRegular(
                              11,
                              color: const Color(0xFF868686),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getGrown(int productRank) {
    switch (productRank) {
      case 1:
        return Image.asset(
          'assets/icons/ic_crown_gold.png',
          width: 20,
        );
      case 2:
        return Image.asset(
          'assets/icons/ic_crown_sliver.png',
          width: 20,
        );
      case 3:
        return Image.asset(
          'assets/icons/ic_crown_bronze.png',
          width: 20,
        );
    }
    return Image.asset(
      'assets/icons/ic_crown_gold.png',
      width: 20,
    );
  }
}
