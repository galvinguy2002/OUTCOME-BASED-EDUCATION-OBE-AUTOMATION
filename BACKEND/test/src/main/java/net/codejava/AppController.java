package net.codejava;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


@Controller

public class AppController {
	

	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private StudentDetailsRepository studentDetailsRepository;
	
	@GetMapping("")
	public String viewHomePage() {
		return "index";
	}
	
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("user", new User());
		
		return "signup_form";
	}
	
	@PostMapping("/process_register")
	public String processRegister(@RequestBody User user) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);

		userRepo.save(user);

		return "register_success";
	}
	
	@GetMapping("/users")
	public String listUsers(Model model) {
		List<User> listUsers = userRepo.findAll();
		model.addAttribute("listUsers", listUsers);
		
		return "users";
	}
	
	@PostMapping("/saveStudentDetails")
	public String saveStudentDetails(@RequestBody StudentDetails studentDetails) {

		double total = (studentDetails.getCQ1() + studentDetails.getCQ2() + studentDetails.getCQ3()
				+ studentDetails.getCQ4());
		studentDetails.setTotal(total);
		double co1 = (studentDetails.getCQ1() / StudentMarks.fullMarks[0]) * 100;
		double co2 = (studentDetails.getCQ2() / StudentMarks.fullMarks[1]) * 100;
		double co3 = (studentDetails.getCQ3() / StudentMarks.fullMarks[2]) * 100;
		double co4 = (studentDetails.getCQ4() / StudentMarks.fullMarks[3]) * 100;

		studentDetails.setCO1(co1);
		studentDetails.setCO2(co2);
		studentDetails.setCO3(co3);
		studentDetails.setCO4(co4);

		studentDetailsRepository.save(studentDetails);

		return "index";
	}
	
	
	
	@GetMapping("/generateStudentExcel")
	public String generateStudentExcel() throws IOException {

		XSSFWorkbook workbook = new XSSFWorkbook();

		XSSFSheet spreadsheet = workbook.createSheet("Student Data");

		XSSFRow row;

		Map<Integer, Object[]> studentData = new TreeMap<Integer, Object[]>();

		studentData.put(1, new Object[] { "JAYPEE INSTITUTE OF INFORMATION TECHNOLOGY" });
		studentData.put(2, new Object[] { "ACADEMIC YEAR 2022-23" });
		studentData.put(3, new Object[] { "Semester/Branch", "", "", "", "Examination T1/T2/T3" });
		studentData.put(4, new Object[] { "Course Name And Code", "", "", "", "Date of Examination" });
		studentData.put(5, new Object[] { "", "", "COURSE OUTCOME", "", "", "", "", "", "", "ATTAINMENT %", "", "" });

		studentData.put(6, new Object[] { "SR NO.", "ROLL NO", "STUDENT NAME", "CO1", "CO2", "CO3", "CO4", "TOTAL",
				"CQ1", "CQ2", "CQ3", "CQ4" });

		List<StudentDetails> stdList = studentDetailsRepository.findAll();
		Integer rowCount = 6;

		for (StudentDetails std : stdList) {
			rowCount++;
			studentData.put(rowCount,
					new Object[] { std.getId(), std.getRollNo(), std.getStudentName(), std.getCO1(), std.getCO2(),
							std.getCO3(), std.getCO4(), std.getTotal(), std.getCQ1(), std.getCQ2(), std.getCQ3(),
							std.getCQ4() });
		}

		Set<Integer> keyid = studentData.keySet();
		List<Integer> list = new ArrayList<Integer>(keyid);
		Collections.sort(list);

		int rowid = 0;

		// writing the data into the sheets...

		for (Integer key : list) {

			row = spreadsheet.createRow(rowid++);
			Object[] objectArr = studentData.get(key);
			int cellid = 0;

			for (Object obj : objectArr) {
				Cell cell = row.createCell(cellid++);
				cell.setCellValue(obj.toString());
			}
		}

		// .xlsx is the format for Excel Sheets...
		// writing the workbook into the file...
		FileOutputStream out = new FileOutputStream(new File("C:/savedexcel/StudentDetails10.xlsx"));

		workbook.write(out);
		out.close();

		return "index";
	}
	
	
}
