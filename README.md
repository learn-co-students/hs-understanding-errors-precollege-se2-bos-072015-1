---
tags: errors, ruby, kids
type: lab
level: 1
languages: ruby
---

## Reading Errors and Diagnosing Problems with your Code

One of the most important skills any developer needs is the ability to read and understand errors. Every single developer that has ever existed - from Steve Wozniak to Mark Zuckerberg to Larry Page - has encountered errors in their code and had to work to fix them.

Sometimes errors can take 30 seconds to fix. More serious bugs can take weeks. The key is perseverence, keeping your cool, paying attention to error messages, and a high tolerance for frustration. This lab is designed to introduce you to some common syntax errors and get you comfortable with reading and interpreting error messages.

### The Two Types of Errors

There are two types of errors in Ruby (and most other programming languages): *Syntax* Errors and *Semantic* Errors.

#### Snytax Errors
Syntax errors are like the spelling and grammar mistakes of code. Your code may be logically correct, but remember computers are stupid and need the code to be written very specifically - Forgetting to close quotation marks, for example, will cause your code to fail. Here are some more examples:

+ Misspellings ('initialize' is spelled I-N-I-T-I-A-L-I-Z-E!)
+ Forgetting an `end`
+ Having one too many `end`s
+ Forgetting a closing `"`,`)`,`}`, or `]`.

#### Semantic Errors

Semantic errors are often tougher to diagnose - instead of small grammatical mistakes, these are mistakes in the logic and/or flow of your programs. You often don't even get an error message, just a program that doesn't work the way you want it to. Are you trying to use `.upcase` on an array? Are you forgetting to require a file? Are you referencing a method or a variable that doesn't exist yet? Semantic errors come in all shapes and sizes, and often the more code you write the harder they are to find. That's why it is **super important** to write clean, easy to read code. It's much easier to find an error looking though a properly spaced and indented document than it is to weed though jumbled and disorganized text.

### Reading a Ruby Error Message

+ Always read error messages top-down, as the most important information is often served up first.
+ Error messages in Ruby have a specific flow. Here's what an error can look like:
``` 
test_file.rb:2: syntax error, unexpected end-of-input, expecting keyword_end
	"error messages are so great"
```
Let's break this down. First, you are given a filename: `test_file.rb:`, and the line number in the file to look at: `2:`. Next, you're told what kind of error you're dealing with: 'syntax error'. Then you will be given details on the error itself: `unexpected end-of-input`. And finally, a recommendation on how to fix it `expecting keyword_end`. Makes sense, no? Now I know that I should look around line 2 in `test_file.rb` for a missing `end` keyword! 

+ Don't always trust the line number and file name, especially if you're dealing with errors that are not syntax-related.

+ You won't always get all of these pieces (for example: `test.rb:1:in '<main>': undefined local variable or method 'hello' for main:Object (NameError)`)

### I Don't get an Error Message, but it's Not Working

These are the much trickier errors to deal with. You don't receive an error message, but something is just not working correctly. You're most likely dealing with a semantic (logic) problem in your code. A few tips to help you through this:

+ Walk through your code out loud with another developer. Explain what is happening in your program, line by line.
+ Test your assumptions by using `binding.pry` in tricky parts of code
+ Copy methods to Pry/IRB and try to run it in isolation.
+ Go for a walk/sleep on it. Your brain needs breaks!
+ Every time you make a change, run your code.
+ Confirm all variable values.
+ Confirm your return values (Remember, `puts` always returns nil!)


### Your Task!

Fork and Clone this repo and then run the tests. They won't pass. In fact, they won't even work. Your job is to debug the code to make the tests pass!

Make sure to submit a pull request when you're done!



