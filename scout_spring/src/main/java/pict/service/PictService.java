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

	public void new_org(PictVO pictVO) throws Exception;

	public void organ_update(PictVO pictVO) throws Exception;

	public String login_user_info(String loginNo) throws Exception;

	public List<PictVO> units_list(PictVO pictVO) throws Exception;

	public PictVO fn_get_units_info(PictVO pictVO) throws Exception;

	public List<PictVO> fn_get_units_leader(PictVO pictVO) throws Exception;

	public List<PictVO> fn_get_units_scout(PictVO pictVO) throws Exception;

	public List<PictVO> organ_leader_list(PictVO pictVO) throws Exception;

	public List<PictVO> organ_scout_list(PictVO pictVO) throws Exception;

	public List<PictVO> troop_search(PictVO pictVO) throws Exception;

	public List<PictVO> prev_leader_list(PictVO pictVO) throws Exception;

	public List<PictVO> prev_scout_list(PictVO pictVO) throws Exception;

	public List<PictVO> former_list(PictVO pictVO) throws Exception;

	public void former_save(PictVO pictVO) throws Exception;

	public PictVO price_list(PictVO pictVO) throws Exception;

	public void price_insert(PictVO pictVO) throws Exception;

	public void price_update(PictVO pictVO) throws Exception;

	public PictVO association_price(PictVO pictVO) throws Exception;

	public void leader_whole_register(PictVO pictVO) throws Exception;

	public void scout_whole_register(PictVO pictVO) throws Exception;

	public void leader_whole_confirm(PictVO pictVO) throws Exception;

	public void scout_whole_confirm(PictVO pictVO) throws Exception;

	
	//홈페이지 시작
	public List<PictVO> board_list(PictVO pictVO) throws Exception;

	public Integer board_list_cnt(PictVO pictVO) throws Exception;

	public PictVO board_list_one(PictVO pictVO) throws Exception;

	public void board_view_cnt(PictVO pictVO) throws Exception;

	public void board_delete(PictVO pictVO) throws Exception;

	public void board_update(PictVO pictVO) throws Exception;

	public void board_insert(PictVO pictVO) throws Exception;

	public void reservation_insert(PictVO pictVO) throws Exception;

	public void file_delete(PictVO pictVO) throws Exception;

	public Integer reservation_list_cnt(PictVO pictVO) throws Exception;

	public List<PictVO> reservation_list(PictVO pictVO) throws Exception;

	public void reservation_cng(PictVO pictVO) throws Exception;

	public List<PictVO> local_list(PictVO pictVO) throws Exception;

	public void local_apply(PictVO pictVO) throws Exception;

	public Integer local_list_cnt(PictVO pictVO) throws Exception;

	public void local_cng(PictVO pictVO) throws Exception;

	public List<PictVO> youth_list(PictVO pictVO) throws Exception;

	public List<PictVO> youth_group(PictVO pictVO) throws Exception;

	public List<PictVO> units_list_excel(PictVO pictVO) throws Exception;

	public PictVO getLocal_info(PictVO pictVO) throws Exception;

	public List<PictVO> board_category_list(PictVO pictVO) throws Exception;

	public Integer popup_list_cnt(PictVO pictVO) throws Exception;

	public List<PictVO> popup_list(PictVO pictVO) throws Exception;

	public PictVO popup_list_one(PictVO pictVO) throws Exception;

	public void popup_update(PictVO pictVO) throws Exception;

	public void popup_insert(PictVO pictVO) throws Exception;

	public void popup_delete(PictVO pictVO) throws Exception;

	public void popup_cng(PictVO pictVO) throws Exception;

	public List<PictVO> dae_modal_search(PictVO pictVO) throws Exception;

	public PictVO fine_member_info(PictVO pictVO) throws Exception;

	public PictVO member_info(PictVO pictVO) throws Exception;

	public void mypage_mod(PictVO pictVO) throws Exception;

	public List<PictVO> first_password(PictVO pictVO) throws Exception;

	public void first_password_cng(PictVO pictVO) throws Exception;

	public List<PictVO> login_troop_list(PictVO pictVO) throws Exception;

	public List<PictVO> login_troop_list2(PictVO pictVO) throws Exception;

	public List<PictVO> life_list(PictVO pictVO) throws Exception;

	public Integer life_list_cnt(PictVO pictVO) throws Exception;

	public List<PictVO> scout_stats_list(PictVO pictVO) throws Exception;

	public List<PictVO> leader_stats_list(PictVO pictVO) throws Exception;

	public List<PictVO> stats_scout_page(PictVO pictVO) throws Exception;

	public List<PictVO> stats_organ_page(PictVO pictVO) throws Exception;

	public List<PictVO> stats_leader_page(PictVO pictVO) throws Exception;

	public List<PictVO> stats_rate_page(PictVO pictVO) throws Exception;

	public List<PictVO> stats_continue_page(PictVO pictVO) throws Exception;

	public PictVO life_info_scout(PictVO pictVO) throws Exception;

	public PictVO life_info_leader(PictVO pictVO) throws Exception;

	public PictVO life_sub_info(PictVO pictVO) throws Exception;



}
