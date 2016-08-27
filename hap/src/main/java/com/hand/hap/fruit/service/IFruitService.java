package com.hand.hap.fruit.service;


import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.fruit.dto.Fruit;
import com.hand.hap.function.dto.Function;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by hailor on 16/6/2.
 */
public interface IFruitService extends IBaseService<Fruit>, ProxySelf<IFruitService> {

    List<Fruit> selectByFruit(IRequest requestContext, Fruit fruit, int page, int pagesize);
    
    List<Fruit> batchUpdate(IRequest requestContext, @StdWho List<Fruit> fruits);
   
    int batchDelete(IRequest request, List<Fruit> fruits);

	Fruit updateFruit(IRequest requestContext, Fruit obj);
}
