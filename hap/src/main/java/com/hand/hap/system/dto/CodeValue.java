/*
 * #{copyright}#
 */
package com.hand.hap.system.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.hand.hap.core.annotation.MultiLanguageField;
import org.hibernate.validator.constraints.NotEmpty;

import com.hand.hap.core.annotation.MultiLanguage;
import com.hand.hap.system.dto.BaseDTO;

/**
 * CodeValueDTO.
 *
 * @author runbai.chen
 */
@MultiLanguage
@Table(name = "sys_code_value_b")
public class CodeValue extends BaseDTO {

    private static final long serialVersionUID = 7078027762943933806L;

    /**
     * 快速编码类型.
     */
    @NotEmpty
    private Long codeId;

    /**
     * ID.
     */
    @Id
    @GeneratedValue(generator = GENERATOR_TYPE)
    @NotEmpty
    private Long codeValueId;

    /**
     * 快码编码值描述.
     */
    @com.hand.hap.core.annotation.MultiLanguageField
    private String description;

    /**
     * 快码编码意义描述.
     */
    @MultiLanguageField
    @NotEmpty
    private String meaning;

    /**
     * 快速编码code.
     */
    @NotEmpty
    private String value;

    public Long getCodeId() {
        return codeId;
    }

    public Long getCodeValueId() {
        return codeValueId;
    }

    public String getDescription() {
        return description;
    }

    public String getMeaning() {
        return meaning;
    }

    public String getValue() {
        return value;
    }

    public void setCodeId(Long codeId) {
        this.codeId = codeId;
    }

    public void setCodeValueId(Long codeValueId) {
        this.codeValueId = codeValueId;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning == null ? null : meaning.trim();
    }

    public void setValue(String value) {
        this.value = value == null ? null : value.trim();
    }

}