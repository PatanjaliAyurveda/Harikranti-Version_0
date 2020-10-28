class Language {

  final int id;
  final String name;
  final String languageCode;

  Language(this.id, this.name, this.languageCode);
  
  static List<Language> languageList(){
    return<Language>[
      Language(1,'English "EN"','en'),
      Language(2,'हिंदी','hi'),
       Language(1,'Punjabi','en'),
      Language(2,'Marathi','hi'),
    ];

  }
}