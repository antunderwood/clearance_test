# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clearance_test_session',
  :secret      => 'a180e6f358929810aefb53c0338869d14dc9e13f7d3fe356d7d980947ec0972c0604c2e1d8632b735fbaa8000524f044bac53a8b3d80121b54bf38666e8fae7a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
