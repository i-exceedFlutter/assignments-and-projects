void main() 
{
  var employeeData = getEmployeeData();
  print('Type: ${employeeData.runtimeType}');

  print('Name       : ${employeeData.$1}');
  print('Department : ${employeeData.$2}');
  print('Company    : ${employeeData.$3}');
  print('Experience : ${employeeData.yearsOfExperience} years');


  var education = getEducationDetails();

  print('\n Education Details');
  print('UG Degree  : ${education.$1}');
  print('PG Degree  : ${education.$2}');
  print('Doctorate  : ${education.$3}');
  print('CGPA       : ${education.cgpa}');


  var project = getCurrentProject();
  print('\n Project Details');
  print('Project Name : ${project.projectName}');
  print('Team Size    : ${project.teamSize}');
  print('Duration     : ${project.duration} months');
}

(String, String, String, {int yearsOfExperience}) getEmployeeData() 
{
  return ('Syamkarthikeya', 'Appzillon', 'i-exceed', yearsOfExperience: 10);
}

(String, String, String, {double cgpa}) getEducationDetails() 
{
  return ('BTech', 'MTech', 'Ph.D', cgpa: 8.2);
}

({String projectName, int teamSize, int duration}) getCurrentProject() 
{
  return (projectName: 'Digital Banking', teamSize: 8, duration: 12);
}
