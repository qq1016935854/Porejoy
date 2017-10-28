package com.purejoy.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id 

;
import javax.persistence.Table;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

@Entity
@Table(name="pure_recipe")
public class Recipe {
	private final static Logger LOG = LogManager.getLogger(Recipe.class);
	
	@Id
	@Column
	private String id;
	
	@Column
	private String recipe_weekday;
	
	@Column
	private String recipe_advice;
	
	@Column 
	private String recipe_operation;
	@Column 
	private String recipe_breakfast;
	@Column 
	private String recipe_lunch;
	@Column 
	private String recipe_dinner;
	@Column 
	private String recipe_extra;
	@Column 
	private String recipe_type;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id 

 = id;
	}
	public String getRecipe_weekday() {
		return recipe_weekday;
	}
	public void setRecipe_weekday(String recipe_weekday) {
		this.recipe_weekday = recipe_weekday;
	}
	public String getRecipe_advice() {
		return recipe_advice;
	}
	public void setRecipe_advice(String recipe_advice) {
		this.recipe_advice = recipe_advice;
	}
	public String getRecipe_operation() {
		return recipe_operation;
	}
	public void setRecipe_operation(String recipe_operation) {
		this.recipe_operation = recipe_operation;
	}
	public String getRecipe_breakfast() {
		return recipe_breakfast;
	}
	public void setRecipe_breakfast(String recipe_breakfast) {
		this.recipe_breakfast = recipe_breakfast;
	}
	public String getRecipe_lunch() {
		return recipe_lunch;
	}
	public void setRecipe_lunch(String recipe_lunch) {
		this.recipe_lunch = recipe_lunch;
	}
	public String getRecipe_dinner() {
		return recipe_dinner;
	}
	public void setRecipe_dinner(String recipe_dinner) {
		this.recipe_dinner = recipe_dinner;
	}
	public String getRecipe_extra() {
		return recipe_extra;
	}
	public void setRecipe_extra(String recipe_extra) {
		this.recipe_extra = recipe_extra;
	}
	public String getRecipe_type() {
		return recipe_type;
	}
	public void setRecipe_type(String recipe_type) {
		this.recipe_type = recipe_type;
	}
	
	
		
}