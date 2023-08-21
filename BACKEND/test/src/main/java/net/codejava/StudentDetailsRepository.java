package net.codejava;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface StudentDetailsRepository extends JpaRepository<StudentDetails, Long> {
	

}
	

