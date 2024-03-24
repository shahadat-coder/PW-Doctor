class FavDoctorModel {
  String? name;
  String? section;
  String? hospital;
  final String UrlImage;

  FavDoctorModel({required this.name,required this.UrlImage,required this.section,required this.hospital});
}

final List<FavDoctorModel> favDoctor = [
  FavDoctorModel(
      name: "Dr. Travis Westaby",
      section: 'Cardiologists',
      hospital: 'Alka Hospital',
      UrlImage:
      "https://media.istockphoto.com/id/1470505351/photo/portrait-of-a-smiling-doctor-holding-glasses-and-a-mobile-phone-at-the-office.webp?b=1&s=170667a&w=0&k=20&c=8CebFLF4PFnt9JYJznGhYoOQxcyHLVpTGVfkvEsZd2Q="),
  FavDoctorModel(
      name: "Dr. Nathaniel Valle",
      section: 'Cardiologists',
      hospital: 'B&B Hospital',
      UrlImage:
      "https://www.shutterstock.com/image-photo/medical-concept-indian-beautiful-female-600nw-1635029716.jpg"),
  FavDoctorModel(
      name: " Dr. Beckett Calger",
      section: 'Cardiologists',
      hospital: 'Venus Hospital',
      UrlImage:
      "https://media.istockphoto.com/id/1267013330/photo/portrait-of-a-confident-young-female-doctor-at-work.jpg?s=612x612&w=0&k=20&c=_E-ImNGq8ZRzCq3QcKxDjXtk3OWPOvMqzddjGzlad9U="),
  FavDoctorModel(
      name: "Dr. Jada Srnsky",
      section: 'Cardiologists',
      hospital: 'Bir Hospital',
      UrlImage:
      "https://media.istockphoto.com/id/1473337705/photo/cheerful-female-doctor-in-white-uniform-holding-clipboard-stock-photo.jpg?s=612x612&w=0&k=20&c=VV0Jw6ipf7sNaTMdwlFtlAGqgU1OFBWe1IaxCsaGtBo="),
  FavDoctorModel(
      name: "Dr. Bernard Bliss",
      section: 'Cardiologists',
      hospital: 'The Valley Hospital',
      UrlImage:
      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*"),

];