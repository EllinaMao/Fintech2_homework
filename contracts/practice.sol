// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ProductManager {
    struct Product {
        string name;
        string description;
        uint256 price;
        address creator;
        uint256 timestamp;
        string imageUrl;
    }
    
    Product[] public products;
    
    function add_product(string memory _name, string memory _description, uint256 _price, string memory _imageUrl) public {
        products.push(Product({
            name: _name,
            description: _description,
            price: _price,
            creator: msg.sender,
            timestamp: block.timestamp,
            imageUrl: _imageUrl
        }));
    }

    function get_products() public view returns (Product[] memory) {
        return products;
        // Product[] memory _products = new Product[](2);
        // _products[0] = Product({
        //     name: "for tests",
        //     description: "TestProd1",
        //     price: 100,
        //     creator: address(0),
        //     timestamp: 1702300800,
        //     imageUrl: "https://cdn.britannica.com/34/235834-050-C5843610/two-different-breeds-of-cats-side-by-side-outdoors-in-the-garden.jpg"
        // });
        // _products[1] = Product({
        //     name: "for test2",
        //     description: "TestProd2",
        //     price: 100,
        //     creator: address(0),
        //     timestamp: 1702300800,
        //     imageUrl: "https://cdn.omlet.com/images/originals/breed_abyssinian_cat.jpg"
        // });
        // return _products;
    }

    
}

// Функціонал реалізувати у контракті. Фронтенд має викликати ці функції
 
// Product:
// - назва продукту
// - опис
// - ціна
// - адреса акаунта(хто створив)
// - часова мітка створення
// - URL-картинка
 
// фронтенд:
// можливість створити новий продукт
// вивести продукти у вигляді таблиці: 
// Назва/Опис/АдресаАкаунта/ДатаСтворення/Картинка(Відобразити)
