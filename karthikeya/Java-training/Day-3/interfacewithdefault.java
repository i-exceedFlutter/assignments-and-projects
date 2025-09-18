interface employeeData 
{
    String company = "I-Exceed"; // by default it will be static final variable,it cant be changed

    void employeeDetails();

    default void employeeInfo() 
	{
        System.out.println("Employee information in context of the company.");
    }
}

interface officeData 
{
    void officeDetails();

    default void employeeInfo() 
	{
        System.out.println("Employee information in context of the office.");
    }
}

abstract class CompanyInfo 
{
    public CompanyInfo() 
	{
        System.out.println("CompanyInfo constructor called");
    }

    abstract void companyPolicy();
}

class EmployeeRecord extends CompanyInfo implements employeeData, officeData 
{

    @Override
    public void companyPolicy() 
	{
        System.out.println("Company policy: Work from 9 to 5");
    }

    @Override
    public void employeeDetails()
	{
        System.out.println("Employee: Syam, ID: 4782");
    }

    @Override
    public void officeDetails() {
        System.out.println("Office: Floor 5, Desk 23");
    }

    @Override
    public void employeeInfo() 
	{
        System.out.println("employee info display:");
        employeeData.super.employeeInfo();
        officeData.super.employeeInfo();
    }
	
}

class interfacewithdefault 
{
    public static void main(String[] args) 
	{
        EmployeeRecord emp = new EmployeeRecord();
        emp.employeeInfo();
        emp.employeeDetails();
        emp.officeDetails();
        emp.companyPolicy();
    }
}
