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
('Commercial Property for Sale',1),

--Phone & Tablet
('Mobile Phones',14),
('Accessories',14),
('Smart watch & Gadgets',14),
('Tablets',14),

-- Electronics
('Accesories & Supplies for electronics',13),
('Laptops & Computers',13),
('TV & DVD Equipment',13),
('Audio & Music Equipment',13),
('Computer Accessories',13),
('Computer Hardware',13),
('Computer Monitors',13),
('Headphones',13),
('Networking Products',13),
('Photo & Video Cameras',13),
('Printers & Scanners',13),
('Security & Surveillance',13),
('Software',13),
('Video Games',13),
('Video Game Consoles',13),

--Beauty
('Bath & Body',11),
('Fragrances',11),
('Herbs',11),
('Hair & Beauty',11),
('Make-Up',11),
('Sexual Weakness',11),
('Skincare',11),
('Tobacco Accessories',11),
('Tools & Accessories',11),
('Vitamins & Supplements',11),

--Fashion
('Bags',9),
('Clothing',9),
('Clothing Accessories',9),
('Jewelry',9),
('Shoes',9),
('Watches',9),
('Wedding Wear & Accessories',9),

--Sports
('Arts & Crafts',10),
('Books & Games',10),
('Camping Gear',10),
('CDs & DVDs',10),
('Musical Instruments & Gear',10),
('Sports Equipment',10),

--Babies
('Baby & Kids'' Accessories',7),
('Baby & Child Care',7),
('Children''s Clothing',7),
('Children''s Furniture',7),
('Children''s Gear & Safety',7),
('Children''s Shoes',7),
('Maternity & Pregnancy',7),
('Prams & Strollers',7),
('Toys',7);

