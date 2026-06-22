import '../models/product.dart';

const List<String> kCategories = [
  'إلكترونيات',
  'ملابس',
  'كتب',
  'عطور',
  'مستلزمات المطبخ',
];

const List<Product> kProducts = [
  Product(
    id: 1,
    name: 'سماعة بلوتوث لاسلكية',
    price: 79.0,
    description:
        'سماعة بلوتوث عالية الجودة بعزل للضوضاء وبطارية تدوم حتى 30 ساعة، مناسبة للاستخدام اليومي والرياضة.',
    image: 'https://picsum.photos/seed/headphone/500/500',
    category: 'إلكترونيات',
  ),
  Product(
    id: 2,
    name: 'ساعة ذكية',
    price: 149.0,
    description:
        'ساعة ذكية تدعم متابعة معدل ضربات القلب وعدد الخطوات والإشعارات مع شاشة لمس عالية الدقة.',
    image: 'https://picsum.photos/seed/smartwatch/500/500',
    category: 'إلكترونيات',
  ),
  Product(
    id: 3,
    name: 'لوحة مفاتيح ميكانيكية',
    price: 120.0,
    description:
        'لوحة مفاتيح ميكانيكية بإضاءة RGB واستجابة سريعة مثالية للكتابة والألعاب.',
    image: 'https://picsum.photos/seed/keyboard/500/500',
    category: 'إلكترونيات',
  ),
  Product(
    id: 4,
    name: 'قميص قطني رجالي',
    price: 35.0,
    description:
        'قميص رجالي من القطن الخالص مريح وأنيق يناسب المناسبات الرسمية والكاجوال.',
    image: 'https://picsum.photos/seed/shirt/500/500',
    category: 'ملابس',
  ),
  Product(
    id: 5,
    name: 'جاكيت شتوي',
    price: 95.0,
    description:
        'جاكيت شتوي دافئ مقاوم للماء بتصميم عصري وجيوب متعددة.',
    image: 'https://picsum.photos/seed/jacket/500/500',
    category: 'ملابس',
  ),
  Product(
    id: 6,
    name: 'حذاء رياضي',
    price: 60.0,
    description:
        'حذاء رياضي خفيف الوزن مريح للجري والمشي بنعل مرن يمتص الصدمات.',
    image: 'https://picsum.photos/seed/shoes/500/500',
    category: 'ملابس',
  ),
  Product(
    id: 7,
    name: 'فن اللامبالاة',
    price: 25.0,
    description:
        'كتاب في تطوير الذات يساعدك على التركيز على ما يهم فعلاً في حياتك بأسلوب بسيط وممتع.',
    image: 'https://picsum.photos/seed/book1/500/500',
    category: 'كتب',
  ),
  Product(
    id: 8,
    name: 'العادات الذرية',
    price: 30.0,
    description:
        'دليل عملي لبناء العادات الجيدة والتخلص من العادات السيئة خطوة بخطوة.',
    image: 'https://picsum.photos/seed/book2/500/500',
    category: 'كتب',
  ),
  Product(
    id: 9,
    name: 'عطر شرقي فاخر',
    price: 110.0,
    description:
        'عطر شرقي ثابت برائحة العود والمسك يدوم طويلاً ومناسب للمناسبات الخاصة.',
    image: 'https://picsum.photos/seed/perfume1/500/500',
    category: 'عطور',
  ),
  Product(
    id: 10,
    name: 'عطر منعش للرجال',
    price: 85.0,
    description:
        'عطر رجالي منعش بمزيج من الحمضيات والأخشاب مثالي للاستخدام اليومي.',
    image: 'https://picsum.photos/seed/perfume2/500/500',
    category: 'عطور',
  ),
  Product(
    id: 11,
    name: 'طقم أواني طهي',
    price: 140.0,
    description:
        'طقم أواني طهي من الستانلس ستيل مكوّن من 7 قطع مقاوم للخدش وموزّع للحرارة بالتساوي.',
    image: 'https://picsum.photos/seed/pots/500/500',
    category: 'مستلزمات المطبخ',
  ),
  Product(
    id: 12,
    name: 'خلاط كهربائي',
    price: 70.0,
    description:
        'خلاط كهربائي بقوة عالية وشفرات من الستانلس ستيل لتحضير العصائر والصلصات بسهولة.',
    image: 'https://picsum.photos/seed/blender/500/500',
    category: 'مستلزمات المطبخ',
  ),
];
