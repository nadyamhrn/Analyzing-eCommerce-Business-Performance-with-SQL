create table if not exists customer_dataset (
	customer_id varchar primary key not null,
	customer_unique_id varchar,
	customer_zip_code_prefix varchar,
	customer_city varchar,
	customer_state varchar
);

create table if not exists geolocation_dataset (
	geolocation_zip_code_prefix varchar,
	geolocation_lat numeric,
	geolocation_lng numeric, 
	geolocation_city varchar, 
	geolocation_state varchar
);

create table if not exists order_items_dataset (
	order_id varchar, 
	order_item_id varchar,
	product_id varchar, 
	seller_id varchar,
	shipping_limit_date timestamp,
	price numeric,
	freight_value numeric
);

create table if not exists order_payments_dataset (
	order_id varchar,
	payment_sequential integer,
	payment_type varchar,
	payment_installments integer, 
	payment_value numeric
);

create table if not exists order_reviews_dataset (
	review_id varchar,
	order_id varchar,
	review_score integer,
	review_comment_title varchar,
	review_comment_message varchar,
	review_creation_date timestamp,
	review_answer_timestamp timestamp
);

create table if not exists order_dataset (
	order_id varchar primary key not null,
	customer_id varchar,
	order_status varchar,
	order_purchase_timestamp timestamp,
	order_approved_at timestamp,
	order_delivered_carrier_date timestamp,
	order_delivered_customer_date timestamp,
	order_estimated_delivery_date timestamp
);

create table if not exists product_dataset (
	nomor int,
	product_id varchar,
	product_category_name varchar, 
	product_name_lenght varchar,
	product_description_lenght numeric,
	product_photos_qty numeric,
	product_weight_g numeric,
	product_length_cm numeric,
	product_height_cm numeric,
	product_width_cm numeric
);

create table if not exists sellers_dataset (
	seller_id varchar,
	seller_zip_code_prefix int, 
	seller_city varchar,
	seller_state varchar
);