class JobModel {
  String jobTitle;
  String jobSubTitle;
  String jobSalary;
  String jobLocation;
  String jobExperience;
  String date;
  JobModel({
    required this.jobTitle,
    required this.jobSubTitle,
    required this.jobSalary,
    required this.jobLocation,
    required this.jobExperience,
    required this.date,
  });
}

List<JobModel> jobDatas = [
  JobModel(
      jobTitle: 'Product Designer',
      jobSubTitle: 'Smart technology Private limited',
      jobSalary: '80k-90k',
      jobLocation: 'Bangalore',
      jobExperience: '3',
      date: '2'),
      JobModel(
      jobTitle: 'Senior Marketing and Communications Manager',
      jobSubTitle: 'Smart technology Private limited',
      jobSalary: '80k-90k',
      jobLocation: 'kochi',
      jobExperience: '3',
      date: '2'),
      JobModel(
      jobTitle: 'Flutter Developer',
      jobSubTitle: 'Smart technology Private limited',
      jobSalary: '80k-90k',
      jobLocation: 'Bangalore',
      jobExperience: '3',
      date: '2')
];
