package features.books;

import com.intuit.karate.junit5.Karate;

class BooksRunner {

    @Karate.Test
    Karate testsBooks(){

        return new Karate().feature("Books").relativeTo(getClass());
    }
}
