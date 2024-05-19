/*
 * Copyright 2008-2009 the original author or authors.
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
package pict.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface PictService {	
    public List<?> test_service(PictVO pictVO) throws Exception;

	public List<?> board_list(PictVO pictVO) throws Exception;

	public PictVO board_list_one(PictVO pictVO) throws Exception;

	public void board_update(PictVO pictVO) throws Exception;

	public void board_insert(PictVO pictVO) throws Exception;

	public void board_delete(PictVO pictVO) throws Exception;

	public List<PictVO> news_list(PictVO pictVO) throws Exception;

	public PictVO news_list_one(PictVO pictVO) throws Exception;

	public void news_update(PictVO pictVO) throws Exception;

	public void news_insert(PictVO pictVO) throws Exception;

	public void news_delete(PictVO pictVO) throws Exception;

	public List<PictVO> video_list(PictVO pictVO) throws Exception;

	public PictVO video_list_one(PictVO pictVO) throws Exception;

	public void video_update(PictVO pictVO) throws Exception;

	public void video_insert(PictVO pictVO) throws Exception;

	public void video_delete(PictVO pictVO) throws Exception;

	public List<PictVO> scout_left_search_list(PictVO pictVO) throws Exception;

	public PictVO get_per_info(PictVO pictVO) throws Exception;

	public List<?> job_list(PictVO pictVO)  throws Exception;

	public List<PictVO> leader_list(PictVO pictVO) throws Exception;

	public List<PictVO> scout_list(PictVO pictVO) throws Exception;

	public List<PictVO> troop_left_search_list(PictVO pictVO) throws Exception;

	public List<PictVO> association_list(PictVO pictVO) throws Exception;

	public List<PictVO> unity_list(PictVO pictVO) throws Exception;

	public List<PictVO> troop_list(PictVO pictVO) throws Exception;

	public List<PictVO> trooplevel_list(PictVO pictVO) throws Exception;

	public List<PictVO> scoutcls_list(PictVO pictVO) throws Exception;

	public PictVO troop_info(PictVO pictVO) throws Exception;

	public void person_save(PictVO pictVO) throws Exception;

	public List<PictVO> get_relation_info(PictVO pictVO) throws Exception;

	public List<PictVO> get_relation_clscode(PictVO pictVO) throws Exception;

	public List<PictVO> get_relation_person_search(PictVO pictVO) throws Exception;

	public void relation_insert(PictVO pictVO) throws Exception;
	
	public void relation_delete(PictVO pictVO) throws Exception;

	public void profile_img(PictVO pictVO) throws Exception;

	public void leader_save(PictVO pictVO) throws Exception;

	public void new_person(PictVO pictVO) throws Exception;

	public void leader_del(PictVO pictVO) throws Exception;

	public PictVO get_leader_mod(PictVO pictVO) throws Exception;

	public List<PictVO> fn_get_leaderposition(PictVO pictVO) throws Exception;

	public List<PictVO> fn_get_scoutpositioncode(PictVO pictVO) throws Exception;

	public PictVO get_scout_mod(PictVO pictVO) throws Exception;

	public void leader_update(PictVO pictVO) throws Exception;

	public void scout_save(PictVO pictVO) throws Exception;

	public void scout_update(PictVO pictVO) throws Exception;

	public void scout_del(PictVO pictVO) throws Exception;

	public List<PictVO> fn_get_orgclscode(PictVO pictVO) throws Exception;

	public List<PictVO> fn_get_parentorgno(PictVO pictVO) throws Exception;

	public List<PictVO> search_org(PictVO pictVO) throws Exception;

	public void main_scout_org_save(PictVO pictVO) throws Exception;

	public void main_leader_org_save(PictVO pictVO) throws Exception;

	public List<PictVO> troopclscode1_search(PictVO pictVO) throws Exception;

	public List<PictVO> organ_search(PictVO pictVO) throws Exception;

	public PictVO organ_info(PictVO pictVO) throws Exception;

}
