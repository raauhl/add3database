CREATE TABLE customers (
  wallet_address VARCHAR(128) PRIMARY KEY,
  token_symbol VARCHAR(16),
  token_name VARCHAR(64),
  user_balance VARCHAR(128)
);

CREATE TABLE logins (
  id SERIAL PRIMARY KEY,
  wallet_address VARCHAR(128),
  login_time TIMESTAMP
);

CREATE TABLE mints (
    id SERIAL PRIMARY KEY,
    from_address VARCHAR(128) REFERENCES customers(wallet_address),
    to_address VARCHAR(128),
    mint_amount VARCHAR(128),
    token_symbol VARCHAR(16),
    success_status BOOLEAN,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);