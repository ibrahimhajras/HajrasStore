class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

// List of products in English
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Wireless Earbuds",
    subTitle: "High-Quality Sound",
    image: "images/page4/result.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Mobile Device",
    subTitle: "Powerful Mobile Experience",
    image: "images/page4/result (3).png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "3D Glasses",
    subTitle: "Experience Virtual Worlds",
    image: "images/page3/class.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Headset",
    subTitle: "Long Listening Hours",
    image: "images/page3/headset.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Voice Recorder",
    subTitle: "Capture Important Moments",
    image: "images/page3/speaker.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Computer Cameras",
    subTitle: "High-Quality Image and Video",
    image: "images/page3/camera.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 7,
    price: 199,
    title: "Smartwatch",
    subTitle: "Stay Connected On-The-Go",
    image: "images/page3/smartwatch.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 8,
    price: 79,
    title: "Bluetooth Speaker",
    subTitle: "Wireless Audio Playback",
    image: "images/page3/speaker2.webp",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 9,
    price: 1499,
    title: "Laptop",
    subTitle: "High-Performance Computing",
    image: "images/page3/laptop.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 10,
    price: 29,
    title: "Wireless Mouse",
    subTitle: "Ergonomic Design",
    image: "images/page3/mouse.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 11,
    price: 49,
    title: "Portable Charger",
    subTitle: "Charge Your Devices On-The-Go",
    image: "images/page3/charger.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
];