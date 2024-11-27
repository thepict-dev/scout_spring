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
package pict.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pict.mapper.PictMapper;
import pict.service.PictService;
import pict.service.PictVO;


@Service
public class PictServiceImpl implements PictService {

	@Autowired
    PictMapper pictMapper;

	@Override
	public List<PictVO> scout_left_search_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.scout_left_search_list(pictVO);
	}

	@Override
	public PictVO get_per_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.get_per_info(pictVO);
	}

	@Override
	public List<?> job_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.job_list(pictVO);
	}

	@Override
	public List<PictVO> leader_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.leader_list(pictVO);
	}

	@Override
	public List<PictVO> scout_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.scout_list(pictVO);
	}

	@Override
	public List<PictVO> troop_left_search_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.troop_left_search_list(pictVO);
	}

	@Override
	public List<PictVO> association_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.association_list(pictVO);
	}

	@Override
	public List<PictVO> unity_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.unity_list(pictVO);
	}

	@Override
	public List<PictVO> troop_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.troop_list(pictVO);
	}

	@Override
	public List<PictVO> trooplevel_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.trooplevel_list(pictVO);
	}

	@Override
	public List<PictVO> scoutcls_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.scoutcls_list(pictVO);
	}

	@Override
	public PictVO troop_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.troop_info(pictVO);
	}

	@Override
	public void person_save(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.person_save(pictVO);
	}

	@Override
	public List<PictVO> get_relation_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.get_relation_info(pictVO);
	}

	@Override
	public List<PictVO> get_relation_clscode(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.get_relation_clscode(pictVO);
	}

	@Override
	public List<PictVO> get_relation_person_search(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.get_relation_person_search(pictVO);
	}

	@Override
	public void relation_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.relation_insert(pictVO);
	}
	@Override
	public void relation_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.relation_delete(pictVO);
	}

	@Override
	public void profile_img(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.profile_img(pictVO);
	}

	@Override
	public void leader_save(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.leader_save(pictVO);
	}

	@Override
	public void new_person(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.new_person(pictVO);
	}

	@Override
	public void leader_del(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.leader_del(pictVO);
	}

	@Override
	public PictVO get_leader_mod(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.get_leader_mod(pictVO);
	}

	@Override
	public List<PictVO> fn_get_leaderposition(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_leaderposition(pictVO);
	}

	@Override
	public List<PictVO> fn_get_scoutpositioncode(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_scoutpositioncode(pictVO);
	}

	@Override
	public PictVO get_scout_mod(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.get_scout_mod(pictVO);
	}

	@Override
	public void leader_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.leader_update(pictVO);
	}

	@Override
	public void scout_save(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.scout_save(pictVO);
	}

	@Override
	public void scout_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.scout_update(pictVO);
	}

	@Override
	public void scout_del(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.scout_del(pictVO);
	}

	@Override
	public List<PictVO> fn_get_orgclscode(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_orgclscode(pictVO);
	}

	@Override
	public List<PictVO> fn_get_parentorgno(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_parentorgno(pictVO);
	}

	@Override
	public List<PictVO> search_org(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.search_org(pictVO);
	}

	@Override
	public void main_scout_org_save(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.main_scout_org_save(pictVO);
	}

	@Override
	public void main_leader_org_save(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.main_leader_org_save(pictVO);
	}

	@Override
	public List<PictVO> troopclscode1_search(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.troopclscode1_search(pictVO);
	}

	@Override
	public List<PictVO> organ_search(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.organ_search(pictVO);
	}

	@Override
	public PictVO organ_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.organ_info(pictVO);
	}

	@Override
	public void new_org(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.new_org(pictVO);
	}

	@Override
	public void organ_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.organ_update(pictVO);
	}

	@Override
	public String login_user_info(String loginNo) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.login_user_info(loginNo);
	}

	@Override
	public List<PictVO> units_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.units_list(pictVO);
	}

	@Override
	public PictVO fn_get_units_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_units_info(pictVO);
	}

	@Override
	public List<PictVO> fn_get_units_leader(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_units_leader(pictVO);
	}

	@Override
	public List<PictVO> fn_get_units_scout(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fn_get_units_scout(pictVO);
	}

	@Override
	public List<PictVO> organ_leader_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.organ_leader_list (pictVO);
	}

	@Override
	public List<PictVO> organ_scout_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.organ_scout_list(pictVO);
	}

	@Override
	public List<PictVO> troop_search(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.troop_search(pictVO);
	}

	@Override
	public List<PictVO> prev_leader_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.prev_leader_list(pictVO);
	}

	@Override
	public List<PictVO> prev_scout_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.prev_scout_list(pictVO);
	}

	@Override
	public List<PictVO> former_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.former_list(pictVO);
	}

	@Override
	public void former_save(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.former_save(pictVO);
	}

	@Override
	public PictVO price_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.price_list(pictVO);
	}

	@Override
	public void price_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.price_insert(pictVO);
	}

	@Override
	public void price_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.price_update(pictVO);
	}

	@Override
	public PictVO association_price(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.association_price(pictVO);
	}

	@Override
	public void leader_whole_register(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.leader_whole_register(pictVO);
	}

	@Override
	public void scout_whole_register(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.scout_whole_register(pictVO);
	}

	@Override
	public void leader_whole_confirm(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.leader_whole_confirm(pictVO);
	}

	@Override
	public void scout_whole_confirm(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.scout_whole_confirm(pictVO);
	}

	
	//홈페이지 시작
	@Override
	public List<PictVO> board_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.board_list(pictVO);
	}

	@Override
	public Integer board_list_cnt(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.board_list_cnt(pictVO);
	}

	@Override
	public PictVO board_list_one(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.board_list_one(pictVO);
	}

	@Override
	public void board_view_cnt(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.board_view_cnt(pictVO);
	}

	@Override
	public void board_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.board_delete(pictVO);
	}

	@Override
	public void board_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.board_update(pictVO);
	}

	@Override
	public void board_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.board_insert(pictVO);
	}

	@Override
	public void reservation_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.reservation_insert(pictVO);
	}

	@Override
	public void file_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.file_delete(pictVO);
	}

	@Override
	public Integer reservation_list_cnt(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.reservation_list_cnt(pictVO);
	}

	@Override
	public List<PictVO> reservation_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.reservation_list(pictVO);
	}

	@Override
	public void reservation_cng(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.reservation_cng(pictVO);
	}

	@Override
	public List<PictVO> local_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.local_list(pictVO);
	}

	@Override
	public void local_apply(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.local_apply(pictVO);
	}

	@Override
	public Integer local_list_cnt(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.local_list_cnt(pictVO);
	}

	@Override
	public void local_cng(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.local_cng(pictVO);
	}

	@Override
	public List<PictVO> youth_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.youth_list(pictVO);
	}

	@Override
	public List<PictVO> youth_group(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.youth_group(pictVO);
	}

	@Override
	public List<PictVO> units_list_excel(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.units_list_excel(pictVO);
	}

	@Override
	public PictVO getLocal_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.getLocal_info(pictVO);
	}

	@Override
	public List<PictVO> board_category_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.board_category_list(pictVO);
	}

	@Override
	public Integer popup_list_cnt(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.popup_list_cnt(pictVO);
	}

	@Override
	public List<PictVO> popup_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.popup_list(pictVO);
	}

	@Override
	public PictVO popup_list_one(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.popup_list_one(pictVO);
	}

	@Override
	public void popup_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.popup_update(pictVO);
	}

	@Override
	public void popup_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.popup_insert(pictVO);
	}

	@Override
	public void popup_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.popup_delete(pictVO);
	}

	@Override
	public void popup_cng(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.popup_cng(pictVO);
	}

	@Override
	public List<PictVO> dae_modal_search(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.dae_modal_search(pictVO);
	}

	@Override
	public PictVO fine_member_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.fine_member_info(pictVO);
	}

	@Override
	public PictVO member_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.member_info(pictVO);
	}

	@Override
	public void mypage_mod(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.mypage_mod(pictVO);
	}

	@Override
	public List<PictVO> first_password(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.first_password(pictVO);
	}

	@Override
	public void first_password_cng(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.first_password_cng(pictVO);
	}

	@Override
	public List<PictVO> login_troop_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.login_troop_list(pictVO);
	}

	@Override
	public List<PictVO> login_troop_list2(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.login_troop_list2(pictVO);
	}

	@Override
	public List<PictVO> life_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.life_list(pictVO);
	}

	@Override
	public Integer life_list_cnt(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.life_list_cnt(pictVO);
	}

	@Override
	public List<PictVO> scout_stats_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.scout_stats_list(pictVO);
	}

	@Override
	public List<PictVO> leader_stats_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.leader_stats_list(pictVO);
	}

	@Override
	public List<PictVO> stats_scout_page(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.stats_scout_page(pictVO);
	}

	@Override
	public List<PictVO> stats_organ_page(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.stats_organ_page(pictVO);
	}

	@Override
	public List<PictVO> stats_leader_page(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.stats_leader_page(pictVO);
	}

	@Override
	public List<PictVO> stats_rate_page(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.stats_rate_page(pictVO);
	}

	@Override
	public List<PictVO> stats_continue_page(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.stats_continue_page(pictVO);
	}

	@Override
	public PictVO life_info_scout(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.life_info_scout(pictVO);
	}

	@Override
	public PictVO life_info_leader(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.life_info_leader(pictVO);
	}

	@Override
	public PictVO life_sub_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.life_sub_info(pictVO);
	}

	@Override
	public List<PictVO> current_leader_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.current_leader_list(pictVO);
	}

	@Override
	public List<PictVO> current_scout_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.current_scout_list(pictVO);
	}

	@Override
	public List<PictVO> leader_organ_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.leader_organ_list(pictVO);
	}

	@Override
	public List<PictVO> scout_organ_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.scout_organ_list(pictVO);
	}

	@Override
	public void register_delete_leader(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.register_delete_leader(pictVO);
	}

	@Override
	public void register_delete_scout(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.register_delete_scout(pictVO);
	}

	@Override
	public List<PictVO> leader_register_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.leader_register_list(pictVO);
	}

	@Override
	public List<PictVO> scout_register_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.scout_register_list(pictVO);
	}

	@Override
	public void current_leader_list_confirm(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.current_leader_list_confirm(pictVO);
	}

	@Override
	public void current_scout_list_confirm(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.current_scout_list_confirm(pictVO);
	}

	@Override
	public void leader_individual_confirm(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.leader_individual_confirm(pictVO);
	}

	@Override
	public void scout_individual_confirm(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.scout_individual_confirm(pictVO);
	}

	@Override
	public List<PictVO> mig_data_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.mig_data_list(pictVO);
	}

	@Override
	public List<PictVO> stats_detail_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.stats_detail_list(pictVO);
	}

	@Override
	public PictVO life_max_info(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.life_max_info(pictVO);
	}



	
}
