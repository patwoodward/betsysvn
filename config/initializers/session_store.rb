# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_betsy_session',
  :secret      => '6d81c2a655ae134eb68a4207dcf9ed5c8900a9e305dbad59f6a4ac1062db9d7dffa884efaf4c4b25ce9c1a25b4605346540608088c981588f708c516cf115e66'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
