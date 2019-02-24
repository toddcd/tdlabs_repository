package com.tdlabs.secureapi.controller;

import com.tdlabs.secureapi.model.Bicycle;
import com.tdlabs.secureapi.repository.BicycleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController

public class BicycleController {

    @Autowired
    private BicycleRepository bicycleRepository;

    public BicycleController(BicycleRepository bicycleRepository) {
        this.bicycleRepository = bicycleRepository;
    }

    @RequestMapping("/v1/bicycles")
    public List<Bicycle> getAllBicycles() {
        return bicycleRepository.findAll();
    }
}
