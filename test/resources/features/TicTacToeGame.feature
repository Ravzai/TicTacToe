Feature: Tic Tac Toe game

  Scenario: A field can only be claimed once
    Given field (1, 1) is free to claim
    And player X takes field (1, 1)
    When player O tries to claim it
    Then field (1, 1) is still taken by player X.

  Scenario: All fields in a row are taken by a player
    Given Game is in progress
    When Player X fills one whole row
    Then Player X should win the game
    And Game over

  Scenario: a game is over when all fields in a diagonal are taken by a player
    Given Game is in progress
    When Player X fills a diagonal row
    Then Player wins
    And Game over

  Scenario: a game is over when all fields are taken
    Given Game is in progress
    When Player X and O filling the fields
    And They didn’t take a whole row
    Then Game over

  Scenario: players take turns taking fields until the game is over
    Given Game is starting
    And Players add X and O
    When X has a turn
    And X add X in the row
    Then O takes the turn
    And this goes on until the game is over