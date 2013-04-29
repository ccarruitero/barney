# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Barney::Application.config.secret_key_base = Rails.env.production?? ENV['SECRET_TOKEN'] : '3539146a307a58afe5549fce5b7dd25ad2b20bb3e43192aa7a190726f8cafa8ee9a0f50c08fc491346a6fe2c20586151b98a0c807d5f6b21383d44e0aa202b38'
