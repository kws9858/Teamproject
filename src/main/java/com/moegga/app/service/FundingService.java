package com.moegga.app.service;

import java.util.List;
import java.util.Map;

public interface FundingService {

	public List<FundingDTO> selectFundingList(Map map);


	public int updateAmount(Map map);

	public FundingDTO selectFundingOne(Map map);



}
