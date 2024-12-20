CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT NOT NULL,
    stock INTEGER NOT NULL,
    image_url TEXT NOT NULL
);
INSERT INTO products (id, name, description, price, category, stock, image_url) VALUES
(1, 'Wireless Headphones', 'High-quality wireless headphones with noise cancellation.', 99.99, 'Electronics', 50, 'https://example.com/images/headphones.jpg'),
(2, 'Smartphone', 'Latest model smartphone with advanced features.', 699.99, 'Electronics', 30, 'https://example.com/images/smartphone.jpg'),
(3, 'Laptop', 'Powerful laptop for gaming and productivity.', 1299.99, 'Electronics', 20, 'https://example.com/images/laptop.jpg'),
(4, 'Bluetooth Speaker', 'Portable Bluetooth speaker with excellent sound quality.', 49.99, 'Electronics', 100, 'https://example.com/images/speaker.jpg'),
(5, 'Smartwatch', 'Stylish smartwatch with fitness tracking features.', 199.99, 'Electronics', 75, 'https://example.com/images/smartwatch.jpg'),
(6, '4K TV', 'Ultra HD 4K television with vibrant colors.', 799.99, 'Electronics', 15, 'https://example.com/images/tv.jpg'),
(7, 'Gaming Console', 'Next-gen gaming console with exclusive games.', 499.99, 'Electronics', 25, 'https://example.com/images/console.jpg'),
(8, 'Digital Camera', 'High-resolution digital camera for photography enthusiasts.', 599.99, 'Electronics', 10, 'https://example.com/images/camera.jpg'),
(9, 'Wireless Mouse', 'Ergonomic wireless mouse for comfortable use.', 29.99, 'Electronics', 200, 'https://example.com/images/mouse.jpg'),
(10, 'Keyboard', 'Mechanical keyboard with customizable RGB lighting.', 89.99, 'Electronics', 150, 'https://example.com/images/keyboard.jpg'),
(11, 'E-Reader', 'Lightweight e-reader with a vast library of books.', 129.99, 'Electronics', 60, 'https://example.com/images/ereader.jpg'),
(12, 'Action Camera', 'Compact action camera for adventure seekers.', 299.99, 'Electronics', 40, 'https://example.com/images/actioncamera.jpg'),
(13, 'Drone', 'High-performance drone with HD camera.', 499.99, 'Electronics', 20, 'https://example.com/images/drone.jpg'),
(14, 'Fitness Tracker', 'Wearable fitness tracker with heart rate monitor.', 49.99, 'Electronics', 80, 'https://example.com/images/fitnesstracker.jpg'),
(15, 'VR Headset', 'Immersive virtual reality headset for gaming.', 399.99, 'Electronics', 30, 'https://example.com/images/vrheadset.jpg'),
(16, 'Portable Charger', 'High-capacity portable charger for devices.', 39.99, 'Electronics', 150, 'https://example.com/images/charger.jpg'),
(17, 'Smart Home Hub', 'Central hub for controlling smart home devices.', 149.99, 'Electronics', 50, 'https://example.com/images/smarthomehub.jpg'),
(18, 'Streaming Device', 'Device for streaming your favorite shows and movies.', 49.99, 'Electronics', 100, 'https://example.com/images/streamingdevice.jpg'),
(19, 'Wireless Router', 'High-speed wireless router for home networking.', 89.99, 'Electronics', 75, 'https://example.com/images/router.jpg'),
(20, 'External Hard Drive', 'Portable external hard drive for data storage.', 79.99, 'Electronics', 60, 'https://example.com/images/harddrive.jpg'),
(21, 'Smart Light Bulb', 'Energy-efficient smart light bulb with app control.', 19.99, 'Electronics', 200, 'https://example.com/images/smartlightbulb.jpg'),
(22, 'Home Security Camera', 'Wireless security camera for home monitoring.', 129.99, 'Electronics', 40, 'https://example.com/images/securitycamera.jpg'),
(23, 'Electric Toothbrush', 'Smart electric toothbrush with app integration.', 79.99, 'Electronics', 100, 'https://example.com/images/toothbrush.jpg'),
(24, 'Air Purifier', 'High-efficiency air purifier for cleaner air.', 199.99, 'Electronics', 30, 'https://example.com/images/airpurifier.jpg'),
(25, 'Coffee Maker', 'Programmable coffee maker for fresh coffee.', 89.99, 'Electronics', 50, 'https://example.com/images/coffeemaker.jpg'),
(26, 'Instant Pot', 'Multi-functional pressure cooker for quick meals.', 99.99, 'Electronics', 40, 'https://example.com/images/instantpot.jpg'),
(27, 'Electric Kettle', 'Fast boiling electric kettle with temperature control.', 39.99, 'Electronics', 100, 'https://example.com/images/electrickettle.jpg'),
(28, 'Blender', 'High-speed blender for smoothies and soups.', 59.99, 'Electronics', 80, 'https://example.com/images/blender.jpg'),
(29, 'Food Processor', 'Versatile food processor for meal prep.', 129.99, 'Electronics', 30, 'https://example.com/images/foodprocessor.jpg'),
(30, 'Rice Cooker', 'Automatic rice cooker for perfect rice.', 49.99, 'Electronics', 60, 'https://example.com/images/ricecooker.jpg'),
(31, 'Electric Grill', 'Indoor electric grill for grilling all year round.', 79.99, 'Electronics', 50, 'https://example.com/images/electricgrill.jpg'),
(32, 'Stand Mixer', 'Powerful stand mixer for baking enthusiasts.', 199.99, 'Electronics', 20, 'https://example.com/images/standmixer.jpg'),
(33, 'Slow Cooker', 'Convenient slow cooker for easy meals.', 59.99, 'Electronics', 70, 'https://example.com/images/slowcooker.jpg'),
(34, 'Juicer', 'High-quality juicer for fresh juices.', 89.99, 'Electronics', 40, 'https://example.com/images/juicer.jpg'),
(35, 'Toaster', 'Compact toaster for perfect toast.', 29.99, 'Electronics', 150, 'https://example.com/images/toaster.jpg'),
(36, 'Waffle Maker', 'Non-stick waffle maker for delicious waffles.', 39.99, 'Electronics', 100, 'https://example.com/images/wafflemaker.jpg'),
(37, 'Electric Skillet', 'Versatile electric skillet for cooking.', 49.99, 'Electronics', 80, 'https://example.com/images/electricskillet.jpg'),
(38, 'Food Dehydrator', 'Dehydrator for making healthy snacks.', 79.99, 'Electronics', 30, 'https://example.com/images/dehydrator.jpg'),
(39, 'Sous Vide Cooker', 'Precision cooker for sous vide cooking.', 99.99, 'Electronics', 20, 'https://example.com/images/sousvide.jpg'),
(40, 'Electric Pressure Cooker', 'Fast cooking with electric pressure cooker.', 89.99, 'Electronics', 50, 'https://example.com/images/electricpressurecooker.jpg'),
(41, 'Smart Thermostat', 'Energy-saving smart thermostat for home.', 149.99, 'Electronics', 40, 'https://example.com/images/smartthermostat.jpg'),
(42, 'Smart Lock', 'Keyless smart lock for home security.', 199.99, 'Electronics', 30, 'https://example.com/images/smartlock.jpg'),
(43, 'Smart Smoke Detector', 'Smart smoke detector with app alerts.', 79.99, 'Electronics', 50, 'https://example.com/images/smokedetector.jpg'),
(44, 'Smart Water Leak Detector', 'Detects water leaks and alerts via app.', 49.99, 'Electronics', 100, 'https://example.com/images/waterleakdetector.jpg'),
(45, 'Smart Plug', 'Control devices remotely with smart plug.', 19.99, 'Electronics', 200, 'https://example.com/images/smartplug.jpg'),
(46, 'Smart Security System', 'Comprehensive smart security system for homes.', 299.99, 'Electronics', 20, 'https://example.com/images/securitysystem.jpg'),
(47, 'Smart Garden System', 'Automated garden system for plant care.', 199.99, 'Electronics', 30, 'https://example.com/images/gardensystem.jpg'),
(48, 'Smart Pet Feeder', 'Automated pet feeder with app control.', 129.99, 'Electronics', 40, 'https://example.com/images/petfeeder.jpg'),
(49, 'Smart Mirror', 'Interactive smart mirror with various features.', 299.99, 'Electronics', 10, 'https://example.com/images/smartmirror.jpg'),
(50, 'Smart Refrigerator', 'Smart refrigerator with touchscreen and app control.', 1999.99, 'Electronics', 5, 'https://example.com/images/smartfridge.jpg'),
(51, 'Wireless Charger', 'Fast wireless charger for compatible devices.', 29.99, 'Electronics', 150, 'https://example.com/images/wirelesscharger.jpg'),
(52, 'Portable Bluetooth Keyboard', 'Compact Bluetooth keyboard for on-the-go.', 49.99, 'Electronics', 100, 'https://example.com/images/bluetoothkeyboard.jpg'),
(53, 'USB-C Hub', 'Multi-port USB-C hub for connectivity.', 39.99, 'Electronics', 200, 'https://example.com/images/usbhub.jpg'),
(54, 'Laptop Stand', 'Ergonomic laptop stand for better posture.', 29.99, 'Electronics', 150, 'https://example.com/images/laptopstand.jpg'),
(55, 'Monitor', 'High-resolution monitor for productivity.', 199.99, 'Electronics', 30, 'https://example.com/images/monitor.jpg'),
(56, 'Webcam', 'HD webcam for video conferencing.', 79.99, 'Electronics', 100, 'https://example.com/images/webcam.jpg'),
(57, 'Microphone', 'USB microphone for clear audio recording.', 59.99, 'Electronics', 80, 'https://example.com/images/microphone.jpg'),
(58, 'Graphics Card', 'High-performance graphics card for gaming.', 499.99, 'Electronics', 15, 'https://example.com/images/graphicscard.jpg'),
(59, 'Motherboard', 'Compatible motherboard for gaming builds.', 199.99, 'Electronics', 20, 'https://example.com/images/motherboard.jpg'),
(60, 'Power Supply', 'Reliable power supply for PC builds.', 89.99, 'Electronics', 50, 'https://example.com/images/powersupply.jpg'),
(61, 'RAM', 'High-speed RAM for better performance.', 79.99, 'Electronics', 100, 'https://example.com/images/ram.jpg'),
(62, 'SSD', 'Fast SSD for quick data access.', 129.99, 'Electronics', 60, 'https://example.com/images/ssd.jpg'),
(63, 'HDD', 'High-capacity HDD for storage.', 59.99, 'Electronics', 80, 'https://example.com/images/hdd.jpg'),
(64, 'Cooling Fan', 'Efficient cooling fan for PC.', 29.99, 'Electronics', 150, 'https://example.com/images/coolingfan.jpg'),
(65, 'Case', 'Stylish case for PC builds.', 49.99, 'Electronics', 100, 'https://example.com/images/case.jpg'),
(66, 'Gaming Chair', 'Comfortable gaming chair for long sessions.', 199.99, 'Electronics', 20, 'https://example.com/images/gamingchair.jpg'),
(67, 'Gaming Desk', 'Spacious gaming desk for setup.', 299.99, 'Electronics', 10, 'https://example.com/images/gamingdesk.jpg'),
(68, 'Mouse Pad', 'Large mouse pad for gaming.', 19.99, 'Electronics', 200, 'https://example.com/images/mousepad.jpg'),
(69, 'Game Controller', 'Wireless game controller for consoles.', 49.99, 'Electronics', 150, 'https://example.com/images/gamecontroller.jpg'),
(70, 'VR Gloves', 'Immersive VR gloves for gaming.', 199.99, 'Electronics', 30, 'https://example.com/images/vrgloves.jpg'),
(71, 'Gaming Headset', 'High-quality gaming headset with surround sound.', 99.99, 'Electronics', 50, 'https://example.com/images/gamingheadset.jpg'),
(72, 'Game Subscription', 'Monthly subscription for gaming services.', 9.99, 'Electronics', 100, 'https://example.com/images/gamesubscription.jpg'),
(73, 'Game Console Stand', 'Stand for organizing game consoles.', 29.99, 'Electronics', 150, 'https://example.com/images/console-stand.jpg'),
(74, 'Game Storage', 'Storage solution for games and accessories.', 39.99, 'Electronics', 100, 'https://example.com/images/gamestorage.jpg'),
(75, 'Game Chair', 'Ergonomic chair designed for gamers.', 199.99, 'Electronics', 20, 'https://example.com/images/gamechair.jpg'),
(76, 'Game Table', 'Table designed for gaming setups.', 299.99, 'Electronics', 10, 'https://example.com/images/gametable.jpg'),
(77, 'Game Monitor', 'High refresh rate monitor for gaming.', 199.99, 'Electronics', 30, 'https://example.com/images/gamemonitor.jpg'),
(78, 'Game Mouse', 'High precision gaming mouse.', 49.99, 'Electronics', 150, 'https://example.com/images/gamemouse.jpg'),
(79, 'Game Keyboard', 'Mechanical keyboard designed for gaming.', 89.99, 'Electronics', 100, 'https://example.com/images/gamekeyboard.jpg'),
(80, 'Game Headset Stand', 'Stand for organizing gaming headsets.', 19.99, 'Electronics', 200, 'https://example.com/images/headsetstand.jpg'),
(81, 'Game Cooling Pad', 'Cooling pad for laptops during gaming.', 29.99, 'Electronics', 150, 'https://example.com/images/coolingpad.jpg'),
(82, 'Game Capture Card', 'Capture card for streaming gameplay.', 129.99, 'Electronics', 40, 'https://example.com/images/capturecard.jpg'),
(83, 'Game Streaming Kit', 'Complete kit for streaming games.', 299.99, 'Electronics', 10, 'https://example.com/images/streamingkit.jpg'),
(84, 'Game Streaming Software', 'Software for streaming games.', 49.99, 'Electronics', 100, 'https://example.com/images/streamingsoftware.jpg'),
(85, 'Game Controller Charger', 'Charger for game controllers.', 19.99, 'Electronics', 200, 'https://example.com/images/controllercharger.jpg'),
(86, 'Game Console Cooling Stand', 'Cooling stand for game consoles.', 39.99, 'Electronics', 100, 'https://example.com/images/coolingstand.jpg'),
(87, 'Game Console Skin', 'Skin for personalizing game consoles.', 19.99, 'Electronics', 150, 'https://example.com/images/consoleskin.jpg'),
(88, 'Game Console Controller', 'Controller for game consoles.', 49.99, 'Electronics', 100, 'https://example.com/images/controller.jpg'),
(89, 'Game Console Headset', 'Headset for game consoles.', 79.99, 'Electronics', 80, 'https://example.com/images/consoleheadset.jpg'),
(90, 'Game Console Stand', 'Stand for organizing game consoles.', 29.99, 'Electronics', 150, 'https://example.com/images/console-stand.jpg'),
(91, 'Game Console Storage', 'Storage solution for games and accessories.', 39.99, 'Electronics', 100, 'https://example.com/images/gamestorage.jpg'),
(92, 'Game Console Cooling Pad', 'Cooling pad for consoles.', 29.99, 'Electronics', 150, 'https://example.com/images/coolingpad.jpg'),
(93, 'Game Console Capture Card', 'Capture card for streaming console gameplay.', 129.99, 'Electronics', 40, 'https://example.com/images/capturecard.jpg'),
(94, 'Game Console Streaming Kit', 'Complete kit for streaming console games.', 299.99, 'Electronics', 10, 'https://example.com/images/streamingkit.jpg'),
(95, 'Game Console Streaming Software', 'Software for streaming console games.', 49.99, 'Electronics', 100, 'https://example.com/images/streamingsoftware.jpg'),
(96, 'Game Console Controller Charger', 'Charger for game console controllers.', 19.99, 'Electronics', 200, 'https://example.com/images/controllercharger.jpg'),
(97, 'Game Console Cooling Stand', 'Cooling stand for game consoles.', 39.99, 'Electronics', 100, 'https://example.com/images/coolingstand.jpg'),
(98, 'Game Console Skin', 'Skin for personalizing game consoles.', 19.99, 'Electronics', 150, 'https://example.com/images/consoleskin.jpg'),
(99, 'Game Console Controller', 'Controller for game consoles.', 49.99, 'Electronics', 100, 'https://example.com/images/controller.jpg'),
(100, 'Game Console Headset', 'Headset for game consoles.', 79.99, 'Electronics', 80, 'https://example.com/images/consoleheadset.jpg');
INSERT INTO products (id, name, description, price, category, stock, image_url) VALUES
(101, 'T-Shirt', 'Comfortable cotton t-shirt.', 19.99, 'Clothing', 100, 'https://example.com/images/tshirt.jpg'),
(102, 'Jeans', 'Stylish denim jeans.', 49.99, 'Clothing', 50, 'https://example.com/images/jeans.jpg'),
(103, 'Sneakers', 'Casual sneakers for everyday wear.', 59.99, 'Clothing', 75, 'https://example.com/images/sneakers.jpg'),
(104, 'Toy Car', 'Remote control toy car.', 29.99, 'Toys', 200, 'https://example.com/images/toycar.jpg'),
(105, 'Action Figure', 'Collectible action figure.', 19.99, 'Toys', 150, 'https://example.com/images/actionfigure.jpg'),
(106, 'Cereal', 'Healthy breakfast cereal.', 4.99, 'Grocery', 300, 'https://example.com/images/cereal.jpg'),
(107, 'Pasta', 'Organic whole wheat pasta.', 2.99, 'Grocery', 250, 'https://example.com/images/pasta.jpg'),
(108, 'Chocolate Bar', 'Delicious milk chocolate bar.', 1.99, 'Grocery', 500, 'https://example.com/images/chocolatebar.jpg');