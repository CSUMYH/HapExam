package com.hand.hap.fruit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.DeleteProvider;

import com.hand.hap.fruit.dto.Fruit;
import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.mybatis.provider.base.BaseDeleteProvider;

/**
 * @author taotao.xu@hand-china.com
 */
public interface FruitMapper extends Mapper<Fruit> {

    List<Fruit> selectByFruit(Fruit fruit);
    
    int insertFruit(Fruit fruit);
	void deleteByFruitId(Long functionId);
	
	
	 @DeleteProvider(type = BaseDeleteProvider.class, method = "dynamicSQL")
	 int deleteByPrimaryKey(Object key);
	


}
