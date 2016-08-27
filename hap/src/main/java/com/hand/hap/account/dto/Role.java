package com.hand.hap.account.dto;

import com.hand.hap.core.annotation.MultiLanguage;
import com.hand.hap.core.annotation.MultiLanguageField;
import com.hand.hap.system.dto.BaseDTO;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author shengyang.zhou@hand-china.com
 */
@MultiLanguage
@Table(name = "sys_role_b")
public class Role extends BaseDTO {

    public static final String FIELD_ROLE_ID = "roleId";

    @Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
    private Long roleId;

    @Column
    private String roleCode;

    @Column
    @MultiLanguageField
    private String roleName;

    @Column
    @MultiLanguageField
    private String roleDescription;

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }
}
