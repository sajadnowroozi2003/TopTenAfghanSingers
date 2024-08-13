import 'package:flutter/material.dart';
import 'package:top_ten_afghan_singer/Screens/singer_details.dart';

import '../models/popup_menu_item.dart';
import '../models/singer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of Singers
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
    Singer([],
        'احمد ولی',
        'احمد ولی خواننده‌ای پاپ و غزل اهل افغانستان است. وی از دههٔ ۱۹۷۰ کار خود را آغاز کرد. قبل از اینکه مجبور به فرار به دلیل تحولات سیاسی در افغانستان شود. اولاً در آلمان به کار خود ادامه داد و در سراسر اروپا و آمریکای شمالی اجرا کرد. سپس به کشور آمریکا هجرت نمود.',
        'assets/images/singers_images/AhmadWali.jpg'),
    Singer([],
        'وحید قاسمی',
        'وحید قاسمی آموزش‌های نخستین، متوسط و برتر را در مکتب سردار جانخان، لیسه نادریه و دانشکده ادبیات دانشگاه کابل فراگرفته‌است. سپس به موسیقی رو آورد و آموزش بنیان‌های موسیقی شرقی را از استاد یوسف قاسمی و استاد یعقوب قاسمی فراگرفت و اساسات موسیقی غربی را از استاد سلیم سرمست وببرک وسا آموخت. در سال ۱۹۷۷ گروه موسیقی "شاین " را ایجاد کرد که در زمینه موسیقی پاپ فعالیت دارد. ',
        'assets/images/singers_images/wahidGasemi.jpg'),
    Singer([],
        'فرهاد دریا',
        'فرهاد ناشر با نام هنری فرهاد دریا (زاده ۲۲ سپتامبر ۱۹۶۲ در کابل، افغانستان) موسیقی‌دان، خواننده، بازیگر و فعال حقوق بشر اهل افغانستان و تأثیرگذارترین هنرمند افغانستان از دهه ۱۹۸۰ تا اکنون می‌باشد.[۱] او به عنوان یکی از برترین موسیقی‌دانان افغانستان نه تنها توسط موسیقی‌اش بلکه توسط فعالیت‌های انسان دوستانه و وطن‌دوستانه‌اش نزد مردم افغانستان شناخته می‌شود و از سال ۲۰۰۶ تاکنون سفیر صلح سازمان ملل متحد در افغانستان می‌باشد. طرفداران او شامل مناطق آسیای مرکزی، پاکستان، تاجیکستان، ازبکستان و در غرب بین افغانستانی‌ها و فارسی‌زبان‌ها هستند. دریا به زبان‌های گوناگون شامل فارسی، اوزبیکی، انگلیسی، پشتو و اردو ترانه می‌خواند.[۲] او تاکنون چندین کنسرت را در افغانستان، تاجیکستان، ایالات متحده، امارات متحده عربی و آلمان برگزار نموده‌است. کنسرت‌های او در افغانستان همیشه رایگان و بدون سود اجرا می‌شوند.',
        'assets/images/singers_images/Farhad Darya.jpg'),
    Singer([],
        'حیدر سلیم',
        'حیدر سلیم خواننده اهل افغانستان است که در دوبلین، کالیفرنیا زندگی می‌کند.[۱] وی در دههٔ ۱۹۷۰ به عنوان یک خواننده افغان به شهرت رسید. تک‌آهنگ او که با نام «غزل» شناخته می‌شود از معروف‌ترین آهنگ‌های او بشمار می‌رود.',
        'assets/images/singers_images/HaidarSalim.jpg'),
    Singer([],
        'داوود سرخوش',
        'داوود سرخوش (زادهٔ ۲۶ آوریل ۱۹۷۱ در ارزگان) خواننده، ترانه‌سرا و آهنگساز اهل افغانستان است. سرخوش بیشتر آهنگ‌های آلبوم‌هایش را خودش ساخته و اجرا می‌کند. ترانه‌ها بیشتر از سروده‌های وی هستند، اما از آثار شاعران معاصر افغانستان و ایران نیز بهره می‌برد.',
        'assets/images/singers_images/dawoodSarkhosh.jpg'),
    Singer([],
        'خانم هنگامه',
        'هنگامه در ۳ نوامبر ۱۹۶۱ در شهر کابل، افغانستان در خانواده‌ای هنردوست به دنیا آمد. پدرش غلام یحیی شورانگیز در هندوستان در رشته سینما تحصیل کرده‌است، مادرش صابره شورانگیز، زنی صاحب ذوق است که در مؤسسه هنرهای زیبا، افغان فلم و در رادیو و تلویزیون افغانستان کار کرده‌است. هنگامه یک برادر و چهار خواهر دارد که از این جمع، فقط خواهرش فرشته سما، به موسیقی روی آورده‌است. هنگامه در سال ۱۹۸۱ کابل را به مقصد پاکستان ترک کرد. هنگامه در سال ۱۹۸۵ در آلمان با احمد ولی ازدواج نمود ',
        'assets/images/singers_images/hangama.jpg'),
    Singer([],
        'قیس الفت',
        'قیس الفت یکی از خوانندگان جوان و محبوب افغان است که با صدای گرم و آثار خود توانسته جایگاه ویژه‌ای در موسیقی افغانستان پیدا کند. او بیشتر به خاطر ترانه‌های عاشقانه و اجتماعی‌اش شناخته می‌شود. قیس الفت در سبک‌های مختلف موسیقی، از جمله پاپ و فولکلور، فعالیت می‌کند و توانسته توجه زیادی را به خود جلب کند.',
        'assets/images/singers_images/qaiseOlfate.jpg'),
    Singer([],
        'آریانا سعید',
        'آریانا در سال ۱۹۸۵ در کابل متولد شد. وی در کودکی افغانستان را ترک کرد. آریانا و خانواده‌اش بعد از استقرار در پاکستان به اروپا مهاجرت کردند و بعد از سپری کردن چند سال در سوئیس، در شهر لندن سکونت کردند. علاقهٔ وی به موسیقی از همان کودکی شروع شد. آریانا در دوران تحصیل در زوریخ در کشور سوئیس عضو گروه سرود بود. بعد از فارغ‌التحصیل شدن از رشتهٔ مدیریت تجارت، وی تصمیم گرفت که به عنوان یک هنرمند در عرصهٔ موسیقی فعالیت خود را آغاز کند.',
        'assets/images/singers_images/ArianaSaid.jpg'),
    Singer([],
        'فهیم فنا',
        'بهنام بانی در ۸ سالگی قاری قرآن بود. او پدرش را که نوازنده آکاردئون است، علت گرایش او را به موسیقی می‌داند. وی فهیم فنا یکی از خوانندگان معروف افغان است که در سبک‌های پاپ و کلاسیک فعالیت می‌کند.',
        'assets/images/singers_images/FahimFana.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert,size: 20,color: Colors.white,),
              onSelected: ChoiceAction,
              itemBuilder: (BuildContext context){
                return MenuItems.choic.map((String choic) {
                  return PopupMenuItem<String>(
                      value: choic,
                      child: ListTile(
                        title: Text(choic),
                        trailing: Icon(MenuItems.choiceIcons[choic]),
                      ));
                }).toList();
              }),
        ],
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: Text(
          'ده خواننده برتر افغانی',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'SplashFont',
              color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: Singers.length,
          itemBuilder: (context,index){
        return Card(
          color: Colors.teal.shade700,
          child: ListTile(
            splashColor: Colors.teal,
            onTap: () {
              // go to the Singers Details page
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
              SingersDetailes(Item: Singers[index])
              ));
            },
            title: Text(
              '${Singers[index].name}',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('${Singers[index].imageURL}'),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        );
      }),
    );
  }
  void ChoiceAction(String choic) {
    if (choic == MenuItems.share) {
      // i want to add share  functionality
    } else if (choic == MenuItems.about) {
      Navigator.pushNamed(context, '/info');
    } else if (choic == MenuItems.exit) {
      Navigator.pop(context);
    }
  }
}
