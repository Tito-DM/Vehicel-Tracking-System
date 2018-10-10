Feature: User Sign up

   In order to track my vehicel
   As a User
   I want to be able to register my vehicel
   Background: Ensure existence of a user
    Given the following user exists:
      | email             | password | 
      | angola@center.com | foo      | 

   Scenario: register vehicel
    Given I am on the vehicel registration page
    When I fill in 'vehicel[First_name]' with 'Marc'
    And I fill in 'vehicel[surname]' with 'Mariano'
    And I fill in 'vehicel[vehicel_brand]' with 'foo'
    And I fill in 'vehicel[vehicel_model]' with 's-14'
    And I fill in 'vehicel[vehicel_color]' with 'red'
    And I fill in 'vehicel[plate_number]' with '4323234'
    And I fill in 'vehicel[user_id]' with '4'
    And I click on 'register your vehicel'
    Then I should see 'Vehicel was successfully created.'

