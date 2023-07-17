package com.skilldistillery.firearmsinventory.data;

import java.util.List;

import com.skilldistillery.firearmsinventory.entities.Firearm;

public interface FirearmsDao {
Firearm findById(int id);
List<Firearm> findAll();
Firearm create(Firearm firearm);
Firearm update(int Id, Firearm firearm);
boolean deleteById(int Id);
}
