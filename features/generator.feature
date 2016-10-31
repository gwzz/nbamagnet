Feature: Generating things
  In order to generate many a thing
  As a CLI newbie
  I want nbamagnet to hold my hand, tightly

  Scenario: Recipes
    When I run `nbamagnet star power kobe`
    Then the following files should exist:
      | power/kobe.txt |
    Then the file "power/kobe.txt" should contain:
      """
      ##### power statistics #####
      kobe power.


      ##### Skills #####
      kobe skills
      """