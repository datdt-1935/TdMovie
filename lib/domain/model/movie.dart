import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  bool adult;
  @JsonKey(name: 'backdrop_path')
  String backdropPath;
  @JsonKey(name: 'belong_to_collection')
  BelongsToCollection belongsToCollection;
  int budget;
  List<Genre> genres;
  String homepage;
  int id;
  @JsonKey(name: 'imdb_id')
  String imdbId;
  @JsonKey(name: 'original_language')
  OriginalLanguage originalLanguage;
  @JsonKey(name: 'original_title')
  String originalTitle;
  String overview;
  double popularity;
  @JsonKey(name: 'poster_path')
  String posterPath;
  @JsonKey(name: 'production_companies')
  List<ProductionCompany> productionCompanies;
  @JsonKey(name: 'production_countries')
  List<ProductionCountry> productionCountries;
  @JsonKey(name: 'release_date')
  DateTime releaseDate;
  int revenue;
  int runtime;
  @JsonKey(name: 'spoken_language')
  List<SpokenLanguage> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  @JsonKey(name: 'vote_average')
  double voteAverage;
  @JsonKey(name: 'vote_count')
  int voteCount;
  Videos videos;
  Credits credits;

  Movie({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.videos,
    this.credits,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> fromJson() => _$MovieToJson(this);
}
