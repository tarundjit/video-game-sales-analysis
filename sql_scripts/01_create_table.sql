CREATE TABLE game_sales (
    game_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    platform VARCHAR(50),
    year_of_release INT,
    genre VARCHAR(50),
    publisher VARCHAR(100),
    na_sales BIGINT,
    eu_sales BIGINT,
    jp_sales BIGINT,
    other_sales BIGINT,
    global_sales BIGINT
);