/*
 * #{copyright}#
 */
package com.hand.hap.cache.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.hand.hap.cache.Cache;
import com.hand.hap.cache.CacheManager;

/**
 * @author shengyang.zhou@hand-china.com
 */
public class CacheManagerImpl implements CacheManager {

    private HashMap<String, Cache> cacheMap = new HashMap<>();
    private List<Cache> caches;

    public void setCaches(List<Cache> caches) {
        this.caches = caches;
        if (caches != null) {
            for (Cache c : caches) {
                cacheMap.put(c.getName(), c);
                c.init();
            }
        }
    }

    public List<Cache> getCaches() {
        return caches;
    }

    @Override
    public <T> Cache<T> getCache(String name) {
        return cacheMap.get(name);
    }

    @Override
    public void addCache(Cache<?> cache) {
        if (caches == null) {
            caches = new ArrayList<>();
        }
        if (!caches.contains(cache)) {
            caches.add(cache);
        }
        cacheMap.put(cache.getName(), cache);
    }
}
