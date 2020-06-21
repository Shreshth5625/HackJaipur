-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 08:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(1, 'Akshat Chaturvedi', 'akshatchaturvedi17@gmail.com', '123', '', '1234567890', 'India', 'Student', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(8, 'jacket bundle relation -1', 4, 11),
(9, 'jacket bundle relation -2', 5, 11),
(10, 'jacket bundle relation -3', 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Italian', 'yes', 'italian_category.jpg'),
(3, 'Chinese', 'yes', 'chinese_category.jpg'),
(4, 'Indian', 'no', 'indian_category.jpg'),
(5, 'Others', 'no', 'others_category.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'akshatchaturvedi17@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Remind T-shirt', '40', '333444', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(4, 'Akshat', 'akshatchaturvedi17@gmail.com', '123', 'India', 'Jaipur', '1234567890', 'jaipur', 'IMG_20191030_214102_780.jpeg', '::1', '1017503290');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 08:21:42', 'pending'),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 08:21:42', 'pending'),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 08:26:47', 'pending'),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 11:06:32', 'complete'),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 11:06:37', 'complete'),
(22, 4, 50, 1684306008, 1, 'Select a Size', '2020-06-20 22:07:49', 'pending'),
(23, 4, 200, 1418850585, 1, 'Select a Size', '2020-06-20 22:12:33', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'image2.jpg'),
(3, 'Nike', 'no', 'image3.jpg'),
(4, 'Philip Plein', 'no', 'manufacturer.jpg'),
(5, 'Lacost', 'no', 'image6.jpg'),
(6, 'Gucci', 'yes', 'akshay-kumar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(16, 2, 1715523401, '2', 3, 'Small', 'pending'),
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(18, 2, 1715523401, '11', 1, 'Medium', 'pending'),
(19, 2, 1068059025, '7', 1, 'Medium', 'pending'),
(20, 2, 909940689, '6', 3, 'Large', 'complete'),
(21, 2, 909940689, '11', 2, 'Meduim', 'complete'),
(22, 4, 1684306008, '9', 1, 'Select a Size', 'pending'),
(23, 4, 1418850585, '11', 1, 'Select a Size', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(1, 1, 5, 3, '2020-06-20 10:48:40', 'Fluffy Pancakes', 'fluffy-pancakes', 'Fluffy-Pancakes_1.jpg', 'Fluffy-Pancakes_2.jpg', 'Fluffy-Pancakes_3.jpg', 70, 50, '<p>Combine milk with vinegar in a medium bowl and set aside for 5 minutes to sour.\r\nCombine flour, sugar, baking powder, baking soda, and salt in a large mixing bowl. Whisk egg and butter into soured milk. Pour the flour mixture into the wet ingredients and whisk until lumps are gone.\r\nHeat a large skillet over medium heat, and coat with cooking spray. Pour 1/4 cupfuls of batter onto the skillet, and cook until bubbles appear on the surface. Flip with a spatula, and cook until browned on the other side.</p>', '<p>3/4 cup milk ,\r\n2 tablespoons white vinegar ,\r\n1 cup all-purpose flour ,\r\n2 tablespoons white sugar ,\r\n1 teaspoon baking powder ,\r\n1/2 teaspoon baking soda ,\r\n1/2 teaspoon salt ,\r\n1 egg ,\r\n2 tablespoons butter, melted ,\r\ncooking spray ,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/BxjtpdWeGtI\" frameborder=\"0\" allowfullscreen></iframe>', 'Cakes', 'Sale', 'product'),
(2, 1, 5, 2, '2020-06-20 10:48:48', 'Too Much Chocolate Cake', 'too-much-chocolate-cake', 'too-much-chocolate-cake_1.jpg', 'too-much-chocolate-cake_2.jpg', 'too-much-chocolate-cake_3.jpg', 69, 45, '<p>Preheat oven to 350 degrees F (175 degrees C).\r\nIn a large bowl, mix together the cake and pudding mixes, sour cream, oil, beaten eggs and water. Stir in the chocolate chips and pour batter into a well greased 12 cup bundt pan.\r\nBake for 50 to 55 minutes, or until top is springy to the touch and a wooden toothpick inserted comes out clean. Cool cake thoroughly in pan at least an hour and a half before inverting onto a plate If desired, dust the cake with powdered sugar.</p>', '      1 (18.25 ounce) package devil\'s food cake mix ,\r\n      1 (5.9 ounce) package instant chocolate pudding mix ,\r\n      1 cup sour cream ,\r\n      1 cup vegetable oil ,\r\n      4 eggs ,\r\n      1/2 cup warm water ,\r\n      2 cups semisweet chocolate chips ,\r\n', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Cakes', 'Gift', 'product'),
(3, 3, 2, 6, '2020-06-20 10:48:48', 'Buffalo Style Chicken Pizza', 'buffalo-style-chicken-pizza', 'buffalo-chicken-pizza_1.jpg', 'buffalo-chicken-pizza_2.jpg', 'buffalo-chicken-pizza_3.jpg', 98, 0, '<p>Preheat oven to 425 degrees F (220 degrees C).\r\nIn a medium bowl combine the cubed chicken, melted butter and hot sauce. Mix well. Spread whole bottle of salad dressing over crust, then top with chicken mixture and sprinkle with shredded cheese.\r\nBake in preheated oven until crust is golden brown and cheese is bubbly, about 5 to 10 minutes. Let set a few minutes before slicing, and serve.</p>', '      3 skinless, boneless chicken breast halves - cooked and cubed ,\r\n      2 tablespoons butter, melted ,\r\n      1 (2 ounce) bottle hot sauce ,\r\n      1 (8 ounce) bottle blue cheese salad dressing ,\r\n      1 (16 inch) prepared pizza crust ,\r\n      1 (8 ounce) package shredded mozzarella cheese ', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Pizzas', 'New', 'product'),
(4, 3, 2, 5, '2020-06-20 10:48:48', 'Fruit Pizza II', 'fruit-pizza', 'fruit-pizza_1.jpg', 'fruit-pizza_2.jpg', 'fruit-pizza_3.jpg', 230, 150, '<p>Preheat oven to 350 degrees F (175 degrees C). Slice cookie dough and arrange on greased pizza pan, overlapping edges. Press dough flat into pan. Bake for 10 to 12 minutes. Allow to cool.\r\nIn a large bowl, soften cream cheese, then fold in the whipped topping. Spread over cooled crust. You can chill for a while at this point, or continue by arranging the fruit.\r\nBegin with strawberries, sliced in half. Arrange in a circle around the outside edge. Continue with fruit of your choice, working towards the middle. If bananas are used, dip them in lemon juice so they don\'t darken. Then make a sauce to spoon over fruit.\r\nIn a saucepan, combine sugar, salt, corn starch, orange juice, lemon juice and water. Cook and stir over medium heat. Bring to a boil, and cook for 1 or 2 minutes, until thickened. Remove from heat, and add grated orange rind. Allow to cool, but not set up. Spoon over fruit. Chill for two hours, then cut into wedges and serve.</p>', '      1 (18 ounce) package refrigerated sugar cookie dough ,\r\n      1 (8 ounce) package cream cheese, softened ,\r\n      1 (8 ounce) container frozen whipped topping, thawed ,\r\n      2 cups sliced fresh strawberries ,\r\n      1/2 cup white sugar ,\r\n      1 pinch salt ,\r\n      1 tablespoon cornstarch ,\r\n      1/2 cup orange juice ,\r\n      2 tablespoons lemon juice ,\r\n      1/4 cup water ,\r\n      1/2 teaspoon orange zest ', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Pizzas', 'Sale', 'product'),
(5, 3, 2, 5, '2020-06-20 10:48:48', 'Chicago Style Pan Pizza', 'chicago-style-pizza', 'chicago-style-pizza_1.jpg', 'chicago-style-pizza_2.jpg', 'chicago-style-pizza_3.jpg', 259, 100, '<p>Preheat the oven to 350 degrees F (175 degrees C). Press the dough into the bottom and up the sides of a greased 9x13 inch baking dish.\r\nCrumble the sausage into a large skillet over medium-high heat. Cook and stir until evenly browned. Remove the sausage with a slotted spoon, and sprinkle over the dough crust. Sprinkle mozzarella cheese evenly over the sausage.\r\nAdd mushrooms and onion to the skillet; cook and stir until the onion is tender. Stir in the tomatoes, oregano, salt, fennel seed and garlic powder. Spoon over the mozzarella cheese. Sprinkle Parmesan cheese over the top.\r\nBake for 25 to 35 minutes in the preheated oven, or until crust is golden brown.</p>', '      1 (1 pound) loaf frozen bread dough, thawed ,\r\n      1 pound bulk Italian sausage ,\r\n      2 cups shredded mozzarella cheese ,\r\n      8 ounces sliced fresh mushrooms ,\r\n      1 small onion, chopped ,\r\n      2 teaspoons olive oil ,\r\n      1 (28 ounce) can diced tomatoes, drained ,\r\n      3/4 teaspoon dried oregano ,\r\n      1/2 teaspoon salt ,\r\n      1/4 teaspoon fennel seed ,\r\n      1/4 teaspoon garlic powder ,\r\n      1/2 cup freshly grated Parmesan cheese \r\n', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Pizzas', 'Gift', 'product'),
(6, 1, 5, 5, '2020-06-20 10:48:48', 'German Apple Pancake', 'german-apple-pancake', 'german-apple-pancake_1.jpg', 'german-apple-pancake_2.jpg', 'german-apple-pancake_3.jpg', 96, 0, '<p>In a large bowl, blend eggs, flour, baking powder, sugar and salt. Gradually mix in milk, stirring constantly. Add vanilla, melted butter and 1/2 teaspoon nutmeg. Let batter stand for 30 minutes or overnight.\r\nPreheat oven to 425 degrees F (220 degrees C).\r\nMelt butter in a 10 inch oven proof skillet, brushing butter up on the sides of the pan. In a small bowl, combine 1/4 cup sugar, cinnamon and 1/2 teaspoon nutmeg. Sprinkle mixture over the butter. Line the pan with apple slices. Sprinkle remaining sugar over apples. Place pan over medium-high heat until the mixture bubbles, then gently pour the batter mixture over the apples.\r\nBake in preheated oven for 15 minutes. Reduce heat to 375 degrees F (190 degrees C) and bake for 10 minutes. Slide pancake onto serving platter and cut into wedges.</p>', '      4 eggs ,\r\n      1/2 cup unbleached all-purpose flour ,\r\n      1/2 teaspoon baking powder ,\r\n      1 tablespoon sugar ,\r\n      1 pinch salt ,\r\n      1 cup milk ,\r\n      1 teaspoon vanilla extract ,\r\n      2 tablespoons unsalted butter, melted ,\r\n      1/2 teaspoon ground nutmeg ,\r\n      1/4 cup unsalted butter ,\r\n      1/2 cup white sugar, divided ,\r\n      1/2 teaspoon ground cinnamon ,\r\n      1/2 teaspoon ground nutmeg ,\r\n      1 large tart apple - peeled, cored and sliced', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Cakes', 'New', 'product'),
(7, 2, 2, 6, '2020-06-20 10:48:48', 'Spicy Pesto Chicken and Pasta', 'spicy-pesto-chicken-pasta', 'spicy-pesto-chicken-pasta_1.jpg', 'spicy-pesto-chicken-pasta_2.jpg', 'spicy-pesto-chicken-pasta_3.jpg', 200, 150, '<p>Bring a large pot of lightly salted water to a boil. Place farfalle pasta in the pot, cook for 8 to 10 minutes, until al dente, and drain.\r\nHeat the olive oil in a large skillet over medium heat. Mix in the chile paste and chicken. Cook and stir chicken 10 minutes, or until evenly browned and juices run clear.\r\nToss the cooked farfalle, pesto, Parmesan cheese, and cilantro into the skillet, and continue cooking just until heated through.</p>', '      1 (16 ounce) package uncooked farfalle (bow tie) pasta ,\r\n      3 tablespoons olive oil ,\r\n      1 tablespoon hot chile paste (such as sambal oelek) ,\r\n      1 pound skinless, boneless chicken breast halves - cut into 1 inch pieces ,\r\n      6 tablespoons prepared basil pesto ,\r\n      1/2 cup grated Parmesan cheese ,\r\n      1/2 cup chopped cilantro', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Pastas', 'Sale', 'product'),
(8, 2, 2, 4, '2020-06-20 10:48:48', 'Asiago Sun-Dried Tomato Pasta', 'dried-tomato-pasta', 'dried-tomato-pasta_1.jpg', 'dried-tomato-pasta_2.jpg', 'dried-tomato-pasta_3.jpg', 245, 100, '<p>In a large saucepan over medium heat, cook 2 cups cream until just bubbling. Watch carefully, to ensure that it doesn\'t boil over. Stir in bouillon and Asiago cheese. Stir with a whisk until dissolved. Add cornstarch mixture, and simmer until sauce is thickened, stirring constantly. Mix in the sun-dried tomatoes. Set aside, or cover and refrigerate for later use.\r\nBring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes or until al dente; drain. Place bacon in a large, deep skillet. Cook over medium high heat until evenly brown. Drain, crumble and set aside.\r\nMelt butter in a large saucepan over medium heat. Saute red onion until soft and translucent. Stir in garlic and cooked bacon, and cook for 2 minutes. Stir in green onions, chicken and 1 cup cream. Cook, stirring, until cream is heated through. Add Asiago cream sauce, and heat through. Toss with cooked pasta until evenly coated, and sprinkle with chopped parsley.</p>', '      2 cups heavy cream ,\r\n      1 cube chicken bouillon ,\r\n      1 tablespoon Asiago Cheese ,\r\n      1 tablespoon cornstarch, mixed with equal parts water ,\r\n      1 cup chopped sun-dried tomatoes ,\r\n      1 (16 ounce) package bow tie pasta ,\r\n      3/4 cup bacon ,\r\n      1/4 cup butter ,\r\n      1 cup diced red onion ,\r\n      2 cloves garlic, chopped ,\r\n      1 cup chopped green onion ,\r\n      1 pound grilled skinless, boneless chicken breast, diced ,\r\n      1 cup heavy cream ,\r\n      2 tablespoons chopped fresh parsley', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Pastas', 'Gift', 'product'),
(9, 4, 5, 2, '2020-06-20 10:48:48', 'Cheeseburger and Fries casserole', 'fries-casserole', 'fries-casserole_1.jpg', 'fries-casserole_2.jpg', 'fries-casserole_3.jpg', 50, 20, '<p>Preheat the oven to 375 degrees F (190 degrees C).\r\nCombine the ground beef and onion in a skillet over medium-high heat. Cook, stirring occasionally until beef is no longer pink, and the onion is translucent. Drain off excess grease, and season with salt, pepper and garlic powder.\r\nReturn to the heat, and stir in the golden mushroom and cheese soups until well blended. Heat through, and remove from stove. Transfer the mixture to a 9x13 inch baking dish. Cover the ground beef mixture with a layer of frozen French fries.\r\nBake for 25 to 30 minutes in the preheated oven. When the fries are golden brown, remove the casserole from the oven, and sprinkle cheese over the top. Return to the oven, and bake just until cheese has melted</p>', '      2 pounds lean ground beef ,\r\n      1/2 medium onion, chopped ,\r\n      salt and pepper to taste ,\r\n      garlic powder to taste ,\r\n      1 (10.75 ounce) can condensed golden mushroom soup ,\r\n      1 (10.75 ounce) can condensed Cheddar cheese soup ,\r\n      1 (16 ounce) package frozen French fries ,\r\n      2 cups shredded Cheddar cheese', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Burgers', 'New', 'product'),
(11, 4, 5, 5, '2020-06-21 05:52:25', 'Garlic and Onion Burgers', 'garlic-and-onion-burgers', 'garlic-and-onion-burgers_1.jpg', 'garlic-and-onion-burgers_2.jpg', 'garlic-and-onion-burgers_3.jpg', 300, 200, '<p>In a large bowl, mix together the beef, Worcestershire sauce, garlic, onion, salt, pepper and Italian seasoning. Refrigerate for 2 to 4 hours.\r\nPreheat grill for high heat.\r\nForm burgers into 1/2 inch thick patties. Lightly oil grate. Place burgers on grill. Cook for approximately 6 minutes, turning once.</p>', '<p>      2 pounds ground beef ,\r\n      1 tablespoon Worcestershire sauce ,\r\n      3 cloves garlic, minced ,\r\n      1/2 cup minced onion ,\r\n      1 teaspoon salt ,\r\n      1/2 teaspoon ground black pepper ,\r\n      1 teaspoon Italian-style seasoning\r\n</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qImi3vNccaU\" frameborder=\"0\" allowfullscreen></iframe>', 'Burgers', 'Sale', 'bundle');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Cakes', 'no', 'cake_category.jpg'),
(2, 'Pastas', 'no', 'pasta_category.jpg'),
(3, 'Pizzas', 'no', 'pizza_category.jpg'),
(4, 'Burgers', 'yes', 'burger_category.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(1, 'Mumbai Store', 'store_1.jpg', '<p style=\"text-align: center;\"><strong>A1-504,Kolahpur market,Thane</strong></p>\r\n<p>The Mumbai store is spread across 22 acres and provide a huge storage capacity for storing the food items. It is equipped with a 1000L storage container to keep the fruits and vegetable. The Mumbai outlet is the main delivery centre for delivering fruits and vegetables.</p>', 'View Map', 'https://www.google.com/maps/place/Mumbai,+Maharashtra/@19.0820391,72.6009776,10z/data=!3m1!4b1!4m5!3m4!1s0x3be7c6306644edc1:0x5da4ed8f8d648c69!8m2!3d19.0759837!4d72.8776559'),
(2, 'Delhi Store', 'store_2.jpg', '<p style=\"text-align: center;\"><strong>Sector 12,South Delhi</strong></p>\r\n<p>The Delhi store is spread across 18 acres and is also the main headquarter for the following shopping kart. It is the only store with an inbuilt multilevel freezer of at least 500 L storage capacity and is the main source for storing dairy items, meats etc. The Delhi outlet is the main delivery centre for delivery centre for delivering meats and dairy products.</p>', 'View Map', 'https://www.google.com/maps/place/Delhi/@28.6466772,76.8130593,10z/data=!3m1!4b1!4m5!3m4!1s0x390cfd5b347eb62d:0x37205b715389640!8m2!3d28.7040592!4d77.1024902'),
(3, 'Kolkata Store', 'store_3.jpg', '<p style=\"text-align: center;\"><strong>B3-522,near mira market,Belgoria</strong></p>\r\n<p>The Kolkata store is the one opened recently and is quite small consisting of 12-acre land. Moreover this centre mainly deals with storing imported food items and spices. It is the only store with the licence of selling imported good all across India from the 3 stores. </p>', 'View Map', 'https://www.google.com/maps/place/Kolkata,+West+Bengal/@22.6757521,88.0495217,10z/data=!3m1!4b1!4m5!3m4!1s0x39f882db4908f667:0x43e330e68f6c2cbc!8m2!3d22.572646!4d88.363895');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
