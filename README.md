This App is the backend that connects to the front end at: https://github.com/chefkasperson/dshifts-front - To access the front end please use this clone this repository and run that app as well.

Instructions

After cloning the repo
run bundle install and then
rails s to start a server.

This app has been set to run on localhost:3001 by default to avoid conflicting with the front end.

-- Regarding Action Mailer --

This app was set up to use Action Mailer via gmail to send emails. The gmail username and password are hidden in a .env file.

In order to get the mailer to work new gmail username and password need to be placed in a .env file using the example in .env.example as a guide.

The mail settings may also need to enable less secure apps access in the Google Account Security Settings.

-- Additional --
This app uses the 'devise' and 'devise-jwt' gems for authorization, the 'fast-json' gem for serialization, and the 'dotenv-rails' gem for .env file for securing Gmail account information.
