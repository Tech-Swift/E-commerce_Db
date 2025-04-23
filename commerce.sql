-- Creating product_image table
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Creating color table
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(100)
);

-- Creating product_category table
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Creating product table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10, 2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Creating product_item table
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

-- Creating brand table
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100)
);

-- Creating product_variation table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    variation_name VARCHAR(100),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Creating size_category table
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Creating size_option table
CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_value VARCHAR(50),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Creating product_attribute table
CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_name VARCHAR(100),
    attribute_value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Creating attribute_category table
CREATE TABLE attribute_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Creating attribute_type table
CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(100)
);
