package com.secretgarden.project;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@WebAppConfiguration
public class MockMvcTest {
	// Logger생성
	private static final Logger logger = LoggerFactory.getLogger(MockMvcTest.class);

	@Autowired
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	// org.junit
	@Before
	public void setup() {

		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	@Test
	public void test() throws Exception {

		String resultPage = mockMvc
							.perform(MockMvcRequestBuilders.get("/sample/ex04")
							.param("superName","유지수")
							.param("age", "61")
							.param("page", "9")).andReturn().getModelAndView().getViewName();
		
		// page보이게 
		logger.info(resultPage);
	}
	
	
}
