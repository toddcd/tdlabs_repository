package com.tdlabs.secureapi.repository;

import com.tdlabs.secureapi.model.Bicycle;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BicycleRepository extends JpaRepository<Bicycle, Integer> {
}

