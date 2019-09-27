# Linked List #2
Solution and Tests to the Columbia University Linked List #2 problem.

## Project structure
- `lib/linked_list.rb`  - contains solution
- `spec/linked_list_spec.rb` - includes tests for reverse method the LinkedList using mutation, 
and determine if a LinkedList is infinite or not

## Solution
- The `reverse_list` method reverse the linked list and return it
- The `is_infinite?` method validate infinite LinkedList and returns `true` or `false`
- The `list_to_array` created as an additional method for testing purpose. When test validates the linked list
it has objects inside and the order of them will be different for reversed list. For validation purpose, I 
convert list to array and array to string. That way rspec is able to compare two strings and tests are more readable for other people to review.

## Test execution
- Run `bundle install`
- Open terminal window
- From the project directory run `rspec`



