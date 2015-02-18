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

Semantic errors are often tougher to diagnose - instead of small grammatical mistakes, these are mistakes in the logic and/or flow of your programs. Are you trying to use `.upcase` on an array? Are you forgetting to require a file? Are you referencing a method or a variable that doesn't exist yet? Semantic errors come in all shapes and sizes, and often the more code you write the harder they are to find. That's why it is **super important** to write clean, easy to read code. It's much easier to find an error looking though a properly spaced and indented document than it is to weed though jumbled and disorganized text.

### Tips on Troubleshooting and Error Fixing

+ Always read error messages top-down, as the most important information is often served up first.
+ Error messages in Ruby have a specific flow. Here's what an error can look like:
``` 
test_file.rb:2: syntax error, unexpected end-of-input, expecting keyword_end
	"error messages are so great"
```
++ First, you are given the file, and the line number in the file to look at:
``` 
test_file.rb:2:
```



