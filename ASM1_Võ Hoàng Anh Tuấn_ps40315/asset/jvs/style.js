// Get product id from URL
const urlParams = new URLSearchParams(window.location.search);
const productId = urlParams.get('id');

// Simulate product data
const products = [
  {
    name: "Lexus 11",
    price: "$3.50",
    description: "Lexus LS (dòng sedan hạng sang cao cấp nhất)",
    img: "./asset/img/Vinfast.jpg",
  },
  {
    name: "Lexus 22",
    price: "$4.00",
    description: "Lexus IS (sedan thể thao nhỏ gọn)",
    img: "./asset/img/anh3.jpg",
  },
  {
    name: "Lexus 33",
    price: "$4.50",
    description: "Lexus LX (SUV cỡ lớn, mạnh mẽ và sang trọng)",
    img: "./asset/img/anh2.jpg",
  },
  {
    name: "Lexus 44",
    price: "$9.00",
    description: "Lexus LX ",
    img: "./asset/img/anh4.jpg",
  },
  {
    name: "Vinfast1_vf8 ",
    price: "$9.00",
    description: "Lexus LX ",
    img: "./asset/img/Vinfast1_vf8.jpg",
  },
];

// Function to display product details
function showProduct(id) {
  const product = products[id];
  document.getElementById("product-img").src = product.img;
  document.getElementById("product-name").innerText = product.name;
  document.getElementById("product-price").innerText = product.price;
  document.getElementById("product-description").innerText = product.description;
  window.scrollTo({ top: 0, behavior: "smooth" });
}

// Call the function to display the product based on the ID
showProduct(productId);

// Simulate Add to Cart Function
function addToCart() {
  alert("The product has been added to your cart!");
}

