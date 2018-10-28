# Q0: Why are these two errors being thrown?
The first error is being thrown because we haven't updated our database schema. The second error is being thrown because we are referring in our controller a model that doesn't exist yet (Pokemon).

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The view pulls a random ID from the table and chooses to display the corresponding image and text information. The common factor between all possible pokemon is their structure as part of the pokemon model.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line displays a button that when clicked, searches for a capture method in the Pokemon controller. It references the path to this method using the URI capture_path and inserts the pokemon id as parameters for this method. We in our route the prefix_path for our capture PATCH method as 'capture'.
# Question 3: What would you name your own Pokemon?
I nickname my pokemon a shorter version of their names -- "squirtle" = "squirt", "charmander" = "char", etc.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed into the redirect_to the URL dynamic path for our trainer with its proper id. It needed the path name and the current_trainer.id to redirect to the proper page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Flash error is a built in method for rails that stores information only in the next request. It is likely that when we pass in an object into our form that is not valid, '@pokemon.errors' is updated, and we receive that information as an error message on screen.
https://github.com/mylesdomingo/proj1

# Give us feedback on the project and decal below!
Forms are still really confusing!
# Extra credit: Link your Heroku deployed app
