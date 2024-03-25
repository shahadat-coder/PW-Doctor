class TopDoctorModel {
  String? name;
  String? section;
  String? hospital;
  final String UrlImage;

  TopDoctorModel({required this.name,required this.UrlImage,required this.section,required this.hospital});
}

final List<TopDoctorModel> topDoctor = [
  TopDoctorModel(
      name: "Dr. Randy Wighum",
      section: 'Cardiologists',
      hospital: 'The Valley Hospital',
      UrlImage:
      "https://cdn.punchng.com/wp-content/uploads/2023/09/20144750/Umoh-Michael-e1695217670244.jpeg"),
  TopDoctorModel(
      name: "Dr. Jenny Watson",
      section: 'Immunologists',
      hospital: 'Christ Hospital',
      UrlImage:
      "https://t3.ftcdn.net/jpg/05/04/25/70/360_F_504257032_jBtwqNdvdMN9Xm6aDT0hcvtxDXPZErrn.jpg"),
  TopDoctorModel(
      name: " Dr. Raul Zirkind",
      section: 'Neurologists',
      hospital: 'Franklin Hospital',
      UrlImage:
      "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),
  TopDoctorModel(
      name: "Dr. Elijah Baranick",
      section: 'Allergists',
      hospital: 'JFK Medical Center',
      UrlImage:
          "https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg"),
  TopDoctorModel(
      name: "Dr. Stephen Shute",
      section: 'Cardiologists',
      hospital: 'The Valley Hospital',
      UrlImage:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6AY5Y0O2k3mX8YOaeBz-8WWDa3Muq95rW-PtIvOubaT9Poeo90jQS9uBLycn3vlbXqow&usqp=CAU"),
  TopDoctorModel(
      name: "Dr. Bernard Bliss",
      section: 'Cardiologists',
      hospital: 'The Valley Hospital',
      UrlImage:
      "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"),


];