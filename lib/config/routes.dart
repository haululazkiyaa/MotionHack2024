import 'package:get/get.dart';
import 'package:motionhack2024/pages/app_page.dart';
import 'package:motionhack2024/pages/auth/login_page.dart';
import 'package:motionhack2024/pages/auth/signup_page.dart';
import 'package:motionhack2024/pages/market_page.dart';
import 'package:motionhack2024/pages/pasar/filter_pasar.dart';
import 'package:motionhack2024/pages/pasar/pasar_popup.dart';
import 'package:motionhack2024/pages/pasar/tambahulasan.dart';
import 'package:motionhack2024/pages/pasar/ulasan.dart';
import 'package:motionhack2024/pages/profile/bantuan.dart';
import 'package:motionhack2024/pages/profile/edit_profile.dart';
import 'package:motionhack2024/pages/profile/lacak_pesanan.dart';
import 'package:motionhack2024/pages/profile_page.dart';

var pages = [
  GetPage(name: "/login", page: () => LoginPage()),
  GetPage(name: "/signup", page: () => SignupPage()),
  GetPage(name: "/app", page: () => AppPage()),
  GetPage(name: ProfilePage.routeName, page: () => ProfilePage()),
  GetPage(name: LacakPesanan.routeName, page: () => LacakPesanan()),
  GetPage(name: PasarPopup.routeName, page: () => PasarPopup()),
  GetPage(name: FilterPasar.routeName, page: () => FilterPasar()),
  GetPage(name: MarketPage.routeName, page: () => MarketPage()),
  GetPage(name: BantuanPage.routeName, page: () => BantuanPage()),
  GetPage(name: EditProfilePage.routeName, page: () => EditProfilePage()),
  GetPage(name: UlasanPage.routeName, page: () => UlasanPage()),
  GetPage(name: TambahUlasan.routeName, page: () => TambahUlasan()),
];
