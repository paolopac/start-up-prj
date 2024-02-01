package com.faraday.webapp.repositoryTest;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation; 
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

 
@SpringBootTest
@ActiveProfiles({"struct1-junit-test"})
@TestMethodOrder(OrderAnnotation.class)
public class Nome_classe_ServiceTest {

  @Test
  @Order(1)
  void test1(){
    assertTrue(true);
  }
  
}
