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
('Property'),('Jobs'),('Pets & Animals'),
('Commercial Equipment & Tools'),('Construction & Repair'),
('Food & Agriculture'),('Babies & Kids'),('Services'),('Fashion'),
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
('Watercraft & Boats', 12),

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
('Toys',7),

--Pets & Animals
('Birds',3),
('Cats',3),
('Dogs',3),
('Pet Accessories',3),
('Fish',3),
('Reptiles',3),
('Other animals',3),

--Food & Agriculture
('Farm Machinery & Equipment',6),
('Feeds, Supplements & Seeds',6),
('Livestock & Poultry',6),
('Meals & Drinks',6),


('Industrial Ovens',4),
('Manufacturing Equipment',4),
('Manufacturing Materials',4),
('Medical Supplies & Equipment',4),
('Printing Equipment',4),
('Restaurant & Catering Equipment',4),
('Safetywear & Equipment',4),
('Salon Equipment',4),
('Stage Lighting & Effects',4),
('Stationery',4),
('Store Equipment',4),

--Repair & Construction
('Building Materials',5),
('Doors',5),
('Electrical Equipment',5),
('Electrical Hand Tools',5),
('Hand Tools',5),
('Measuring & Layout Tools',5),
('Plumbing & Water Supply',5),
('Solar Energy',5),
('Windows',5),
('Other Repair & Construction Items',5),


('Accounting & Finance Jobs',2),
('Advertising & Marketing Jobs',2),
('Arts & Entertainment Jobs',2),
('Childcare & Babysitting Jobs',2),
('Clerical & Administrative Jobs',2),
('Computing & IT Jobs',2),
('Construction & Skilled Trade',2),
('Consulting & Strategy Jobs',2),
('Customer Services Jobs',2),
('Driver Jobs',2),
('Engineering & Architecture',2),
('Farming & Veterinary Jobs',2),
('Gardening & Landscaping Jobs',2),
('Health & Beauty Jobs',2),
('Healthcare & Nursing Jobs',2),
('Hotel Jobs',2),
('Human Resources Jobs',2),
('Internship Jobs',2),
('Legal Jobs',2),
('Logistics & Transportation Jobs',2),
('Management Jobs',2),
('Manual Labour Jobs',2),
('Manufacturing Jobs',2),
('Mining Industry Jobs',2),
('Office Jobs',2),
('Part-Time & Weekend Jobs',2),
('Quality Control & Assurance Jobs',2),
('Research & Survey Jobs',2),
('Restaurant & Bar Jobs',2),
('Retail Jobs',2),
('Sales & Telemarketing Jobs',2),
('Security Jobs',2),
('Sports Club Jobs',2),
('Teaching Jobs',2),
('Technology Jobs',2),
('Travel & Tourism Jobs',2),
('Other Jobs',2),

--Services
('Automotive Services',8),
('Building & Trade Services',8),
('Chauffeur & Airport Transfer Services',8),
('Child Care & Education Services',8),
('Cleaning Services',8),
('Computer & IT Services',8),
('DJ & Entertainment Services',8),
('Party, Catering & Event Services',8),
('Health & Beauty Services',8),
('Fitness & Personal Training Services',8),
('Landscaping & Gardening Services',8),
('Manufacturing Services',8),
('Legal Services',8),
('Pet Services',8),
('Photography & Video Services',8),
('Printing Services',8),
('Recruitment Services',8),
('Logistics Services',8),
('Repair Services',8),
('Tax & Financial Services',8),
('Travel Agents & Tours',8),
('Wedding Venues & Wedding Services',8),
('Classes & Courses Services',8),
('Other Services',8),

--Home, Furniture & Appliances
('Furniture',15),
('Garden Supplies',15),
('Home Accessories',15),
('Home Appliances',15),
('Kitchen Appliances',15),
('Kitchenware & Cookware',15);
