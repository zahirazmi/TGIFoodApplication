CREATE TABLE Categories (
    CatId INT IDENTITY (1, 1) NOT NULL,
    CatTitle VARCHAR (50) NULL,
    CatDesc VARCHAR (500) NULL,
    PRIMARY KEY (CatId),
);

CREATE TABLE Items (
    ItemId INT IDENTITY (1, 1) NOT NULL,
    CatId INT NOT NULL,
    ItemTitle VARCHAR (50) NULL,
    ItemPrice FLOAT NULL,
    ItemDesc VARCHAR (500) NULL,
    ItemImage VARCHAR (50) NULL,
    PRIMARY KEY (ItemId),
    CONSTRAINT FK_Items_Categories FOREIGN KEY (CatId) 
	REFERENCES Categories (CatId)
);

CREATE TABLE Sales (
    SalesId VARCHAR (10) NOT NULL,
    ItemId INT NOT NULL,
    Quantity INT NULL,
    SalesDate DATETIME NULL,
    Confirmed BIT DEFAULT 0 NOT NULL,
    PRIMARY KEY (SalesId, ItemId)
);


INSERT INTO Categories (CatTitle, CatDesc)
VALUES ('Appetizers', 'Get thing started with small bites');

INSERT INTO Categories (CatTitle, CatDesc)
VALUES('Main', 'Hold on tight, your favorites are here for you.');

INSERT INTO Categories (CatTitle, CatDesc)
VALUES ('Drinks', 'Quench your thirst with your favorite drinks');

INSERT INTO Categories (CatTitle, CatDesc)
VALUES ('Dessert', 'Talk about dessert?');








INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (1, 'Fied Calamari', 21.90, 'Hand battered calamari deep fried to golden brown served with tangy Marinara sauce.', 'App Fried Calamari.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (1, 'Fried Mozzarella', 23.90, 'Crisp and golden on the outside, creamy and cheesy on the inside.', 'anthurium.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (1, 'Chicken Quesadilla', 35.90, 'Soft tortilla flour packed with diced grilled chicken, caramilized onions, mixed cheeses and Pico de Gallo.', 'aster.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (1, 'Mac & Cheese Bites', 35.90, 'Irresistible, creamy cheeses and elbow noodles fried to perfection.', 'bougainvillea.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (1, 'Loaded Potato Skins', 35.90, 'These signature Fridays Skins are fully loaded with beef bacon.', 'carnation.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (1, 'Chicken Fajita Nachos', 35.90, 'Crispy tortilla chips piled high with diced grilled chicken and onion pepper medley. Topped with melted Mozzarella cheese and sliced jalapenos..', 'chrysanthemum.png')




INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Fridays Signature Burger', 38.90, 'Our char-grilled burger is topped with beef bacon, melted Monterey Jack cheese and finished with our Fridays Signature Glaze.', 'daffodil.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Ultimate Loaded Cheese Fry Burger', 67.90, 'Out tasty double beef burger is loaded and piled high with American slice cheese.', 'dahlia.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Hangover Burger', 38.90, 'Whether you are up all night or looking for a sure cure, this juicy beef burger is topped with a fried egg.', 'daisy.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Ultimate Mac & Cheese Burger', 67.90, 'Mouth-watering double beef patty char-grilled to perfection is topped with cheesy macaroni.', 'ginger.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Ultimate Triple Cheeseburger', 67.90, 'Char-grilled double patty beef burger is topped with American cheese, Fried Mozzarella, roasted beef bacon and drizzled with Queso sauce.', 'jasmine.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Plant-Based Burger', 38.90, 'Made from plant-based ingredients, this juicy, mouth-watering burger satisfies like beef.', 'lily.png')



INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Caribbean Chicken', 32.90, 'Two caribbean seasone chicken breast with Tropical Spiced sauce. Served with savory rice and pineapple Pico de Gallo', 'lotus.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Sizziling Cajun Steak', 94.90, 'Tender, juicy and flavorful striploin steak topped with Cajun butter.', 'nymphea.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Sizziling Lemon Pesto Steak', 94.90, 'Huicy grilled striploin steak topped with Lemon-Pesto sauce.', 'oleander.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (2, 'Texas Striploin Steak', 92.90, 'Tender, juice and falvorful striploin basted with Fridays BBQ sauce topped with Texas herbs and spices.', 'orchid.png')




INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Vanilla Milkshake', 14.90, 'Vanilla ice cream with milk.', 'pear.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Strawberry Milkshake', 14.90, 'Strawberry ice cream with milk, drizzled with strawberry syrup.', 'petunia.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Chocolate Chip Milkshake', 14.90, 'Chocolate ice cream with milk, drizzeld with chocolate chips and chocolate syrup. Served with whip cream.', 'poppy.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Classic Mojito', 14.90, 'Fresh mint, lime, pure can suagr and soda', 'rose.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Raspberry Rose Mojito', 14.90, 'A delicate blend of fresh raspberry with a hint of rose.', 'sunflower.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Barbados Punch', 14.90, 'Mix of Mango, passion fruit & strawberry puree, lime juice, lemon juice and soda.', 'archery.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (3, 'Mango Caramel Mojito', 32.90, 'Bacardi White, mint leaves, lime squeeze, fresh sour rocks, strawberry puree and Sprite.', 'archery.png')




INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (4, 'Brownies Obessesion', 32.90, 'A warm brownie covered in chocolate fudge sauce, vanilla ice cream, caramel sauce and roasted pecans.', 'baking.png')

INSERT INTO Items (CatId, ItemTitle, ItemPrice, ItemDesc, ItemImage)		
VALUES (4, 'Cheesecake', 32.90, 'New York-style burnt cheesecake drizzled with strawberry puree.', 'camping.png')






