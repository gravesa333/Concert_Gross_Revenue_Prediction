CREATE DATABASE fox_ticket_sales;

\connect fox_ticket_sales;

  DROP TABLE IF EXISTS ticket_sales;

CREATE TABLE ticket_sales(
                           Event_Date varchar(200),
                           Num_Shows int,
                           Headliner varchar(200),
                           Support varchar(200),
                           Tickets_Sold numeric,
                           Gross_USD numeric,
                           Gross_Gate numeric,
                           Currency varchar(200),
                           Venue_Capacity numeric,
                           Percentage_Sold numeric,
                           Ticket_Price_Min numeric,
                           Ticket_Price_Max numeric,
                           Venue_Name varchar(200),
                           Venue_City varchar(200),
                           Venue_State varchar(200),
                           Venue_Country varchar(200),
                           Promoter varchar(200)
                         );

\copy ticket_sales FROM 'Data/fox-theater-all-shows.csv' DELIMITER ',' CSV HEADER;


