# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all
User.destroy_all
Wishlist.destroy_all

# all passwords are 123456
user1 = User.new
user1.email = 'test@example.com'
user1.password = '123456'
user1.password_confirmation = '123456'
user1.name = 'Yan Yan'
user1.phone = "0424148282"
user1.save!

user2 = User.new
user2.email = 'test2@example.com'
user2.password = '123456'
user2.password_confirmation = '123456'
user2.name = 'Jeremy'
user2.phone = "0424148282"
user2.save!

cat1 = Category.create(name: "Cases")
cat2 = Category.create(name: "Cooling")
cat3 = Category.create(name: "CPU Processors")
cat4 = Category.create(name: "Fans and Accessories")
cat5 = Category.create(name: "Graphics Cards")
cat6 = Category.create(name: "Memory")
cat7 = Category.create(name: "Motherboards")
cat8 = Category.create(name: "Power Supply")
cat9 = Category.create(name: "Sound Cards")
cat10 = Category.create(name: "Water Cooling")

prod1 = user1.products.create(name: "EZDIY-FAB 5-Pack 120mm Dual Frame RGB PWM Fans for PC Case,Addressable RGB Case Fan with Fan Hubs,5V ARGB 3-pin Motherboard Sync,ASUS Aura Sync", description: "A best choice of two ways to control the RGB lighting system by Hub Controller or by ARGB SYNC Motherboard Software (Press Mode buttom for 3 seconds to SYNC)
16.8 Million Colors LED Design-Colorful lightning design with unlimited color transformation.
Fan speed control- Dynamically control fan speed from 300 RPM to 1600 RPM to minimize noise or maximize airflow.
High Performance- high airflow and large volume cooling by blade design ,Super silent
Sync RGB lighting via motherboard:- MUST BE work with an Addressable RGB(+5V, 3-pin) capable motherboard or an Addressable RGB(+5V, 3-pin) controller(Please check the ARGB motherboard of your motherboard before purchase!)", price: 49.95, category: cat4, default_image: "1")

prod2 = user1.products.create(name: "Corsair LL140 Dual Light Loop, Twin Pack 140mm RGB LED PWM Fan with Lighting Node Pro", description: "LET YOUR LIGHTS DO THE TALKING
Made for those seeking excellent airflow, quiet operation, and powerful lighting, the CORSAIR LL140 RGB fan puts your PC back in the loop.", price: 109, category: cat4, default_image: "3")

prod3 = user1.products.create(name: "EZDIY-FAB New Dual Ring 120mm RGB LED Case Fans, 5V Motherboard Sync, Speed Adjustable, RGB Sync Fan with Fan Hub X and Remote-3 Pack", description: "16 Leds with true RGB with 16.8 million colors to light up your build with nearly endless customizable combinations
Optional motherboard RGB synchronization via Asus aura Sync, MSI Mystic Light Sync and Gigabyte RGB FUSION ready via 5V 3Pin connector
9-fan blade, remote control supports speed regulation, adjust brightness, intelligent color matching.
8 shockproof pads ensure that the fan will not vibrate when it is running.
With EZDIY-FAB Fan Hub X and 21-key remote -You can instantly adjusting LED back-light effects, colors, brightness and Fan speed", price: 39.99, category: cat4, default_image: "4")

prod4 = user1.products.create(name: "EZDIY-FAB White Moonlight 120mm RGB Case Fan with Fan Hub X and Remote,Motherboard Aura SYNC,Speed Control,Addressable Fan for PC Case-3 Pack", description: "Astonishing lighting effects-Tri-aperture inside and outside luminous light effect in White color frame,Give out an impact visual light effect.
Sync RGB lighting via motherboard: Support M/B 3 pin RGB Header (5V, Di, -, G),Compatible with Asus Aura, ASRock RGB, Gigabyte Fusion, MSI RGB
With EZDIY-FAB Fan Hub X and 21-key remote -You can instantly adjusting LED back-light effects, colors, brightness and Fan speed.NOTE：Maximum Current-3A HUB-X ONLY Supports 6 fans in solid WHITE color setting. Supports 10 fans in RAINBOW or other color settings.
Equipped with 8 anti-vibration rubber pads to effectively prevent vibration during operation, greatly reducing noise and improving efficiency.
Self-lubricated Bearing and friction-reducied substance lowers operation noise and enhance thermal efficiency", price: 48.50, category: cat4, default_image: "5")

prod5 = user1.products.create(name: "Corsair CO-9050039-WW ML120, 120mm Premium Magnetic Levitation Fan (2-Pack), No LED", description: "Magnetic Bearing: harnesses magnetic levitation technology to provide lower noise, higher performance, and a longer lifespan
Custom Rotor Design: delivers the perfect balance between high static pressure and high airflow, operating flawlessly in the most challenging environments
Extensive Control Range: A 2,000 RPM control range gives you total control between silence and absolute performance
Colour Customization: Replaceable corners mounted to anti-vibration rubber dampers allow you to match your fans with the rest of your build (Available separately in Red, White, and Blue)
Note: ML fans require a constant 12V in order to lift the bearing for it to spin. Do not use using a fan controller that is voltage regulated and not supplying 12V", price: 49, category: cat4, default_image: "6")

prod6 = user2.products.create(name: "ARCTIC P14 PWM PST Value Pack - 140 mm Case Fan with PWM Sharing Technology (PST), Five Pack, Pressure-optimised, Computer, Fan Speed: 200-1700 RPM - Black", description: "OPTIMISED FOR STATIC PRESSURE: Fan guarantees extremely efficient cooling, even with increased air resistance, therefore, the P14 PWM PST is particularly suitable for use on heatsinks and radiators
200 TO 1700 RPM REGULATED VIA PWM PST: Thanks to 4-pin connector, the RPM can be regulated in a broad spectrum via PWM, noise is kept at minimum while maximum cooling performance is given when needed
MORE EFFICIENT TECHNOLOGY: The motor is powered by a Neodym-Iron-Boron-Magnet ring of the newest generation, which allows the new P14 PWM PST to run much more efficiently than its predecessors
EXTENDED LIFE SPAN: A 10 °C lower motor temperature roughly doubles the life span of a fan, the new ARCTIC motor has a four times longer service life through its low coil temperature
TECHNICAL DATA: Fan speed: 200–1700 RPM, Airflow: 72.8 CFM/123.76 m³/h (@ 1700 RPM), Noise Level: 0.3 Sone (@ 1700 RPM), Pin: 4-pin", price: 93.59, category: cat4, default_image: "7")

prod7 = user2.products.create(name: "upHere Long Life Computer Case Fan 120mm Cooling Case Fan for Computer Cases Cooling,5-Pack,RGB", description: "1.Super Quiet: Equipped with rubber pads and hydraulic bearing, which greatly reduce operating noise and improves efficiency.
2.Innovative color effects:Unlimited color transformation,allow you to use one key to adjust the speed of LED, mode and color without opening the case,add new colors to life.
3.Run Smoothly:Balanced air volume and wind pressure for excellent performance, suitable for use in chassis or cold exhaust fans.
4.Two Way Installation: Blow warm air out of the case. Draw cool air into your case.
5.Long Service Life:Wear resistant hydraulic bearing construction makes the fan run noiseless and the air volume larger with an astounding service life of more than 40,000 hours.", price: 46.99, category: cat4, default_image: "8")

prod8 = user2.products.create(name: "Arctic BioniX P120 A-RGB (Bundle 3 pc) - 120 mm Pressure-Optimised Fan with A-RGB, PWM, Cooler, Fluid Dynamic Bearing, 400-2300 RPM - Black", description: "A-RGB FOR FULL COLOUR CONTROL: 12 A-RGB LEDs can be controlled independently of each other; the BioniX P120 A-RGB is compatible with the common A-RGB standards of leading motherboard manufacturers
EASY CHAIN VIA CONNECTOR BLOCK: Fan has input and output to pass on light and fan signals; connector block enables this without visible cables
PRESSURE OPTIMISED: In the development of the BioniX P120 A-RGB particular emphasis was placed on a focused Air Flow and high static pressure 2.1 mm/H2O; this guarantees efficient cooling
400 TO 2300 RPM: Wide speed range and PWM Technology allows synchronous fan speed control with all other fans for maximum cooling performance
TECHNICAL DATA: Fan Speed: 400-2300 RPM, Airflow: 48 CFM/81.55 m³/h, Noise level: 0.45 Sone, Static Pressure: 2.1 mm/H2O, 2x A-RGB Fan 8-pin Connector", price: 92, category: cat4, default_image: "9")

prod9 = user2.products.create(name: "ARCTIC F14 SILENT-140 mm Standard Case Fan, Ultra Low Noise Cooler, Silent Cooler with Standard Case, Push- or Pull Configuration Possible", description: "GREATER EFFICIENCY - LESS NOISE AT HIGHER AIRFLOW: At low fan speed, the motor noise is key, a motor developed in Germany with a new alloy/lubricant combination reduced friction and noise
INNOVATIVE DESIGN: Design of fan blades improves air flow and facilitates efficient ventilation, impeller was designed with a focus on minimzing the noise level yet delivering the desired airflow and pressure
TWO WAY INSTALLATION: Blow warm air out of the case, draw cool air into your case
LONG SERVICE LIFE: The Fluid Dynamic Bearing comes with an oil capsule that avoids lubricant leakage, thus this bearing is as quiet as a sleeve bearing but comes with a higher service life
TECHNICAL DATA: Fan speed: 800 RPM, Airflow: 46 CFM/78 m/h (@ 800 RPM), Noise Level: 0.08 Sone (@ 800 RPM), Pin: 3-pin", price: 17.04, category: cat4, default_image: "10")

prod10 = user2.products.create(name: "Lian Li Lancool 215 Mesh ARGB Mid Tower E-ATX Case", description: "【REMARKABLE EXPANSION】This excellent ATX Mid Tower Gaming computer case supports motherboards up to ATX, Micro-ATX, Mini-ITX; Internal Bays: 2 x 3.5 HDD's and 3 x 2.5 SSD's (Not included).
【POWERFUL COOLING SYSTEM】6 MVP 120mm RGB Dual light loop LED Fans pre-installed in this pc gaming case: 3 x Front, 2 x Top, 1 x Rear; up to 360mm long liquid-cooling radiator at front(optional). You can change the color and mode of the light through the RGB button.
【TEMPERED GLASS PANELS】To level up gaming experience for users, it is equipped with 2*4mm thickness translucent Tempered Glasses in Galaxy Dark, which gives you a clear view of RGB case.
【MUSIC LIGHT SHOW】Through the remote control, select the corresponding voice mode, the effect of the light will vary with the size of the music.
【TOP I/O PANEL】1 x USB3.0 Port, 2 x USB2.0 Port, 1 x HD Audio, RGB Button, Power/Reset.", price: 129, category: cat1, default_image: "2")


user1.wishlists.create(product: prod6)
user1.wishlists.create(product: prod7)
user1.wishlists.create(product: prod8)

user2.wishlists.create(product: prod1)
user2.wishlists.create(product: prod2)
user2.wishlists.create(product: prod3)
