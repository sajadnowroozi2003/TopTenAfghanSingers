import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_ten_afghan_singer/Screens/singer_details.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/popup_menu_item.dart';
import '../models/singer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final _controller = CarouselSliderController();

  final List<String> imgList = [
    'assets/images/singers_images/AhmadZaher.jpg',
    'assets/images/singers_images/ArianaSaid.jpg',
    'assets/images/singers_images/qaiseOlfate.jpg',
    'assets/images/singers_images/amirjanSabory.jpg',
    'assets/images/singers_images/dawoodSarkhosh.jpg',
    'assets/images/singers_images/Farhad Darya.jpg',
    'assets/images/singers_images/AhmadWali.jpg',
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
    }
  }

  List<Singer> Singers = [
    Singer([
      'AhmadZaher_1',
      'AhmadZaher_2',
      'AhmadZaher_3',
      'AhmadZaher_4',
      'AhmadZaher_5',
      'AhmadZaher_6',
      'AhmadZaher_7',
      'AhmadZaher_8',
      'AhmadZaher_9',
      'AhmadZaher_10',
    ],
        'احمد ظاهر',
        'احمد ظاهر (۲۴ جوزا یا خرداد ۱۳۲۵ دیده به جهان گشود– ۲۴ جوزا یا خرداد ۱۳۵۸ دیده از جهان فرو بست.) آواز خوان برجستهٔ افغانستان[۱] در دهه‌های ۵۰ و ۶۰ خورشیدی بود.[۲] از احمد ظاهر با عنوان《 بهترین و محبوب‌ترین خوانندهٔ تاریخ افغانستان 》یاد می‌شود.[۳] وی در عمر کوتاه خود بیشتر از سی و سه آلبوم منتشر کرد.و در مجموع تعداد آهنگ های احمد ظاهر به ۴۳۰ آهنگ می‌رسد. احمدظاهر، به زبان های دیگری هم مانند: انگلیسی، هندی و پشتو آهنگ می‌خواند. او در سالروز تولد ۳۳ سالگی‌اش در سانحه‌ای «مشکوک»[۴] در تونل سالنگ، درگذشت.[۵] همچنین وی را در افغانستان «الماس شرق» نامیده اند و در خارج از مرزهای افغانستان (در اروپا و آمریکا) مشهور به الویس پریسلی افغانستان بود .',
        'assets/images/singers_images/AhmadZaher.jpg'),
    Singer([
      'AhmadWali_1',
      'AhmadWali_2',
      'AhmadWali_3',
      'AhmadWali_4',
      'AhmadWali_5',
      'AhmadWali_6',
      'AhmadWali_7',
      'AhmadWali_8',
      'AhmadWali_9',
      'AhmadWali_10',
    ],
        'احمد ولی',
        'احمد ولی خواننده‌ای پاپ و غزل اهل افغانستان است. وی از دههٔ ۱۹۷۰ کار خود را آغاز کرد. قبل از اینکه مجبور به فرار به دلیل تحولات سیاسی در افغانستان شود. اولاً در آلمان به کار خود ادامه داد و در سراسر اروپا و آمریکای شمالی اجرا کرد. سپس به کشور آمریکا هجرت نمود.',
        'assets/images/singers_images/AhmadWali.jpg'),
    Singer([
      'WahidQasmi_1',
      'WahidQasmi_2',
      'WahidQasmi_3',
      'WahidQasmi_4',
      'WahidQasmi_5',
    ],
        'وحید قاسمی',
        'وحید قاسمی آموزش‌های نخستین، متوسط و برتر را در مکتب سردار جانخان، لیسه نادریه و دانشکده ادبیات دانشگاه کابل فراگرفته‌است. سپس به موسیقی رو آورد و آموزش بنیان‌های موسیقی شرقی را از استاد یوسف قاسمی و استاد یعقوب قاسمی فراگرفت و اساسات موسیقی غربی را از استاد سلیم سرمست وببرک وسا آموخت. در سال ۱۹۷۷ گروه موسیقی "شاین " را ایجاد کرد که در زمینه موسیقی پاپ فعالیت دارد. ',
        'assets/images/singers_images/wahidGasemi.jpg'),
    Singer([
      'FarhadDrya_1',
      'FarhadDrya_2',
      'FarhadDrya_3',
      'FarhadDrya_4',
      'FarhadDrya_5',
      'FarhadDrya_6',
      'FarhadDrya_7',
      'FarhadDrya_8',
      'FarhadDrya_9',
      'FarhadDrya_10',
      'FarhadDrya_11',
      'FarhadDrya_12',
    ],
        'فرهاد دریا',
        'فرهاد ناشر با نام هنری فرهاد دریا (زاده ۲۲ سپتامبر ۱۹۶۲ در کابل، افغانستان) موسیقی‌دان، خواننده، بازیگر و فعال حقوق بشر اهل افغانستان و تأثیرگذارترین هنرمند افغانستان از دهه ۱۹۸۰ تا اکنون می‌باشد.[۱] او به عنوان یکی از برترین موسیقی‌دانان افغانستان نه تنها توسط موسیقی‌اش بلکه توسط فعالیت‌های انسان دوستانه و وطن‌دوستانه‌اش نزد مردم افغانستان شناخته می‌شود و از سال ۲۰۰۶ تاکنون سفیر صلح سازمان ملل متحد در افغانستان می‌باشد. طرفداران او شامل مناطق آسیای مرکزی، پاکستان، تاجیکستان، ازبکستان و در غرب بین افغانستانی‌ها و فارسی‌زبان‌ها هستند. دریا به زبان‌های گوناگون شامل فارسی، اوزبیکی، انگلیسی، پشتو و اردو ترانه می‌خواند.[۲] او تاکنون چندین کنسرت را در افغانستان، تاجیکستان، ایالات متحده، امارات متحده عربی و آلمان برگزار نموده‌است. کنسرت‌های او در افغانستان همیشه رایگان و بدون سود اجرا می‌شوند.',
        'assets/images/singers_images/Farhad Darya.jpg'),
    Singer([
      'HaiderSalim_1',
      'HaiderSalim_2',
      'HaiderSalim_3',
      'HaiderSalim_4',
      'HaiderSalim_5',
      'HaiderSalim_6',
      'HaiderSalim_7',
      'HaiderSalim_8',
      'HaiderSalim_9',
      'HaiderSalim_10',
    ],
        'حیدر سلیم',
        'حیدر سلیم خواننده اهل افغانستان است که در دوبلین، کالیفرنیا زندگی می‌کند.[۱] وی در دههٔ ۱۹۷۰ به عنوان یک خواننده افغان به شهرت رسید. تک‌آهنگ او که با نام «غزل» شناخته می‌شود از معروف‌ترین آهنگ‌های او بشمار می‌رود.',
        'assets/images/singers_images/HaidarSalim.jpg'),
    Singer([
      'DawoodSarkhosh_1',
      'DawoodSarkhosh_2',
      'DawoodSarkhosh_3',
      'DawoodSarkhosh_4',
      'DawoodSarkhosh_5',
      'DawoodSarkhosh_6',
      'DawoodSarkhosh_7',
      'DawoodSarkhosh_8',
      'DawoodSarkhosh_9',
      'DawoodSarkhosh_10',
    ],
        'داوود سرخوش',
        'داوود سرخوش (زادهٔ ۲۶ آوریل ۱۹۷۱ در ارزگان) خواننده، ترانه‌سرا و آهنگساز اهل افغانستان است. سرخوش بیشتر آهنگ‌های آلبوم‌هایش را خودش ساخته و اجرا می‌کند. ترانه‌ها بیشتر از سروده‌های وی هستند، اما از آثار شاعران معاصر افغانستان و ایران نیز بهره می‌برد.',
        'assets/images/singers_images/dawoodSarkhosh.jpg'),
    Singer([
      'AmirjanSabori_1',
      'AmirjanSabori_2',
      'AmirjanSabori_3',
      'AmirjanSabori_4',
      'AmirjanSabori_5',
      'AmirjanSabori_6',
      'AmirjanSabori_7',
      'AmirjanSabori_8',
      'AmirjanSabori_9',
      'AmirjanSabori_10',
    ],
        'امیرجان صبوری',
        'صبوری از شانزده سالگی به هنر آوازخوانی روی آورد و برای اولین بار جشنواره آهنگ‌های ملی و محلی در کابل آهنگی به نام دختر هری را خواند که با استقبال زیادی روبه‌رو شد و مقام دوم را به دست آورد و وی پس از آن این آهنگ را در رادیو افغانستان ضبط کرد.[۳]صبوری در سال ۱۳۶۰ ارکستری موسیقی به نام گل سرخ تشکیل داد که در آن هنرمندانی چون وجیهه و فرید رستگار، حفیظ وصال، محمود کامن، کبیر متین، شریف ساحل، نعیم ودیگران با او بودند.امیرجان صبوری در خوانندگی خود وقفه‌ای طولانی داشت اما در سال ۲۰۰۵ با آلبومی به نام «مستند به نام خواب طلایی ساخته شده‌است.[۴]صبوری پسر خاله خواننده تازه تواب آرش است که ساکن سوئد می‌باشد و صبوری به او برای تنظیم آلبوم چای و چلم کمک کرده‌است.[۵]',
        'assets/images/singers_images/amirjanSabory.jpg'),
    Singer([
      'QaisUlfat_8',
      'QaisUlfat_5',
      'QaisUlfat_7',
      'QaisUlfat_4',
      'QaisUlfat_6',
      'QaisUlfat_10',
      'QaisUlfat_3',
      'QaisUlfat_9',
      'QaisUlfat_2',
      'QaisUlfat_1',
    ],
        'قیس الفت',
        'قیس الفت یکی از خوانندگان جوان و محبوب افغان است که با صدای گرم و آثار خود توانسته جایگاه ویژه‌ای در موسیقی افغانستان پیدا کند. او بیشتر به خاطر ترانه‌های عاشقانه و اجتماعی‌اش شناخته می‌شود. قیس الفت در سبک‌های مختلف موسیقی، از جمله پاپ و فولکلور، فعالیت می‌کند و توانسته توجه زیادی را به خود جلب کند.',
        'assets/images/singers_images/qaiseOlfate.jpg'),
    Singer([
      'AryanaSaied_17',
      'AryanaSaied_16',
      'AryanaSaied_15',
      'AryanaSaied_13',
      'AryanaSaied_14',
      'AryanaSaied_12',
      'AryanaSaied_11',
      'AryanaSaied_10',
      'AryanaSaied_9',
      'AryanaSaied_8',
      'AryanaSaied_7',
      'AryanaSaied_6',
      'AryanaSaied_5',
      'AryanaSaied_4',
      'AryanaSaied_3',
      'AryanaSaied_2',
      'AryanaSaied_1',
    ],
        'آریانا سعید',
        'آریانا در سال ۱۹۸۵ در کابل متولد شد. وی در کودکی افغانستان را ترک کرد. آریانا و خانواده‌اش بعد از استقرار در پاکستان به اروپا مهاجرت کردند و بعد از سپری کردن چند سال در سوئیس، در شهر لندن سکونت کردند. علاقهٔ وی به موسیقی از همان کودکی شروع شد. آریانا در دوران تحصیل در زوریخ در کشور سوئیس عضو گروه سرود بود. بعد از فارغ‌التحصیل شدن از رشتهٔ مدیریت تجارت، وی تصمیم گرفت که به عنوان یک هنرمند در عرصهٔ موسیقی فعالیت خود را آغاز کند.',
        'assets/images/singers_images/ArianaSaid.jpg'),
    Singer([
      'TawabArash_1',
      'TawabArash_2',
      'TawabArash_3',
      'TawabArash_4',
      'TawabArash_5',
      'TawabArash_6',
    ],
        'تواب آرش',
        ' آرش یکی از خوانندگان مشهور افغانستان است. او به عنوان یکی از هنرمندان پرآوازه و محبوب در موسیقی افغان شناخته می‌شود. تواب آرش با سبک موسیقی خاص خود و اجرای ترانه‌های عاشقانه و ملی‌گرایانه، توانسته است جایگاه ویژه‌ای در میان طرفداران موسیقی افغان کسب کند. صدای خاص و دلنشین او، همراه با ملودی‌های زیبا و احساساتی که در ترانه‌هایش جاری است، او را به یکی از چهره‌های برجسته موسیقی افغان تبدیل کرده است.تواب آرش در طول دوران حرفه‌ای خود، آهنگ‌های زیادی منتشر کرده و در کنسرت‌های مختلف داخلی و بین‌المللی به اجرای برنامه پرداخته است. وی به دلیل علاقه‌اش به فرهنگ و هنر افغانستان، همواره تلاش کرده تا با استفاده از موسیقی، پیام‌هایی از عشق، دوستی، و همبستگی را به مردم منتقل کند.',
        'assets/images/singers_images/tawabArash.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert, size: 20, color: Colors.white),
            onSelected: _choiceAction,
            itemBuilder: (BuildContext context) {
              return MenuItems.choic.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: ListTile(
                    title: Text(choice),
                    trailing: Icon(MenuItems.choiceIcons[choice]),
                  ),
                );
              }).toList();
            },
          ),
        ],
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: const Text(
          'ده خواننده برتر افغانی',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'SplashFont',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: imgList.map((item) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(item,
                            fit: BoxFit.fitWidth, width: 1300),
                      ),
                    ),
                  );
                }).toList(),
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.teal)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20), // Space between the carousel and the list
            ListView.builder(
              shrinkWrap: true,
              // Use the height of the content
              physics: NeverScrollableScrollPhysics(),
              // Disable scrolling in the ListView
              itemCount: Singers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    color: Colors.teal.shade700,
                    child: ListTile(
                      splashColor: Colors.teal,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SingersDetailes(Item: Singers[index]),
                          ),
                        );
                      },
                      title: Text(
                        Singers[index].name.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(Singers[index].imageURL.toString()),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _choiceAction(String choice) {
    if (choice == MenuItems.share) {
      const url =
          'https://play.google.com/store/apps/details?id=com.example.top_ten_afghan_singer=en&pli=1';
      _launchURL(url);
    } else if (choice == MenuItems.about) {
      Navigator.pushNamed(context, '/info');
    } else if (choice == MenuItems.exit) {
      if (Platform.isAndroid) {
        SystemNavigator.pop();
      } else if (Platform.isIOS) {
        exit(0);
      }
    }
  }
}

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:top_ten_afghan_singer/Screens/singer_details.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../models/popup_menu_item.dart';
// import '../models/singer.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _current = 0;
//   final _controller = CarouselSliderController();
//
//   final List<String> imgList = [
//     'assets/images/singers_images/AhmadZaher.jpg',
//     'assets/images/singers_images/ArianaSaid.jpg',
//     'assets/images/singers_images/qaiseOlfate.jpg',
//     'assets/images/singers_images/amirjanSabory.jpg',
//     'assets/images/singers_images/dawoodSarkhosh.jpg',
//     'assets/images/singers_images/Farhad Darya.jpg',
//     'assets/images/singers_images/AhmadWali.jpg',
//   ];
//
//   Future<void> _launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (!await launchUrl(uri)) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Could not launch $url')),
//       );
//     }
//   }
//
//   List<Singer> Singers = [
//     Singer([
//       'AhmadZaher_1',
//       'AhmadZaher_2',
//       'AhmadZaher_3',
//       'AhmadZaher_4',
//       'AhmadZaher_5',
//       'AhmadZaher_6',
//       'AhmadZaher_7',
//       'AhmadZaher_8',
//       'AhmadZaher_9',
//       'AhmadZaher_10',
//     ],
//         'احمد ظاهر',
//         'احمد ظاهر (۲۴ جوزا یا خرداد ۱۳۲۵ دیده به جهان گشود– ۲۴ جوزا یا خرداد ۱۳۵۸ دیده از جهان فرو بست.) آواز خوان برجستهٔ افغانستان[۱] در دهه‌های ۵۰ و ۶۰ خورشیدی بود.[۲] از احمد ظاهر با عنوان《 بهترین و محبوب‌ترین خوانندهٔ تاریخ افغانستان 》یاد می‌شود.[۳] وی در عمر کوتاه خود بیشتر از سی و سه آلبوم منتشر کرد.و در مجموع تعداد آهنگ های احمد ظاهر به ۴۳۰ آهنگ می‌رسد. احمدظاهر، به زبان های دیگری هم مانند: انگلیسی، هندی و پشتو آهنگ می‌خواند. او در سالروز تولد ۳۳ سالگی‌اش در سانحه‌ای «مشکوک»[۴] در تونل سالنگ، درگذشت.[۵] همچنین وی را در افغانستان «الماس شرق» نامیده اند و در خارج از مرزهای افغانستان (در اروپا و آمریکا) مشهور به الویس پریسلی افغانستان بود .',
//         'assets/images/singers_images/AhmadZaher.jpg'),
//     Singer([
//       'AhmadWali_1',
//       'AhmadWali_2',
//       'AhmadWali_3',
//       'AhmadWali_4',
//       'AhmadWali_5',
//       'AhmadWali_6',
//       'AhmadWali_7',
//       'AhmadWali_8',
//       'AhmadWali_9',
//       'AhmadWali_10',
//     ],
//         'احمد ولی',
//         'احمد ولی خواننده‌ای پاپ و غزل اهل افغانستان است. وی از دههٔ ۱۹۷۰ کار خود را آغاز کرد. قبل از اینکه مجبور به فرار به دلیل تحولات سیاسی در افغانستان شود. اولاً در آلمان به کار خود ادامه داد و در سراسر اروپا و آمریکای شمالی اجرا کرد. سپس به کشور آمریکا هجرت نمود.',
//         'assets/images/singers_images/AhmadWali.jpg'),
//     Singer([
//       'WahidQasmi_1',
//       'WahidQasmi_2',
//       'WahidQasmi_3',
//       'WahidQasmi_4',
//       'WahidQasmi_5',
//     ],
//         'وحید قاسمی',
//         'وحید قاسمی آموزش‌های نخستین، متوسط و برتر را در مکتب سردار جانخان، لیسه نادریه و دانشکده ادبیات دانشگاه کابل فراگرفته‌است. سپس به موسیقی رو آورد و آموزش بنیان‌های موسیقی شرقی را از استاد یوسف قاسمی و استاد یعقوب قاسمی فراگرفت و اساسات موسیقی غربی را از استاد سلیم سرمست وببرک وسا آموخت. در سال ۱۹۷۷ گروه موسیقی "شاین " را ایجاد کرد که در زمینه موسیقی پاپ فعالیت دارد. ',
//         'assets/images/singers_images/wahidGasemi.jpg'),
//     Singer([
//       'FarhadDrya_1',
//       'FarhadDrya_2',
//       'FarhadDrya_3',
//       'FarhadDrya_4',
//       'FarhadDrya_5',
//       'FarhadDrya_6',
//       'FarhadDrya_7',
//       'FarhadDrya_8',
//       'FarhadDrya_9',
//       'FarhadDrya_10',
//       'FarhadDrya_11',
//       'FarhadDrya_12',
//     ],
//         'فرهاد دریا',
//         'فرهاد ناشر با نام هنری فرهاد دریا (زاده ۲۲ سپتامبر ۱۹۶۲ در کابل، افغانستان) موسیقی‌دان، خواننده، بازیگر و فعال حقوق بشر اهل افغانستان و تأثیرگذارترین هنرمند افغانستان از دهه ۱۹۸۰ تا اکنون می‌باشد.[۱] او به عنوان یکی از برترین موسیقی‌دانان افغانستان نه تنها توسط موسیقی‌اش بلکه توسط فعالیت‌های انسان دوستانه و وطن‌دوستانه‌اش نزد مردم افغانستان شناخته می‌شود و از سال ۲۰۰۶ تاکنون سفیر صلح سازمان ملل متحد در افغانستان می‌باشد. طرفداران او شامل مناطق آسیای مرکزی، پاکستان، تاجیکستان، ازبکستان و در غرب بین افغانستانی‌ها و فارسی‌زبان‌ها هستند. دریا به زبان‌های گوناگون شامل فارسی، اوزبیکی، انگلیسی، پشتو و اردو ترانه می‌خواند.[۲] او تاکنون چندین کنسرت را در افغانستان، تاجیکستان، ایالات متحده، امارات متحده عربی و آلمان برگزار نموده‌است. کنسرت‌های او در افغانستان همیشه رایگان و بدون سود اجرا می‌شوند.',
//         'assets/images/singers_images/Farhad Darya.jpg'),
//     Singer([
//       'HaiderSalim_1',
//       'HaiderSalim_2',
//       'HaiderSalim_3',
//       'HaiderSalim_4',
//       'HaiderSalim_5',
//       'HaiderSalim_6',
//       'HaiderSalim_7',
//       'HaiderSalim_8',
//       'HaiderSalim_9',
//       'HaiderSalim_10',
//     ],
//         'حیدر سلیم',
//         'حیدر سلیم خواننده اهل افغانستان است که در دوبلین، کالیفرنیا زندگی می‌کند.[۱] وی در دههٔ ۱۹۷۰ به عنوان یک خواننده افغان به شهرت رسید. تک‌آهنگ او که با نام «غزل» شناخته می‌شود از معروف‌ترین آهنگ‌های او بشمار می‌رود.',
//         'assets/images/singers_images/HaidarSalim.jpg'),
//     Singer([
//       'DawoodSarkhosh_1',
//       'DawoodSarkhosh_2',
//       'DawoodSarkhosh_3',
//       'DawoodSarkhosh_4',
//       'DawoodSarkhosh_5',
//       'DawoodSarkhosh_6',
//       'DawoodSarkhosh_7',
//       'DawoodSarkhosh_8',
//       'DawoodSarkhosh_9',
//       'DawoodSarkhosh_10',
//     ],
//         'داوود سرخوش',
//         'داوود سرخوش (زادهٔ ۲۶ آوریل ۱۹۷۱ در ارزگان) خواننده، ترانه‌سرا و آهنگساز اهل افغانستان است. سرخوش بیشتر آهنگ‌های آلبوم‌هایش را خودش ساخته و اجرا می‌کند. ترانه‌ها بیشتر از سروده‌های وی هستند، اما از آثار شاعران معاصر افغانستان و ایران نیز بهره می‌برد.',
//         'assets/images/singers_images/dawoodSarkhosh.jpg'),
//     Singer([
//       'AmirjanSabori_1',
//       'AmirjanSabori_2',
//       'AmirjanSabori_3',
//       'AmirjanSabori_4',
//       'AmirjanSabori_5',
//       'AmirjanSabori_6',
//       'AmirjanSabori_7',
//       'AmirjanSabori_8',
//       'AmirjanSabori_9',
//       'AmirjanSabori_10',
//     ],
//         'امیرجان صبوری',
//         'صبوری از شانزده سالگی به هنر آوازخوانی روی آورد و برای اولین بار جشنواره آهنگ‌های ملی و محلی در کابل آهنگی به نام دختر هری را خواند که با استقبال زیادی روبه‌رو شد و مقام دوم را به دست آورد و وی پس از آن این آهنگ را در رادیو افغانستان ضبط کرد.[۳]صبوری در سال ۱۳۶۰ ارکستری موسیقی به نام گل سرخ تشکیل داد که در آن هنرمندانی چون وجیهه و فرید رستگار، حفیظ وصال، محمود کامن، کبیر متین، شریف ساحل، نعیم ودیگران با او بودند.امیرجان صبوری در خوانندگی خود وقفه‌ای طولانی داشت اما در سال ۲۰۰۵ با آلبومی به نام «مستند به نام خواب طلایی ساخته شده‌است.[۴]صبوری پسر خاله خواننده تازه تواب آرش است که ساکن سوئد می‌باشد و صبوری به او برای تنظیم آلبوم چای و چلم کمک کرده‌است.[۵]',
//         'assets/images/singers_images/amirjanSabory.jpg'),
//     Singer([
//       'QaisUlfat_8',
//       'QaisUlfat_5',
//       'QaisUlfat_7',
//       'QaisUlfat_4',
//       'QaisUlfat_6',
//       'QaisUlfat_10',
//       'QaisUlfat_3',
//       'QaisUlfat_9',
//       'QaisUlfat_2',
//       'QaisUlfat_1',
//     ],
//         'قیس الفت',
//         'قیس الفت یکی از خوانندگان جوان و محبوب افغان است که با صدای گرم و آثار خود توانسته جایگاه ویژه‌ای در موسیقی افغانستان پیدا کند. او بیشتر به خاطر ترانه‌های عاشقانه و اجتماعی‌اش شناخته می‌شود. قیس الفت در سبک‌های مختلف موسیقی، از جمله پاپ و فولکلور، فعالیت می‌کند و توانسته توجه زیادی را به خود جلب کند.',
//         'assets/images/singers_images/qaiseOlfate.jpg'),
//     Singer([
//       'AryanaSaied_17',
//       'AryanaSaied_16',
//       'AryanaSaied_15',
//       'AryanaSaied_13',
//       'AryanaSaied_14',
//       'AryanaSaied_12',
//       'AryanaSaied_11',
//       'AryanaSaied_10',
//       'AryanaSaied_9',
//       'AryanaSaied_8',
//       'AryanaSaied_7',
//       'AryanaSaied_6',
//       'AryanaSaied_5',
//       'AryanaSaied_4',
//       'AryanaSaied_3',
//       'AryanaSaied_2',
//       'AryanaSaied_1',
//     ],
//         'آریانا سعید',
//         'آریانا در سال ۱۹۸۵ در کابل متولد شد. وی در کودکی افغانستان را ترک کرد. آریانا و خانواده‌اش بعد از استقرار در پاکستان به اروپا مهاجرت کردند و بعد از سپری کردن چند سال در سوئیس، در شهر لندن سکونت کردند. علاقهٔ وی به موسیقی از همان کودکی شروع شد. آریانا در دوران تحصیل در زوریخ در کشور سوئیس عضو گروه سرود بود. بعد از فارغ‌التحصیل شدن از رشتهٔ مدیریت تجارت، وی تصمیم گرفت که به عنوان یک هنرمند در عرصهٔ موسیقی فعالیت خود را آغاز کند.',
//         'assets/images/singers_images/ArianaSaid.jpg'),
//     Singer([
//       'TawabArash_1',
//       'TawabArash_2',
//       'TawabArash_3',
//       'TawabArash_4',
//       'TawabArash_5',
//       'TawabArash_6',
//     ],
//         'تواب آرش',
//         ' آرش یکی از خوانندگان مشهور افغانستان است. او به عنوان یکی از هنرمندان پرآوازه و محبوب در موسیقی افغان شناخته می‌شود. تواب آرش با سبک موسیقی خاص خود و اجرای ترانه‌های عاشقانه و ملی‌گرایانه، توانسته است جایگاه ویژه‌ای در میان طرفداران موسیقی افغان کسب کند. صدای خاص و دلنشین او، همراه با ملودی‌های زیبا و احساساتی که در ترانه‌هایش جاری است، او را به یکی از چهره‌های برجسته موسیقی افغان تبدیل کرده است.تواب آرش در طول دوران حرفه‌ای خود، آهنگ‌های زیادی منتشر کرده و در کنسرت‌های مختلف داخلی و بین‌المللی به اجرای برنامه پرداخته است. وی به دلیل علاقه‌اش به فرهنگ و هنر افغانستان، همواره تلاش کرده تا با استفاده از موسیقی، پیام‌هایی از عشق، دوستی، و همبستگی را به مردم منتقل کند.',
//         'assets/images/singers_images/tawabArash.jpg'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           PopupMenuButton(
//             icon: const Icon(Icons.more_vert, size: 20, color: Colors.white),
//             onSelected: _choiceAction,
//             itemBuilder: (BuildContext context) {
//               return MenuItems.choic.map((String choice) {
//                 return PopupMenuItem<String>(
//                   value: choice,
//                   child: ListTile(
//                     title: Text(choice),
//                     trailing: Icon(MenuItems.choiceIcons[choice]),
//                   ),
//                 );
//               }).toList();
//             },
//           ),
//         ],
//         backgroundColor: Colors.teal,
//         automaticallyImplyLeading: false,
//         title: const Text(
//           'ده خواننده برتر افغانی',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'SplashFont',
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CarouselSlider(
//               items: imgList.map((item) {
//                 return Container(
//                   height: 200,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Center(
//                     child: ClipRRect(
//                         borderRadius: BorderRadius.circular(30),
//                         child: Image.asset(item,
//                             fit: BoxFit.fitWidth, width: 1300)),
//                   ),
//                 );
//               }).toList(),
//               carouselController: _controller,
//               options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.2,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 },
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: imgList.asMap().entries.map((entry) {
//               return GestureDetector(
//                 onTap: () => _controller.animateToPage(entry.key),
//                 child: Container(
//                   width: 12.0,
//                   height: 12.0,
//                   margin: const EdgeInsets.symmetric(
//                       vertical: 8.0, horizontal: 4.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                             ? Colors.white
//                             : Colors.teal)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: Singers.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   color: Colors.teal.shade700,
//                   child: ListTile(
//                     splashColor: Colors.teal,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               SingersDetailes(Item: Singers[index]),
//                         ),
//                       );
//                     },
//                     title: Text(
//                       Singers[index].name.toString(),
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                     leading: CircleAvatar(
//                       radius: 30,
//                       backgroundImage:
//                           AssetImage(Singers[index].imageURL.toString()),
//                     ),
//                     trailing: const Icon(
//                       Icons.arrow_forward_ios,
//                       color: Colors.white,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _choiceAction(String choice) {
//     if (choice == MenuItems.share) {
//       const url =
//           'https://play.google.com/store/apps/details?id=com.example.top_ten_afghan_singer=en&pli=1';
//       _launchURL(url);
//     } else if (choice == MenuItems.about) {
//       Navigator.pushNamed(context, '/info');
//     } else if (choice == MenuItems.exit) {
//       if (Platform.isAndroid) {
//         SystemNavigator.pop();
//       } else if (Platform.isIOS) {
//         exit(0);
//       }
//     }
//   }
// }
