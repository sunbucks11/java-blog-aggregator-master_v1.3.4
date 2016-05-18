package cz.jiripinkas.jba.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TestDataInitializer {
	
	@Autowired
	private InitDbService initDbService;

    public void init(){	
    	initDbService.init();
    }
}