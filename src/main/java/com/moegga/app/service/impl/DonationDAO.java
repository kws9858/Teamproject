package com.moegga.app.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.moegga.app.service.DonationDTO;
import com.moegga.app.service.FundingDTO;
import com.moegga.app.service.MemberDTO;

@Repository
public class DonationDAO {

	@Resource(name="template")
	private SqlSessionTemplate donationTemplate;

	public List<DonationDTO> selectDonationList(Map map) {
		// TODO Auto-generated method stub
		return donationTemplate.selectList("selectDonationList",map);
	}

	

}
