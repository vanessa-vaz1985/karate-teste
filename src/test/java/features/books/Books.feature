Feature: Books
  
  Background: 
    * url urlBase

    * def bookTitle = 'Book '
    * def bookId = 1

  Scenario: GET Books
    Given path '/api/Books'
    When method GET
    Then status 200
    
  Scenario: GET Book 1
    Given path '/api/Books/1'
    When method GET
    Then status 200
    And match (bookTitle + bookId) == response.Title

  Scenario: POST Book

    * def book = read('../../data/book.json')

    Given path '/api/Books'
    And request book
    When method POST
    Then status 200
    And match response.size() == 6
    And match $.length() == 6
    And match book.ID == response.ID
    And match book.Title == response.Title
    And match book.Description == response.Description
    And match book.PageCount == response.PageCount
    And match book.Excerpt == response.Excerpt
    And match response.PublishDate contains '2019-11-25'

    * print book.ID
    * print response.ID
    * print book.Title
    * print response.Title
    * print book.Description
    * print response.Description
    * print book.PageCount
    * print response.PageCount
    * print book.Excerpt
    * print response.Excerpt
    * print book.PublishDate
    * print response.PublishDate
    * print response.size()
    * print response