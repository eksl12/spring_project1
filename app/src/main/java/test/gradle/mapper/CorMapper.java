package test.gradle.mapper;

import java.util.List;
import test.gradle.vo.InCorVo;
import test.gradle.vo.OutCorVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface CorMapper {
	int registerInCor(InCorVo inCorVo);
	List<InCorVo> selectInCor(InCorVo inCorVo);
	int registerOutCor(OutCorVo outCorVo);
	List<OutCorVo> selectOutCor (OutCorVo outCorVo);
}
