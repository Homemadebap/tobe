package kr.co.tobe.config;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.zaxxer.hikari.HikariDataSource;

import kr.co.tobe.util.LoginInterceptor;
import kr.co.tobe.util.LoginInterceptor_admin;

@Configuration
@ComponentScan(basePackages = {"kr.co.tobe"})
@EnableWebMvc
@MapperScan(basePackages = {"kr.co.tobe"}, annotationClass = Mapper.class) // 인터페이스 스캔
@EnableTransactionManagement
public class MvcConfig implements WebMvcConfigurer{
	// DB접속정보
	@Value("${db.driver}")
	private String driver;
	@Value("${db.url}")
	private String url;
	@Value("${db.username}")
	private String username;
	@Value("${db.userpassword}")
	private String userpassword;
	
	
	// html,css,js,img.... 컨트롤러에서 매핑되지 않은 URL을 톰캣에서 처리하기 위해
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	// ViewResolver설정 (JSP 경로)
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	// 정적페이지 설정
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/event/index.do");
	}
	
	// HikariCP
	@Bean(destroyMethod = "close")
	public HikariDataSource dataSource() {
		HikariDataSource dataSource = new HikariDataSource();
//		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//		dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/test");
		dataSource.setDriverClassName(driver);
		dataSource.setJdbcUrl(url);
		
		dataSource.setUsername(username);
		dataSource.setPassword(userpassword);
		return dataSource;
	}
	// Mybatis
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean ssf = new SqlSessionFactoryBean();
		ssf.setDataSource(dataSource()); // DataSource 객체 주입
		// sql(xml파일) 위치
//		PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
//		ssf.setMapperLocations(resolver.getResources("classpath:/mapper/**/*.xml"));
		return ssf.getObject();
	}
	// DAO에서 주입받을 객체(빈) 등록
//	@Bean
//	public SqlSessionTemplate sqlSessionTemplate() throws Exception {
//		return new SqlSessionTemplate(sqlSessionFactory());
//	}
	
	// 트랜잭션 설정
	@Bean
	public PlatformTransactionManager transactionManager() {
		DataSourceTransactionManager dtm = new DataSourceTransactionManager();
		dtm.setDataSource(dataSource());
		return dtm;
	}
	// 파일업로드
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setMaxUploadSize(1024*1024*5);
		resolver.setDefaultEncoding("utf-8");
		return resolver;
	}
	
	// user 인터셉터
	@Bean
	public LoginInterceptor loginIntercepton() {
		return new LoginInterceptor();
	}
	
	// 관리자 인터셉터
	@Bean
	public LoginInterceptor_admin loginIntercepton_admin() {
		return new LoginInterceptor_admin();
	}	
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// url 설정
		registry.addInterceptor(loginIntercepton())
						.addPathPatterns("/user/member/**")
						.excludePathPatterns("/user/member/userLogin.do")
						.excludePathPatterns("/user/member/userJoinForm.do")
						.excludePathPatterns("/user/member/userFindMember.do")
						.excludePathPatterns("/user/member/userFindPwdNext.do")
						.excludePathPatterns("/user/member/userJoinPolicy.do")
						.addPathPatterns("/user/common/userBasket.do")
						.addPathPatterns("/user/common/userBasketDelete.do")
						.addPathPatterns("/user/course/qna/insert.do")
						.addPathPatterns("/user/course/qna/edit.do")
						.addPathPatterns("/user/course/qna/update.do")
						.addPathPatterns("/user/course/qna/delete.do")
						.addPathPatterns("/user/customer/qna/update.do")
						.addPathPatterns("/user/customer/qna/delete.do")
						.addPathPatterns("/user/customer/qna/insert.do")
						.addPathPatterns("/user/course/qna/delete.do")
						.addPathPatterns("/user/pay/**")
						.addPathPatterns("/user/review/write.do")
						.addPathPatterns("/user/review/insert.do");
		
		registry.addInterceptor(loginIntercepton_admin())
						.addPathPatterns("/admin/**")
						.addPathPatterns("/chiefAdmin/**")
						.excludePathPatterns("/admin/common/adLogin.do");
						
	}
			
						
	// 프로퍼티 설정
	@Bean
	public static PropertySourcesPlaceholderConfigurer property() {
		PropertySourcesPlaceholderConfigurer property = new PropertySourcesPlaceholderConfigurer();
		property.setLocations(new ClassPathResource("db.properties"));
		return property;
	}
	
}







