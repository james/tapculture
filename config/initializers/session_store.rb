# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tapculture_session',
  :secret      => '0e1f635c819a7445235b7a9601e0168cfe68ed0cd3390dbf3080e48556470a3270c83eb71f5176504a7bd4d4cfdc62b9443e61509d10cd15468f0a441a54e7fe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
