## Version 2.0
## language: en

Feature: i-love-cat-ringerzeroctf
  Site:
    https://ringzer0ctf.com/challenges/252
  Category:
    Forensics
  User:
    john2104
  Goal:
    Get the flag

  Background:
  Hacker's software:
  | <Software name> | <Version>           |
  | NixOS           | 19.09.2260          |
  | Chromium        | 78.0.3904.87        |

  Machine information:
    Given the challenge URL
    """
    https://ringzer0ctf.com/challenges/252
    """
    When I open the url with Chrome
    Then I get the message
    """
    I love cat! Do you?
    """
    And a set of credentials
    """
    User: cat
    Password: cat
    ssh challenges.ringzer0team.com port 10252
    """
  Scenario: Fail:Read
    Given that I connected to the server
    When I list the /home/cat directory
    Then I see a flag.txt file
    When I tried to read the file with cat
    Then I get the message
    """
    ************************** WHERE IS THE FLAG ? **************************
    """
    And I don't solve the challenge

   Scenario: Success:Nonprinting
    Given that I connected to the server
    When I use the nonprinting option in cat
    """
    cat -v flag.txt
    """
    Then I the flag
    And solve the challenge
