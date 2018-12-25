package com.haohao.project.test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.haohao.project.bean.Book;
import com.haohao.project.dao.BookMapper;
import com.haohao.project.dao.BookTypeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class MapperTest {

	@Autowired
	BookMapper bookMapper;

	@Autowired
	BookTypeMapper bookTypeMapper;

	@Autowired
	SqlSession sqlSession;

	@Test
	public void testCRUD() {
		// bookTypeMapper.insertSelective(new BookType(null, "自然科学类"));
		// bookMapper.insertSelective(new Book(null, "新视野英语", 30, 10, 1));
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		for (int i = 0; i < 8; i++) {
			String bookname = "世界文化遗产与旅游" + (i + 1);
			mapper.insertSelective(new Book(null, bookname, 21, 20, 3));
		}
	}

}
