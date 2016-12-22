# Caesar's Cipher
#### My first Sinatra Webapp

## What is this?
Try it [here!](https://caesars-cipher.herokuapp.com/). 
It is simple Sinatra app that I built while while following the curriculum at [The Odin Project](http://www.theodinproject.com).

## What does it do?
A Casar Cipher, or a shift cipher, is a text encryption method that takes some text and replaces each character with a character that is a given distance up or down the alphabet. `a` becomes `b`, `z` becomes `a`, and `Hello, my name is Thomas, thanks for coming!` becomes `Ifmmp, nz obnf jt Uipnbt, uibolt gps dpnjoh!` Thank goodness for this app, because otherwise that last one would have taken some time.

## Abstraction. (...or whatever it's called.)
The app view contains an html `<form>` containg a textarea and dropdown options. The app accepts user input by way of a `params` hash sent via a `GET` request to `'/'` We just gotta store those `params[:input]` and `params[:shift_factor]` into some variables, and then we can pass them along to the [`caesar_cipher.rb`](https://github.com/Thomascountz/odin_projects/blob/master/caeser_cypher/lib/caeser_cypher.rb) script that I got to build and write tests for earlier on in the curriculum. 

The previously CLI-only script uses `if-else` logic to take an input string and a shift integer, check to see if each character is a letter, if it is, it shifts it within the bounds of the 26 letters in our alphabet. The result is rendered in the `views/index.erb` file, after the `GET` request has been recieved.

## Where do we go from here?
I'd love to utilize the conventional `POST` request, rather than only `GET`. I'm sure I've just got to be willing to get in there and work some things out. Also, why does it have to be a drop down menu? I should be able to find a way to accept and validate a integer in a text box as input.

The `if-else` logic mostly works in the Ruby script, except I'd love to see the use of negative numbers produce 'unencryption' so that I get these results.
```
#./lib/caeser_cipher.rb
c_cypher("Hello", 5) #=> "Mjppt"
c_cypher("Mjppt", -5) #=> "Hello"
```
However, I'm having trouble skirting around the ASCII characters surrounding the alphabet.

Lastly, it's been a while since I've used html, css, and javascript, so I gotta get my hands dirty there again too.

## What did I learn?

In the Ruby script, I made sure to use an `args` hash for passing in parameters, that way some burden is taken off of the caller as the app keeps on growing, and I had fun using `CONSTANTS` to get rid of the magic numbers I had floating so other developers can help me more easily. Finally, and funnily enough, using the `Array#map` function was a revalation for me, saving me a few lines of extra code and a more conscise 

In the testing, I saved myself from having to constantly write tests in the commandline. Even after falling in love with the `pry` gem and using `bindings` nothing beats the pleasure of TDD. Hell, I'm still enjoying going back and refactoring, knowing the code is safe.

Finally, Sinatra has already tightened up some of my understanding of web development. Have just briefly touched on Rails before, it was all magic, now it's magic and a little bit of technique.
