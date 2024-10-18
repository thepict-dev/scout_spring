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
import org.apache.ibatis.annotations.Options;

import pict.service.PictVO;

@Mapper
public interface PictMapper {
	
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

	List<PictVO> fn_get_orgclscode(PictVO pictVO) throws Exception;

	List<PictVO> fn_get_parentorgno(PictVO pictVO) throws Exception;

	List<PictVO> search_org(PictVO pictVO) throws Exception;

	void main_scout_org_save(PictVO pictVO) throws Exception;

	void main_leader_org_save(PictVO pictVO) throws Exception;

	List<PictVO> troopclscode1_search(PictVO pictVO) throws Exception;

	List<PictVO> organ_search(PictVO pictVO) throws Exception;

	PictVO organ_info(PictVO pictVO) throws Exception;

	void new_org(PictVO pictVO) throws Exception;

	void organ_update(PictVO pictVO) throws Exception;

	String login_user_info(String loginNo) throws Exception;

	List<PictVO> units_list(PictVO pictVO) throws Exception;

	PictVO fn_get_units_info(PictVO pictVO) throws Exception;

	List<PictVO> fn_get_units_leader(PictVO pictVO) throws Exception;

	List<PictVO> fn_get_units_scout(PictVO pictVO) throws Exception;

	List<PictVO> organ_leader_list(PictVO pictVO) throws Exception;

	List<PictVO> organ_scout_list(PictVO pictVO) throws Exception;

	List<PictVO> troop_search(PictVO pictVO) throws Exception;

	List<PictVO> prev_leader_list(PictVO pictVO) throws Exception;

	List<PictVO> prev_scout_list(PictVO pictVO) throws Exception;

	List<PictVO> former_list(PictVO pictVO) throws Exception;

	void former_save(PictVO pictVO) throws Exception;

	PictVO price_list(PictVO pictVO) throws Exception;

	void price_insert(PictVO pictVO) throws Exception;

	void price_update(PictVO pictVO) throws Exception;

	PictVO association_price(PictVO pictVO) throws Exception;

	void leader_whole_register(PictVO pictVO) throws Exception;

	void scout_whole_register(PictVO pictVO) throws Exception;

	void leader_whole_confirm(PictVO pictVO) throws Exception;

	void scout_whole_confirm(PictVO pictVO) throws Exception;

	//홈페이지 시작
	List<PictVO> board_list(PictVO pictVO) throws Exception;

	Integer board_list_cnt(PictVO pictVO) throws Exception;

	PictVO board_list_one(PictVO pictVO) throws Exception;

	void board_view_cnt(PictVO pictVO) throws Exception;

	void board_delete(PictVO pictVO) throws Exception;

	void board_update(PictVO pictVO) throws Exception;
	
	void board_insert(PictVO pictVO) throws Exception;

	void reservation_insert(PictVO pictVO) throws Exception;

	void file_delete(PictVO pictVO) throws Exception;

	Integer reservation_list_cnt(PictVO pictVO) throws Exception;

	List<PictVO> reservation_list(PictVO pictVO) throws Exception;

	void reservation_cng(PictVO pictVO) throws Exception;

	List<PictVO> local_list(PictVO pictVO) throws Exception;

	void local_apply(PictVO pictVO) throws Exception;

	Integer local_list_cnt(PictVO pictVO) throws Exception;

	void local_cng(PictVO pictVO) throws Exception;

	List<PictVO> youth_list(PictVO pictVO) throws Exception;

	List<PictVO> youth_group(PictVO pictVO) throws Exception;

	List<PictVO> units_list_excel(PictVO pictVO) throws Exception;

	PictVO getLocal_info(PictVO pictVO) throws Exception;

	List<PictVO> board_category_list(PictVO pictVO) throws Exception;

	Integer popup_list_cnt(PictVO pictVO) throws Exception;

	List<PictVO> popup_list(PictVO pictVO) throws Exception;

	PictVO popup_list_one(PictVO pictVO) throws Exception;

	void popup_update(PictVO pictVO) throws Exception;

	void popup_insert(PictVO pictVO) throws Exception;

	void popup_delete(PictVO pictVO) throws Exception;

	void popup_cng(PictVO pictVO) throws Exception;

	List<PictVO> dae_modal_search(PictVO pictV) throws Exception;

	PictVO fine_member_info(PictVO pictVO) throws Exception;

	PictVO member_info(PictVO pictVO) throws Exception;

	void mypage_mod(PictVO pictVO) throws Exception;

	List<PictVO> first_password(PictVO pictVO) throws Exception;

	void first_password_cng(PictVO pictVO) throws Exception;

	List<PictVO> login_troop_list(PictVO pictVO) throws Exception;

	List<PictVO> login_troop_list2(PictVO pictVO) throws Exception;

	List<PictVO> life_list(PictVO pictVO) throws Exception;

	Integer life_list_cnt(PictVO pictVO) throws Exception;

	List<PictVO> scout_stats_list(PictVO pictVO) throws Exception;

	List<PictVO> leader_stats_list(PictVO pictVO) throws Exception;

	List<PictVO> stats_scout_page(PictVO pictVO) throws Exception;

	List<PictVO> stats_organ_page(PictVO pictVO) throws Exception;

	

}
