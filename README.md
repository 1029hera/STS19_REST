# STS19_REST

### 프로젝트에 사용된 기술소개 
 * 목록, 작성, 작성확인, 수정, 수정 확인, 보기, 삭제를 할 수 있는 cycle을 만들었습니다.
 * ERMaster로 표를 만들고, .sql 을 만들어서 cycle 에 필요한 data를 갖고 있습니다.
 * lib (dependencies-> pm.xml에 저장)
    - ojdbc6
    - spring-jdbc
    - MyBatis
    - lombok
    - jackson-databind
 * RestController, Service, MyBatis를 annotation을 사용하여 이용
  
### 프로젝트 셋업에 관한 절차
 * server: tomcate v9.0 사용
    - Use Tomcat installation
    - Publish module contexts to seperate XML files
 * 3가지 perspective (spring, DBeaver, Git)
 * windows의 preferences 에서 설정
    - General (workspace), XML files 에서 encoding (UTF-8)로 설정
 * Database 에서 Driver Manager
    - Oracle edit -> libraries에는 ojdbc6.jar 만 넣기
 * 새로운 spring legacy project 생성
    - New connection database 연결
 * pom.xml
    - java-version: 1.8
		- org.springframework-version: 5.2.1.RELEASE
 * web.xml
    - filter (encoding)
 *servler-context.xml
    - bean 생성: 
        - dataSource, class: org.springframework.jdbc.datasource.DriverManagerDataSource
        - sqlSession
        - transactionManager
        - transactionTemplate
