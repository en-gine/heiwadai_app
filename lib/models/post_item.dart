class PostItem {
  const PostItem({
    required this.id,
    required this.title,
    required this.content,
    required this.postDate,
    required this.author,
  });

  final String id;
  final String title;
  final String content;
  final DateTime postDate;
  final String author;
}

// // お知らせ WordPressから取ってくるかも
// type Post struct {
// 	ID         uuid.UUID
// 	Title      string
// 	Content    string
// 	Author     Admin
// 	PostStatus PostStatus //下書きor公開。flutter側では気にする必要なし
// }
// type PostStatus int
// ​
// const (
// 	Draft PostStatus = iota
// 	Publish
// )