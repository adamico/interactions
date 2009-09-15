# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_interactions_session',
  :secret      => '24708dad55a103e6263c6c26e93863e28cc41c6eb10642eb81c2fa2c604ee05a8f7b398bf89fd159641c08227dfd012bf43620cad0ff1dae4bfe20896d0844f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
