This is a rails app that I created in a day for a coding challenge.

It functions as a library, having users sign in and out in order to access books. Books can be checked in or out and they can be created, edited, and destroyed. There is a live version of this project and it can be found [here](https://hill-library.herokuapp.com).

I am particularly proud of my books model, which has a custom validation for the publication year. It can be found [here](app/models/book.rb).

Another portion of the project that I am proud of is the application controller, which has very important methods for signing a user into and out of the system. It can be found [here](app/controllers/application_controller.rb).