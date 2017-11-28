Narrative:
This story covers basic tests of signup

Lifecycle:
Before:
Given I open signup page

Scenario: Type invalid year
When I set month "December"
And I set day "20"
And I set year "85"
And I check share
Then I see error "Please enter a valid year."
And I do not see error "When were you born?"