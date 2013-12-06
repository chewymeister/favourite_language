Feature: The application is able to predict the most popular language of a given github repository. 

  Scenario: User inputs their username

  When the user submits a valid github username such as "chewymeister"
  Then the user will see the name of the most popular language used in that repository "Ruby"
