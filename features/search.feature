Feature: Google search 

@CloseTest
Scenario: Search for the term Active sync
Given the user accessed Google Search US
When the user search for "Active sync"
And the user click on the first result
Then the user see "ActiveSync 4.5" on the page