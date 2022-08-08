CREATE TABLE "Collection"("CollectionId" bigserial primary key not null,
						 "Name" text not null, 
						 "CreatedAt" timestamp without time zone not null default now(),
						 "Active" boolean not null default true);
						 
CREATE TABLE "Category"("CategoryId" bigserial not null primary key,
					   "Name" text not null,
					   "CollectionId" bigint not null references "Collection"("CollectionId"),
					   "CreatedAt" timestamp without time zone not null default now(),
						 "Active" boolean not null default true);
						
CREATE TABLE "AdType"("AdTypeId" bigserial not null primary key,
					   "Name" text not null,
					   "CategoryId" bigint not null references "Category"("CategoryId"),
					   "CreatedAt" timestamp without time zone not null default now(),
						 "Active" boolean not null default true);
						 
INSERT INTO "Collection"("Name") VALUES
('Property'),('Jobs'),('Animals & Pets'),
('Commercial Equipment & Tools'),('Repair & Construction'),
('Agriculture & Food'),('Babies & Kids'),('Services'),('Fashion'),
('Sports'),('Health & Beauty'),('Vehicles'),('Electronics'),('Mobile Phones & Tablets'),
('Home, Furniture & Appliances');

insert into "Category"("Name","CollectionId") values 
-- Vehicle
('Cars',12),
('Buses & Microbuses',12),
('Heavy Equipment', 12),
('Bikes & Motorcycles', 12),
('Trucks & Trailers', 12),
('Vehicle Parts & Accessories', 12),
('Watercraft & Boats', 12);

--Property
('Houses & Apartments for Rent',1),
('Houses & Apartments for Sale',1),
('Land & Plots Rent',1),
('Land & Plots for Sale',1),
('Commertial Property for Rent',1),
('Commercial Property for Sale',1);

