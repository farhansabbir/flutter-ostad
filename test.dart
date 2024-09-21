class Book {
  static int totalBooks = 0;
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  void read(int pages) {
    this.pagesRead += pages;
  }

  int getPagesRead() {
    return this.pagesRead;
  }

  String getTitle() {
    return this.title;
  }

  String getAuthor() {
    return this.author;
  }

  int getBookAge() {
    return DateTime.now().year - this.publicationYear;
  }

  int getPublicationYear() {
    return this.publicationYear;
  }

  Book(
      {this.title = "The Great Gatsby",
      this.author = "F. Scott Fitzgerald",
      this.publicationYear = 1925,
      this.pagesRead = 0}) {
    totalBooks++;
  }
}

void main() {
  Book book_one = Book();
  book_one.title = "The Great Gatsby";
  book_one.author = "F. Scott Fitzgerald";
  book_one.publicationYear = 1925;

  Book book_two = Book(
      publicationYear: 1930,
      author: "John Doe",
      title: "The Great Gatsby Volume 2");
  Book book_three = Book(
      author: "Jane Doe",
      title: "The Great Gatsby Volume 3",
      publicationYear: 1934);

  book_one.read(102);
  book_two.read(19);
  book_three.read(29);

  print(book_one.getTitle());
  print(book_one.getAuthor());
  print(book_one.getPublicationYear());
  print(book_one.getPagesRead());
  print(book_one.getBookAge());

  print(book_two.getTitle());
  print(book_two.getAuthor());
  print(book_two.getPublicationYear());
  print(book_two.getPagesRead());
  print(book_two.getBookAge());

  print(book_three.getTitle());
  print(book_three.getAuthor());
  print(book_three.getPublicationYear());
  print(book_three.getPagesRead());
  print(book_three.getBookAge());

  print(Book.totalBooks);
}
