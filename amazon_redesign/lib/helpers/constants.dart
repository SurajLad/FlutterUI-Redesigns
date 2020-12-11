import 'package:amazon_redesign/models/collection.dart';
import 'package:amazon_redesign/models/popular_product.dart';
import 'package:flutter/material.dart';

Color appThemeColor = Color(0xFF08090C);
const Color appRecentColor = Color(0xFFE4E5E5);

var popularProductList = [
  PopularProduct(
    name: "iPhone 11 (128 GB)",
    price: "₹ 65,000",
    imgUrl: "Assets/product/iphone.png",
  ),
  PopularProduct(
    name: "Apple Watch (S6)",
    price: "₹ 35,000",
    imgUrl: "Assets/product/apple_watch.png",
  ),
  PopularProduct(
    name: "Oneplus 8 (256 GB)",
    price: "₹ 38,499",
    imgUrl: "Assets/product/oneplus.png",
  ),
  PopularProduct(
    name: "Apple MacBook Air",
    price: "₹ 83,990",
    imgUrl: "Assets/product/macbookair.png",
  ),
  PopularProduct(
    name: "AMD Ryzen 3600X",
    price: "₹ 16,375",
    imgUrl: "Assets/product/amd.png",
  ),
];

var slideShowList = [
  "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Wireless/Xiaomi/Redmi_9Power/LP/D19338206_WLM_Redmi_9Power_Launch__PC.gif",
  "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Fashion/EVENT/WRS_Dec/Teaser/BankstripesTopBanner/12-Top-banner-PC-new.gif",
  "https://images-eu.ssl-images-amazon.com/images/G/31/img20/Books/102020/Editorial/bookbazar_header_Pc_1500x300-revised.jpg",
  "https://images-eu.ssl-images-amazon.com/images/G/31/Symbol/2020/GatewayNK/slide8/09/PL_Slide8_GWPC_1500x600_1-men._CB405247109_.jpg",
];

var collectionList = [
  Collection(
    name: "Mobile",
    imgUrl: "Assets/collections/mobile.png",
  ),
  Collection(
    name: "Fashion",
    imgUrl: "Assets/collections/fashion.png",
  ),
  Collection(
    name: "Electronics",
    imgUrl: "Assets/collections/electronics.png",
  ),
  Collection(
    name: "Home",
    imgUrl: "Assets/collections/house.png",
  ),
  Collection(
    name: "Toys",
    imgUrl: "Assets/collections/toys.png",
  ),
];
