# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Barney::Application.config.secret_key_base = Rails.env.production?? ENV['SECRET_TOKEN'] : "0221443db7d7e67d76be132cc138d9ed948099cf16be779fea682cd95a2b7ab35bb5fe6b94e92a1c91eabf7a6101a4cb39bc65824a68e6e89bb2e2571947ed46"
