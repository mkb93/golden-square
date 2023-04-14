# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._
```ruby
# EXAMPLE

I will assume the individual submits a singlew sentence and check if the sentence ends in a '.', '?' , '!' and starts with a capital letter 

first I will make the function fail/give an error  if someone inputs an integer please input a string
and if the string length is 0 it will fail and give the error "enter a longer string"


## 3. Create Examples as Tests
 grammar_checker(nil) => raise_error "enter a string"
 grammar_checker("") => raise_error "enter a longer string"
 grammar_checker(5) => raise_error "enter a string"
 grammar_checker("the cow eats the grass.") => raise_error 'no capital letter'
 grammar_checker("The cow eats the grass.") => "Correct" 
 grammar_checker("The cow eats the grass!") => "Correct" 
 grammar_checker("The cow eats the grass?") => "Correct" 
_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

making

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->