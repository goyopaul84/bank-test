# bank-test

Bank tech test

Objectives

    TDD
    Maximum test coverage
    Reaching a working solution

Instructions

    git clone https://github.com/justcallmegoyo/bank-test.git
    bundle install
    Move to bank-test folder
    irb then:

<INSERT SCREENSHOT> 

Testing of this app was with rspec.

Approach

    Write user stories:

    As an account holder
    So that I can add money to my account 
    I can make a deposit

    As an account holder
    So that I can access my funds 
    I can make a withdrawal

    As an account holder
    So that I can see how much money I have left 
    I can print out a statement

  ## Feedback 
  (received from coursemate Tome - many thanks indeed!) 
  
- You don't have a feature test. You should start by writing a feature test then write unit tests to recreate the errors that come up in your feature test.
- You're not using doubles correctly in your first Account test, you should only double other classes not the one you are testing - that first test isn't actually testing anything so is evergreen, try breaking your code and you will see that the test still passes.
- Your are storing a lot of information as strings in the attributes of your account class, think about extracting a transaction class which allow you to stores objects in your account class instead.
- I'm not sure how calculate_balance works, can you explain it?
- You're also not mocking Account in your printer tests, you've injected this class so it should be straight forward to do this. 
- You should also mock printer in account and allow the behaviour you use from your account class.
- Your naming is good and your methods are short, good stuff!
