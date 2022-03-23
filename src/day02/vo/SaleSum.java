package day02.vo;

import java.sql.Date;

public class SaleSum {		//join 결과 컬럼만 저장할 vo클래스
	private int custNo;
	private String custName;
	private String grade;
	private int sum;
	
	public SaleSum() {
		
	}

	public SaleSum(int custNo, String custName, String grade, int sum) {
		super();
		this.custNo = custNo;
		this.custName = custName;
		this.grade = grade;
		this.sum = sum;
	}
	

	@Override
	public String toString() {
		return "SaleSum [custNo=" + custNo + ", custName=" + custName + ", grade=" + grade + ", sum=" + sum + "]";
	}

	public int getCustNo() {
		return custNo;
	}

	public void setCustNo(int custNo) {
		this.custNo = custNo;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
	
	
	
}