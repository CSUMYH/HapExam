package com.hand.hap.fruit.service.impl;

import java.util.List;

import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.hand.hap.cache.impl.HashStringRedisCacheGroup;
import com.hand.hap.core.ILanguageProvider;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.exception.EmailException;
import com.hand.hap.fruit.dto.Fruit;
import com.hand.hap.fruit.mapper.FruitMapper;
import com.hand.hap.fruit.service.IFruitService;
import com.hand.hap.function.dto.Function;
import com.hand.hap.function.dto.Resource;
import com.hand.hap.job.dto.JobDetailDto;
import com.hand.hap.system.dto.DTOStatus;
import com.hand.hap.system.dto.Language;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author taotao.xu@hand-china.com
 */
@Service
public class FruitServiceImpl extends BaseServiceImpl<Fruit> implements IFruitService {

    @Autowired
    private FruitMapper fruitMapper;
    

    
    @Autowired
    private ILanguageProvider languageProvider;


	@Override
	public List<Fruit> selectByFruit(IRequest requestContext, Fruit fruit, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return fruitMapper.selectByFruit(fruit);
	}
	
	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
    public List<Fruit> batchUpdate(IRequest requestContext, List<Fruit> fruits) {
        // TODO Auto-generated method stub
        for (Fruit fruit : fruits) {
            if (fruit.get__status() != null) {
                switch (fruit.get__status()) {
                case DTOStatus.ADD:
                	fruitMapper.insertFruit(fruit);
                    break;
                case DTOStatus.UPDATE:
                	//fruitMapper.updateTask(task);
                    break;
                case DTOStatus.DELETE:
                    self().deleteByPrimaryKey(fruit);
                    break;
                default:
                    break;
                }
            }
        }
        return fruits;
    }
	

	private int deleteByPrimaryKey(IRequest request, Fruit fruit) {
        if (fruit.getFruitId() == null) {
            return 0;
        }
       fruitMapper.deleteByFruitId(fruit.getFruitId());
        return fruitMapper.deleteByPrimaryKey(fruit);
    }

	@Override
	public int batchDelete(IRequest request, List<Fruit> fruits) {
        int result = 0;
        if (fruits == null || fruits.isEmpty()) {
            return result;
        }

        for (Fruit fruit : fruits) {
            deleteByPrimaryKey(request, fruit);
            result++;
        }
        return result;
	}

	@Override
	public Fruit updateFruit(IRequest requestContext, Fruit obj) {
		 if (obj == null) {
	            return null;
	        }
//	        /* Mclin修改，验证编号和市场是否唯一 */
//	        if (validMsgTem(requestContext, obj) == false) {
//	            throw new EmailException(EmailException.MSG_ERROR_SAME_CODE_AND_MARKET_ID_IS_EXISTS);
//	        }
	        fruitMapper.updateByPrimaryKeySelective(obj);
	        return obj;
		
	}

	
}
