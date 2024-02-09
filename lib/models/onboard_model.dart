class OnboardModel {
  final String image, title, desc;

  OnboardModel({
    required this.image,
    required this.title,
    required this.desc,
  });
}

final List<OnboardModel> demo_data = [
  OnboardModel(
    image: 'assets/svgs/onboarding1.svg',
    title: 'Dapatkan\nKuliner Terbaik',
    desc: 'Jelajahi Tempat Makan Favorit Anda dan Reservasi Kursi dengan Mudah',
  ),
  OnboardModel(
    image: 'assets/svgs/onboarding2.svg',
    title: 'Nikmati Makanan\nPilihan Anda',
    desc:
        'Rasakan Kenikmatan Langsung, Pilih Tempat dan Reservasi Secara Instan',
  ),
  OnboardModel(
    image: 'assets/svgs/onboarding3.svg',
    title: 'Pesan Kursi Anda\ndi DineIn',
    desc: 'Pilih Kursi Favorit Anda dan Pastikan Tempat di Restoran Terbaik',
  ),
];
