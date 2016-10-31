Feature: Player
  In order to portray or pluralize player
  As a CLI
  I want to be as objective as possible

  Scenario: Kobe is Good
    When I run `nbamagnet portray kobe`
    Then the output should contain "Good!"

  Scenario: Player, or Players?
    When I run `nbamagnet pluralize --word player`
    Then the output should contain "players"