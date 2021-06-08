package test.gradle.service;

import java.util.List;
import test.gradle.vo.InCorVo;
import test.gradle.vo.OutCorVo;
public interface CorService {
	List<InCorVo> selectInCor(InCorVo vo);
	String registerInCor(InCorVo vo);
	List<OutCorVo> selectOutCor(OutCorVo vo);
	String registerOutCor(OutCorVo cor);

}
