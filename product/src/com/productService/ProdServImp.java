package com.productService;

import com.exception.CatException;
import com.exception.IdException;
import com.exception.NameException;
import com.exception.QuantityException;
import com.productDto.ProductDto;

import java.util.Arrays;
import java.util.List;

public class ProdServImp implements ProductService {

    @Override
    public boolean save(ProductDto productDto) {
        if (productDto == null) {
            System.out.println("Product form contains null");
            return false;
        }

        String id = productDto.getId();
        if (id == null || id.length() < 4) {
            throw new IdException("Invalid ID");
        } else {
            System.out.println("Valid ID");
        }

        String name = productDto.getName();
        if (name == null || name.length() < 4) {
            throw new NameException("Invalid name");
        } else {
            System.out.println("Valid name");
        }

        String priceStr = productDto.getPrice();
        try {
            double price = Double.parseDouble(priceStr);
            if (price <= 0 || price > 10000) {
                throw new IllegalArgumentException("Invalid price range");
            }
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Price must be a number", e);
        }
        System.out.println("Valid price");

        String quantStr = productDto.getQuant();
        try {
            int quantity = Integer.parseInt(quantStr);
            if (quantity < 0 || quantity > 1000) {
                throw new QuantityException("Invalid quantity");
            }
        } catch (NumberFormatException e) {
            throw new QuantityException("Quantity must be a number");
        }
        System.out.println("Valid quantity");

        String cat = productDto.getCat();
        List<String> allowedCategories = Arrays.asList("electronics", "clothing", "books", "home");
        if (!allowedCategories.contains(cat.toLowerCase())) {
            throw new CatException("Invalid category");
        } else {
            System.out.println("Valid category");
        }

        return true;
    }
}
