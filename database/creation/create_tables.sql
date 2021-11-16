CREATE TABLE store(
  id integer PRIMARY KEY,
  nome varchar(50) NOT NULL,
  map varchar(50) NOT NULL,
  x integer NOT NULL,
  y integer NOT NULL
);
  
CREATE TABLE vendor(
   id integer PRIMARY KEY,
   nome varchar(50) NOT NULL UNIQUE
);

CREATE TABLE item(
    id integer PRIMARY KEY,
    name varchar(50) NOT NULL
);

CREATE table item_statistics(
    item_id integer ,
    date date,
    average_price integer,
    min_price integer,
    max_price integer,
    CONSTRAINT fk_item FOREIGN KEY(item_id) REFERENCES item(id)
);

CREATE TABLE fact_table(
    item_id integer,
    vendor_id integer,
    store_id integer,
    amount integer,
    price integer,
    CONSTRAINT fk_item FOREIGN KEY(item_id) REFERENCES item(id),
    CONSTRAINT fk_vendor FOREIGN KEY(vendor_id) REFERENCES vendor(id),
    CONSTRAINT fk_store FOREIGN KEY(store_id) REFERENCES store(id)
);

