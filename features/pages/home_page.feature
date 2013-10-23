Feature: Visitor Views Home Page
  In order to trust the brand
  As a Visitor to the website
  I want to view the home page of the app

  Scenario: Site has prelaunch page
    Given the site has not launched
    When the Visitor arrives at the website root URL
    Then the prelaunch page should be displayed

  Scenario: Prelaunch page had identifying information
    Given the prelaunch page has been displayed
    When the Visitor views the page
    Then the prelaunch page 