package com.repository;

import com.productDto.ProductDto;

public abstract class ProductRepository implements ProductRepIn{
    public boolean persist(ProductDto productDto){
        System.out.println("running persist in product repository "+ productDto);
        return true;
    }
}
