//  1. Create a class called Book.
// 2. Add properties for title, author, publication year, and pages read.
// 3. Add a method called read that takes a number of pages as a parameter and adds it to the pages read.
// 4. Add a method called getPagesRead that returns the number of pages read.
// 5. Add a method called getTitle that returns the title of the book.
// 6. Add a static property called totalBooks that keeps track of the total number of books created.

class Book {
  static int totalBooks = 0;
  String? title;
  String? author;
  int? publicationYear;
  int pagesRead = 0;

  void read(int pages) {
    this.pagesRead += pages;
  }

  int getPagesRead() {
    return this.pagesRead;
  }

  String getTitle() {
    return this.title!;
  }

  String getAuthor() {
    return this.author!;
  }

  int getBookAge() {
    return DateTime.now().year - this.publicationYear!;
  }

  int getPublicationYear() {
    return this.publicationYear!;
  }

  Book({this.title, this.author, this.publicationYear, this.pagesRead = 0}) {
    totalBooks++;
  }
}

void main() {
  Book book_one = Book();
  book_one.title = "The Great Gatsby";
  book_one.author = "F. Scott Fitzgerald";
  book_one.publicationYear = 1925;

  Book book_two = Book(
      author: "Jane Doe",
      title: "The Great Gatsby Volume 2",
      publicationYear: 1934);

  Book book_three = Book(
      author: "Jane Doe",
      title: "The Great Gatsby Volume 3",
      publicationYear: 1954);

  book_one.read(102);
  book_one.read(10);
  book_two.read(19);
  book_three.read(29);

  print("Book1 title: " + book_one.getTitle());
  print("Book1 Author: " + book_one.getAuthor());
  print("Book1 publication year: " + book_one.getPublicationYear().toString());
  print("Book1 pages read: " + book_one.getPagesRead().toString());
  print("Book1 age: " + book_one.getBookAge().toString());

  print("Book2 title: " + book_two.getTitle());
  print("Book2 Author: " + book_two.getAuthor());
  print("Book2 publication year: " + book_two.getPublicationYear().toString());
  print("Book2 pages read: " + book_two.getPagesRead().toString());
  print("Book2 age: " + book_two.getBookAge().toString());

  print("Book3 title: " + book_three.getTitle());
  print("Book3 Author: " + book_three.getAuthor());
  print(
      "Book3 publication year: " + book_three.getPublicationYear().toString());
  print("Book3 pages read: " + book_three.getPagesRead().toString());
  print("Book3 age: " + book_three.getBookAge().toString());

  print(Book.totalBooks);
}
