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

import pict.mapper.AdminMapper;
import pict.service.AdminService;
import pict.service.AdminVO;
import pict.service.PictVO;

@Service
public class AdminServiceImple implements AdminService {

	@Autowired
    AdminMapper adminMapper;
	
	@Override
	public AdminVO get_user_info(AdminVO adminVO) throws Exception {
		return adminMapper.get_user_info(adminVO);
	}
	
	@Override
	public void insert_user(AdminVO adminVO) throws Exception {
		adminMapper.insert_user(adminVO);
		
	}

	@Override
	public List<AdminVO> user_list(AdminVO adminVO) throws Exception {
		return adminMapper.user_list(adminVO);
	}

	@Override
	public void user_reset(AdminVO adminVO) throws Exception {
		adminMapper.user_reset(adminVO);
		
	}
	@Override
	public void insert_login_info(AdminVO adminVO) throws Exception {
		adminMapper.insert_login_info(adminVO);
		
	}

	@Override
	public void insert_meta(AdminVO adminVO) throws Exception {
		adminMapper.insert_meta(adminVO);
		
	}

	@Override
	public void dafault_template(PictVO pictVO) throws Exception {
		adminMapper.dafault_template(pictVO);
	}

	@Override
	public AdminVO user_select_one(AdminVO adminVO) throws Exception {
		return adminMapper.user_select_one(adminVO);
	}

	@Override
	public void update_user(AdminVO adminVO) throws Exception {
		adminMapper.update_user(adminVO);
		
	}

	@Override
	public void user_delete(AdminVO adminVO) throws Exception {
		adminMapper.user_delete(adminVO);
	}
	
	
	
	
}
