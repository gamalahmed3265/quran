class AppConstans {
  static const baseUrl = "https://api.alquran.cloud/v1";
  static String baseUrlJuz(String language, int juzNumber) =>
      "$baseUrl/juz/$juzNumber/en.asad&language=ar";
  static String baseWholeQuranar(String language) =>
      "$baseUrl/quran/en.asad&language=$language";

  static String baseWholeQuranEn = "$baseUrl/quran/en.asad";
  static const String urlAlquraaR =
      "https://raw.githubusercontent.com/islamic-network/cdn/master/info/cdn_surah_audio.json";

  static const baseUrlAudio = "https://cdn.islamic.network/quran/audio";
  // static String baseWholeQuranEn = "$baseUrlAudio/quran/en.asad";
}
