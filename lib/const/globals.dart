import 'dart:math';

import 'package:genderhackapp/models/models.dart';

int currentQuestion = 0;
bool questionFinished = false;

enum Sexe { H, F }

enum Orientations { Hetero, Homo, Bi, Queer }

int score = 0;

List<Question> questionsList = [
  Question(
    "مع شكون تحب تعمل حاجة",
    "الشريك مهم عاللخر في العلاقات الجنسية",
    [
      Answer(
        "وحدي",
        "النشساط الجنسي موش بالضرورة مع الشريك",
        "حاجة عادية جدا أنك تحب تعملها وحدك",
        false,
        false,
      ),
      Answer(
        "مع طرف واحد",
        "الطرف هذا ينجم يكون من جنس مختلف أو نفس الجنس",
        "كان ماكش معرس حراااام",
        false,
        false,
      ),
      Answer(
        "مع أكتر من طرف واحد",
        "صحة ليك وللطرفين اللي معاك",
        "زعما تنجم روحك؟",
        false,
        false,
      ),
    ],
  ),
  Question(
    "شنية تحب تعمل ؟",
    "حدد رغبتك الجنسية",
    [
      Answer(
        "الإستمناء",
        "هي طريقة ساهلة و بسيطة باش تجيبها لروحك",
        "أو العادة السرية",
        false,
        false,
      ),
      Answer(
        " من فوق لفوق",
        "طريقة فعالة في البدايات",
        "Dry Humping / الحدب الجاف",
        false,
        false,
      ),
      Answer(
        "الجماع",
        "هو الإتصال الي يصير فيه إدخال البنانة في التفاحة",
        "Vaginal Intercourse",
        false,
        false,
      ),
      Answer(
        " الجماع الشرجي",
        "هو الإتصال الي يصير فيه إدخال البنانة في الخوخة",
        "Anal Intercourse",
        false,
        false,
      ),
    ],
  ),
  Question(
    "عندك لوكال ؟",
    "اللوكال عندو أهمية كبيرة في العلاقات الجنسية",
    [
      Answer(
        "في الدار",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في الكرهبة",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في البحر",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في السطح",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في الطيارة",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في المركز",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في الصبيطار",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "في الشارع",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
  Question(
    "باهي تعرف شنية التقصي؟",
    "كان طلعو شنية تربح واقي ذكري",
    [
      Answer(
        "طهور؟",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "معالجة الأمراض الجنسية؟",
        "",
        "",
        false,
        false,
      ),
      Answer(
        " فحص  التعفنات الجنسية؟ ",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
  Question(
    "سألت شريكك قبل العلاقة؟",
    "هاذي أهم نقطة في الموضوع الكل",
    [
      Answer(
        "ايه جوه.ها.هم باهي",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "ما حبش يركح",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
  Question(
    "ما مدى أهمية الدوش قبل أو بعد العلاقة؟",
    "",
    [
      Answer(
        "شوية",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "عادي",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "مهمة برشا",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
  Question(
    "واقي ذكري ولا زوز",
    "",
    [
      Answer(
        "زوز خير",
        "",
        "لا غالط",
        false,
        false,
      ),
      Answer(
        "واحد يكفي",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
  Question(
    "الواقي الذكري فعال بنسبة",
    "",
    [
      Answer(
        "100%",
        "",
        "لا غالط",
        false,
        false,
      ),
      Answer(
        "97%",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
  Question(
    "حبوب منع الحمل شتعمل؟",
    "ساهلة عاد هاذي",
    [
      Answer(
        "تعاونك بش تحبل",
        "",
        "لا غالط",
        false,
        false,
      ),
      Answer(
        "تمنع الحمل",
        "",
        "ساهلة عاد هاذي",
        false,
        false,
      ),
    ],
  ),
  Question(
    "شنية الوضعية إلي تحب تعملها",
    "جوّك عاد",
    [
      Answer(
        "وضعية ركوب الخيل",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "وضعية العجلة",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "وضعية العجلة العكسية",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "وضع عربة اليد ",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "وضع الفارسة",
        "",
        "",
        false,
        false,
      ),
      Answer(
        "قفزة الضفدعة",
        "",
        "",
        false,
        false,
      ),
    ],
  ),
];

void seeMore(int qstIndex, int ansIndex) {
  questionsList[qstIndex].answers[ansIndex].isSeeMore =
      !questionsList[qstIndex].answers[ansIndex].isSeeMore;
}

void answerClicked(int qstIndex, int ansIndex) {
  for (var i = 0; i < questionsList[qstIndex].answers.length; i++) {
    if (ansIndex == i) {
      questionsList[qstIndex].answers[i].isClicked = true;
    } else {
      questionsList[qstIndex].answers[i].isClicked = false;
    }
  }
}

bool isAnswered(int qstIndex) {
  for (var i = 0; i < questionsList[qstIndex].answers.length; i++) {
    if (questionsList[qstIndex].answers[i].isClicked) {
      return true;
    }
  }
  return false;
}

int random() {
  var random = Random();
  return random.nextInt(10);
}
