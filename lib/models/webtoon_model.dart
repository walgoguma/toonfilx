class WebtoonModel {
  final String title, thumb, id;

  /* constructor */
  /*
  WebtoonModel({
    required this.title,
    required this.thumb,
    required this.id,
  });
  */

  /*named Constructor*/
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
