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

Scenario: Type invalid emailq
Meta: @skip
When I type email "test@mail.test"
And I type confirmation email "wrong@mail.test"
And I type name "Testname"
And I click signup
Then I see error "Email address doesn't match."
And I see error "Not exist"

Scenario: Sign up with empty password
Meta: @skip
When I type email "test@mail.test"
And I type confirmation email "test@mail.test"
And I type name "Testname"
And I click signup
Then I see error "Please choose a password."

Scenario: Type invalid values
Meta: @skip
When I type email "testmail"
And I type confirmation email "wrong@test.mail"
And I type password "qweqwe!123"
And I type name "Name"
And I select sex "Male"
And I uncheck share
And I click signup
Then I see "4" errors
And I see that "3" error has text "When were you born?"