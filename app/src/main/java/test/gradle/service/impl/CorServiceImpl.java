package test.gradle.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.gradle.mapper.CorMapper;
import test.gradle.service.CorService;
import test.gradle.vo.InCorVo;
import test.gradle.vo.OutCorVo;

@Service
public class CorServiceImpl implements CorService{
	@Autowired
	private CorMapper mapper;

	@Override
	public List<InCorVo> selectInCor(InCorVo vo) {
		// TODO Auto-generated method stub
		return mapper.selectInCor(vo);
	}

	@Override
	public String registerInCor(InCorVo vo) {
		// TODO Auto-generated method stub
		
		System.out.println(vo.toString());
		 mapper.registerInCor(vo);
		 return"submit";
	}

	@Override
	public List<OutCorVo> selectOutCor(OutCorVo vo) {
		// TODO Auto-generated method stub
		return mapper.selectOutCor(vo);
	}

	@Override
	public String registerOutCor(OutCorVo cor) {
		// TODO Auto-generated method stub
		 mapper.registerOutCor(cor);
		 return"submit";
	}

	@Override
	public String updateInCor(InCorVo vo) {
		// TODO Auto-generated method stub
			mapper.updateInCor(vo);
		return "update";
	}

	@Override
	public String updateOutCor(OutCorVo vo) {
		// TODO Auto-generated method stub
			mapper.updateOutCor(vo);
		return "update";
	}
	
	

}
