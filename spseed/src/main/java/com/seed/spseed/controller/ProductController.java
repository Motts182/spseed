package com.seed.spseed.controller;

import com.seed.spseed.model.Product;
import com.seed.spseed.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/product")
public class ProductController {
    @Autowired
    private ProductRepository productRepository;

    @GetMapping
    public List<Product> list(){
        return productRepository.findAll();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void create(@RequestBody Product product){
        productRepository.save(product);
    }

    @GetMapping("/{id}")
    public Product get(@PathVariable("id") long id){
        return productRepository.getOne(id);
    }
}
