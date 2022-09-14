// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers

class Questions {
  Questions({
    required this.html,
    required this.css,
    required this.generalCoding,
    required this.algorithms,
    required this.javascript,
    required this.python,
    required this.nodejs,
    required this.react,
    required this.api,
    required this.databases,
    required this.sales,
    required this.productMarketing,
    required this.businessDevelopment,
    required this.culturalFit,
    required this.psychometricAssessment,
    required this.behaviour,
  });
  late final List<Html> html;
  late final List<Css> css;
  late final List<GeneralCoding> generalCoding;
  late final List<Algorithms> algorithms;
  late final List<Javascript> javascript;
  late final List<Python> python;
  late final List<Nodejs> nodejs;
  late final List<React> react;
  late final List<Api> api;
  late final List<Databases> databases;
  late final List<Sales> sales;
  late final List<ProductMarketing> productMarketing;
  late final List<BusinessDevelopment> businessDevelopment;
  late final List<CulturalFit> culturalFit;
  late final List<PsychometricAssessment> psychometricAssessment;
  late final List<Behaviour> behaviour;

  Questions.fromJson(Map<String, dynamic> json) {
    html = List.from(json['html']).map((e) => Html.fromJson(e)).toList();
    css = List.from(json['css']).map((e) => Css.fromJson(e)).toList();
    generalCoding = List.from(json['general_coding'])
        .map((e) => GeneralCoding.fromJson(e))
        .toList();
    algorithms = List.from(json['algorithms'])
        .map((e) => Algorithms.fromJson(e))
        .toList();
    javascript = List.from(json['javascript'])
        .map((e) => Javascript.fromJson(e))
        .toList();
    python = List.from(json['python']).map((e) => Python.fromJson(e)).toList();
    nodejs = List.from(json['nodejs']).map((e) => Nodejs.fromJson(e)).toList();
    react = List.from(json['react']).map((e) => React.fromJson(e)).toList();
    api = List.from(json['api']).map((e) => Api.fromJson(e)).toList();
    databases =
        List.from(json['databases']).map((e) => Databases.fromJson(e)).toList();
    sales = List.from(json['sales']).map((e) => Sales.fromJson(e)).toList();
    productMarketing = List.from(json['product_marketing'])
        .map((e) => ProductMarketing.fromJson(e))
        .toList();
    businessDevelopment = List.from(json['business_development'])
        .map((e) => BusinessDevelopment.fromJson(e))
        .toList();
    culturalFit = List.from(json['cultural_fit'])
        .map((e) => CulturalFit.fromJson(e))
        .toList();
    psychometricAssessment = List.from(json['psychometric_assessment'])
        .map((e) => PsychometricAssessment.fromJson(e))
        .toList();
    behaviour =
        List.from(json['behaviour']).map((e) => Behaviour.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['html'] = html.map((e) => e.toJson()).toList();
    _data['css'] = css.map((e) => e.toJson()).toList();
    _data['general_coding'] = generalCoding.map((e) => e.toJson()).toList();
    _data['algorithms'] = algorithms.map((e) => e.toJson()).toList();
    _data['javascript'] = javascript.map((e) => e.toJson()).toList();
    _data['python'] = python.map((e) => e.toJson()).toList();
    _data['nodejs'] = nodejs.map((e) => e.toJson()).toList();
    _data['react'] = react.map((e) => e.toJson()).toList();
    _data['api'] = api.map((e) => e.toJson()).toList();
    _data['databases'] = databases.map((e) => e.toJson()).toList();
    _data['sales'] = sales.map((e) => e.toJson()).toList();
    _data['product_marketing'] =
        productMarketing.map((e) => e.toJson()).toList();
    _data['business_development'] =
        businessDevelopment.map((e) => e.toJson()).toList();
    _data['cultural_fit'] = culturalFit.map((e) => e.toJson()).toList();
    _data['psychometric_assessment'] =
        psychometricAssessment.map((e) => e.toJson()).toList();
    _data['behaviour'] = behaviour.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Html {
  Html({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Html.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Css {
  Css({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Css.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class GeneralCoding {
  GeneralCoding({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  GeneralCoding.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Algorithms {
  Algorithms({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Algorithms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Javascript {
  Javascript({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Javascript.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Python {
  Python({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Python.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Nodejs {
  Nodejs({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Nodejs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class React {
  React({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  React.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Api {
  Api({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Api.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Databases {
  Databases({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Databases.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Sales {
  Sales({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Sales.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class ProductMarketing {
  ProductMarketing({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  ProductMarketing.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class BusinessDevelopment {
  BusinessDevelopment({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  BusinessDevelopment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class CulturalFit {
  CulturalFit({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  CulturalFit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class PsychometricAssessment {
  PsychometricAssessment({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  PsychometricAssessment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}

class Behaviour {
  Behaviour({
    required this.id,
    required this.booklet,
    required this.question,
    required this.questionImageUrl,
    required this.answerChoices,
    required this.answerImageUrl,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.durationInMinutes,
  });
  late final int id;
  late final String booklet;
  late final String question;
  late final String questionImageUrl;
  late final List<String> answerChoices;
  late final String answerImageUrl;
  late final int correctAnswer;
  late final int difficultyLevel;
  late final int durationInMinutes;

  Behaviour.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    booklet = json['booklet'];
    question = json['question'];
    questionImageUrl = json['question_image_url'];
    answerChoices = List.castFrom<dynamic, String>(json['answer_choices']);
    answerImageUrl = json['answer_image_url'];
    correctAnswer = json['correct_answer'];
    difficultyLevel = json['difficulty_level'];
    durationInMinutes = json['duration_in_minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booklet'] = booklet;
    _data['question'] = question;
    _data['question_image_url'] = questionImageUrl;
    _data['answer_choices'] = answerChoices;
    _data['answer_image_url'] = answerImageUrl;
    _data['correct_answer'] = correctAnswer;
    _data['difficulty_level'] = difficultyLevel;
    _data['duration_in_minutes'] = durationInMinutes;
    return _data;
  }
}
