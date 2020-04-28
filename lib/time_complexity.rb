require './spec/books_10.rb'
require './spec/books_100.rb'
# require './spec/books_1000.rb'

def find_book(books, book_to_find)
  # TODO: return index of `book_to_find` in the array of `books`
  # Use `each_with_index`
  book_index = nil
  books.each_with_index do |book, index|
    book == book_to_find ? book_index = index : nil
  end
  book_index
end

def find_book_enhanced(books, book_to_find)
  # TODO: return index of `book_to_find` in the array of `books`
  # Use binary search
  # 1. Pick the book in the middle of the array.
  # 2. Compare this book with the title you're looking for:
  # - Is it your book? Return the index, you're done!
  # - Is your book before or after the pivot book? Follow up to step 3!
  # 3. Select the section of the array where your book is.
  # 4. Do the whole process all over again.
  # first = 0
  # last = books.length - 1
  first = 0
  last = books.length - 1
  while first <= last
    i = (first + last) / 2
    if books[i] == book_to_find
      return i
      # return "#{book_to_find} found at position #{i}"
    elsif books[i] > book_to_find
      last = i - 1
    elsif books[i] < book_to_find
      first = i + 1
    else
      # return "#{book_to_find} not found in this array"
      return nil
    end
  end
end


p find_book(BOOKS_10, 'Open Source')
p find_book(BOOKS_100, 'Learn Ruby On Rails')
