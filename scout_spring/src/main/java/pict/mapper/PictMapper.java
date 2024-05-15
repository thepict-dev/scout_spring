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

	List<PictVO> scout_left_search_list(PictVO pictVO) throws Exception;

	PictVO get_per_info(PictVO pictVO) throws Exception;

	List<?> job_list(PictVO pictVO) throws Exception;

	List<PictVO> leader_list(PictVO pictVO) throws Exception;

	List<PictVO> scout_list(PictVO pictVO) throws Exception;

	List<PictVO> troop_left_search_list(PictVO pictVO) throws Exception;

	List<PictVO> association_list(PictVO pictVO) throws Exception;

	List<PictVO> unity_list(PictVO pictVO) throws Exception;

	List<PictVO> troop_list(PictVO pictVO) throws Exception;

	List<PictVO> trooplevel_list(PictVO pictVO) throws Exception;

	List<PictVO> scoutcls_list(PictVO pictVO) throws Exception;

	PictVO troop_info(PictVO pictVO) throws Exception;

	void person_save(PictVO pictVO) throws Exception;

	List<PictVO> get_relation_info(PictVO pictVO) throws Exception;

	List<PictVO> get_relation_clscode(PictVO pictVO) throws Exception;

	List<PictVO> get_relation_person_search(PictVO pictVO) throws Exception;

	void relation_insert(PictVO pictVO) throws Exception;
	
	void relation_delete(PictVO pictVO) throws Exception;

	void profile_img(PictVO pictVO) throws Exception;

	void leader_save(PictVO pictVO) throws Exception;

	void new_person(PictVO pictVO) throws Exception;

	void leader_del(PictVO pictVO) throws Exception;

	PictVO get_leader_mod(PictVO pictVO) throws Exception;

	List<PictVO> fn_get_leaderposition(PictVO pictVO) throws Exception;

	List<PictVO> fn_get_scoutpositioncode(PictVO pictVO) throws Exception;

	PictVO get_scout_mod(PictVO pictVO) throws Exception;

	void leader_update(PictVO pictVO) throws Exception;

	void scout_save(PictVO pictVO) throws Exception;

	void scout_update(PictVO pictVO) throws Exception;

	void scout_del(PictVO pictVO) throws Exception;  

	

}
