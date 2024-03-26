/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package pict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import pict.service.PictVO;

@Mapper
public interface PictMapper {
	
	List<?> test_service(PictVO pictVO) throws Exception;

	List<?> board_list(PictVO pictVO) throws Exception;

	PictVO board_list_one(PictVO pictVO) throws Exception;

	void board_update(PictVO pictVO) throws Exception;

	void board_insert(PictVO pictVO) throws Exception;

	void board_delete(PictVO pictVO) throws Exception;

	List<PictVO> news_list(PictVO pictVO) throws Exception;

	PictVO news_list_one(PictVO pictVO)throws Exception;

	void news_update(PictVO pictVO) throws Exception;

	void news_insert(PictVO pictVO) throws Exception;

	void news_delete(PictVO pictVO)throws Exception;

	List<PictVO> video_list(PictVO pictVO) throws Exception;

	PictVO video_list_one(PictVO pictVO) throws Exception;

	void video_update(PictVO pictVO) throws Exception;

	void video_insert(PictVO pictVO) throws Exception;

	void video_delete(PictVO pictVO) throws Exception;
	

}
