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
	public List<?> test_service(PictVO pictVO) throws Exception {
		System.out.println("임플까지 타나?");
		return pictMapper.test_service(pictVO);
	}

	@Override
	public List<?> board_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.board_list(pictVO);
	}

	@Override
	public PictVO board_list_one(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.board_list_one(pictVO);
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
	public void board_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.board_delete(pictVO);
	}

	@Override
	public List<PictVO> news_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.news_list(pictVO);
	}

	@Override
	public PictVO news_list_one(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.news_list_one(pictVO);
	}

	@Override
	public void news_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.news_update(pictVO);
	}

	@Override
	public void news_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.news_insert(pictVO);
	}

	@Override
	public void news_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.news_delete(pictVO);
	}

	@Override
	public List<PictVO> video_list(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.video_list(pictVO);
	}

	@Override
	public PictVO video_list_one(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		return pictMapper.video_list_one(pictVO);
	}

	@Override
	public void video_update(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.video_update(pictVO);
	}

	@Override
	public void video_insert(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.video_insert(pictVO);
	}

	@Override
	public void video_delete(PictVO pictVO) throws Exception {
		// TODO Auto-generated method stub
		pictMapper.video_delete(pictVO);
	}

	
	
}
