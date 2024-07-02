import unittest
from booklover import BookLover

class BookLoverTestSuite(unittest.TestCase):
    
    def test_1_add_book(self): 
        # add a book and test if it is in `book_list`.
        bob = BookLover('Bob', 'bob@gmail.com', 'Apocalyptic/Dystopian')
        bob.add_book('Divergent', 3)
        self.assertTrue(bob.num_books_read() == 1)

    def test_2_add_book(self):
        # add the same book twice. Test if it's in `book_list` only once.
        bob = BookLover('Bob', 'bob@gmail.com', 'Apocalyptic/Dystopian')
        bob.add_book('Crazy Rich Asians', 4)
        bob.add_book('Crazy Rich Asians', 4)
        # check if book_list only contains one copy of Crazy Rich Asians
        self.assertTrue(bob.num_books_read() == 1)
                
    def test_3_has_read(self): 
        # pass a book in the list and test if the answer is `True`.
        bob = BookLover('Bob', 'bob@gmail.com', 'Apocalyptic/Dystopian')
        bob.add_book('Divergent', 3)
        self.assertTrue(bob.has_read('Divergent'))
        
    def test_4_has_read(self): 
        # pass a book NOT in the list and use `assert False` to test the answer is `True`
        bob = BookLover('Bob', 'bob@gmail.com', 'Apocalyptic/Dystopian')
        bob.add_book('Divergent', 3)
        self.assertFalse(bob.has_read('Crazy Rich Asians'))
        
    def test_5_num_books_read(self): 
        # add some books to the list, and test num_books matches expected.
        bob = BookLover('Bob', 'bob@gmail.com', 'Apocalyptic/Dystopian')
        bob.add_book('Divergent', 3)
        bob.add_book('Crazy Rich Asians', 4)
        bob.add_book('Autoboyography', 5)
        self.assertTrue(bob.num_books_read() == 3)

    def test_6_fav_books(self):
        # add some books with ratings to the list, making sure some of them have rating > 3. 
        # Your test should check that the returned books have rating  > 3
        bob = BookLover('Bob', 'bob@gmail.com', 'Apocalyptic/Dystopian')
        bob.add_book('Divergent', 3)
        bob.add_book('Crazy Rich Asians', 4)
        bob.add_book('Autoboyography', 5)
        self.assertTrue(bob.fav_books() == ['Crazy Rich Asians', 'Autoboyography'])
                
if __name__ == '__main__':
    
    unittest.main(verbosity=3)