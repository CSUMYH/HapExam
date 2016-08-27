package com.hand.hap.fruit.dto;

import com.hand.hap.core.annotation.MultiLanguage;
import com.hand.hap.core.annotation.MultiLanguageField;
import com.hand.hap.system.dto.BaseDTO;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Created by taotao.xu on 16/6/24.
 */
@MultiLanguage
@Table(name = "fruit_b")
public class Fruit  extends BaseDTO {
    
    @Id
    @Column
    @GeneratedValue
    private  Long fruitId;
    
    @Column
    @NotEmpty
    private String fruitName;
    
    @Column
    @NotEmpty
    private String fruitCode;
    
    @Column
    @MultiLanguageField
    private String fruitDescription;
    
    @Column
    @NotEmpty
    private Date LAST_UPDATE_DATE;
	public Date getLAST_UPDATE_DATE() {
		return LAST_UPDATE_DATE;
	}

	public void setLAST_UPDATE_DATE(Date lAST_UPDATE_DATE) {
		LAST_UPDATE_DATE = lAST_UPDATE_DATE;
	}

	public String getFruitCode() {
		return fruitCode;
	}

	public void setFruitCode(String fruitCode) {
		this.fruitCode = fruitCode;
	}

	public Long getFruitId() {
		return fruitId;
	}

	public void setFruitId(Long fruitId) {
		this.fruitId = fruitId;
	}

	public String getFruitName() {
		return fruitName;
	}

	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}

	public String getFruitDescription() {
		return fruitDescription;
	}

	public void setFruitDescription(String fruitDescription) {
		this.fruitDescription = fruitDescription;
	}
    
}
