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
public interface AdminService {

	
	void insert_user(AdminVO adminVO) throws Exception;

	List<?> user_list(AdminVO adminVO) throws Exception;

	void user_reset(PictVO pictVO) throws Exception;

	void insert_login_info(AdminVO adminVO) throws Exception;

	void insert_meta(AdminVO adminVO)throws Exception;

	void dafault_template(PictVO pictVO)throws Exception;

	AdminVO user_select_one(AdminVO adminVO) throws Exception;

	void update_user(AdminVO adminVO)throws Exception;

	void user_delete(AdminVO adminVO) throws Exception;

	PictVO get_user_info(PictVO pictVO) throws Exception;

	void admin_password(PictVO pictVO) throws Exception;

	PictVO sub_admin_info(PictVO pictVO) throws Exception;

	PictVO get_user_info_web(PictVO pictVO) throws Exception;
	
}
