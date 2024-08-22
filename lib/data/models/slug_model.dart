import '../../shared/localization/trans.dart';

class KSlugModel {
  String translated;
  String slug;

  KSlugModel({required this.translated, required this.slug});

  ///Find Model By Slug
  static KSlugModel? of(String? slug) {
    switch (slug) {
      case _male:
        return KSlugModel(translated: Tr.get.male, slug: _male);
      case _saturday:
        return KSlugModel(translated: 'Saturday', slug: _saturday);
      case _sunday:
        return KSlugModel(translated: 'Sunday', slug: _sunday);
      case _monday:
        return KSlugModel(translated: 'Monday', slug: _monday);
      case _tuesday:
        return KSlugModel(translated: 'Tuesday', slug: _tuesday);
      case _wednesday:
        return KSlugModel(translated: 'Wednesday', slug: _wednesday);
      case _thursday:
        return KSlugModel(translated: 'Thursday', slug: _thursday);
      case _friday:
        return KSlugModel(translated: 'Friday', slug: _friday);
      case _female:
        return KSlugModel(translated: Tr.get.female, slug: _female);
      default:
        return null;
    }
  }

  ///Lists of Slugs & Trans
  static List<KSlugModel> get genders => [
        KSlugModel(translated: Tr.get.male, slug: KSlugModel._male),
        KSlugModel(translated: Tr.get.female, slug: KSlugModel._female),
      ];


  ///Const String Slugs
  ///
  static const String _male = "male";
  static const String _female = "female";
  static const String _saturday = "Saturday";
  static const String _sunday = "Sunday";
  static const String _monday = "Monday";
  static const String _tuesday = "Tuesday";
  static const String _wednesday = "Wednesday";
  static const String _thursday = "Thursday";
  static const String _friday = "Friday";

  @override
  String toString() => slug;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is KSlugModel && other.translated == translated && other.slug == slug;
  }

  @override
  int get hashCode => translated.hashCode ^ slug.hashCode;
}
