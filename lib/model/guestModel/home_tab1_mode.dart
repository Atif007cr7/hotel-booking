class HomeTabModel {
  int id;
  final List<String> images;
  final String location;
  final String description;
  final String prise;
  final String rating;
  final String propetyDescriptiom;

  HomeTabModel(
      {required this.id,
      required this.images,
      required this.location,
      required this.description,
      required this.prise,
      required this.rating,
      required this.propetyDescriptiom});
}

final List<HomeTabModel> dummyData = [
  HomeTabModel(
      images: [
        'assets/guestside/hotelimage/img1.jpeg',
        'assets/guestside/hotelimage/img3.jpg',
        'assets/guestside/hotelimage/img4.webp',
        'assets/guestside/hotelimage/img5.jpg',
      ],
      id: 1,
      location: 'Mumbai , Maharashtra',
      description: 'Amazing bedroom with pool',
      prise: '12,999/-',
      rating: '4.2',
      propetyDescriptiom:
          '2BHK with pool and amazing parking and other aminities'),
  HomeTabModel(
      images: [
        'assets/guestside/hotelimage/img8.jpg',
        'assets/guestside/hotelimage/img9.jpg',
        'assets/guestside/hotelimage/img10.jpg',
        'assets/guestside/hotelimage/img11.jpg',
      ],
      id: 2,
      location: 'Goa , Maharashtra',
      description: 'Beach view and garden',
      prise: '23,999/-',
      rating: '5.2',
      propetyDescriptiom:
          '2BHK with pool and amazing parking and other aminities'),
  HomeTabModel(
      images: [
        'assets/guestside/hotelimage/img4.webp',
        'assets/guestside/hotelimage/img5.jpg',
        'assets/guestside/hotelimage/img6.jpg',
        'assets/guestside/hotelimage/img7.jpg',
      ],
      id: 3,
      location: 'Lucknow , UttarPardesh',
      description: 'Famous tunde kababi',
      prise: '8,499/-',
      rating: '4',
      propetyDescriptiom:
          '2BHK with pool and amazing parking and other aminities'),
  HomeTabModel(
      images: [
        'assets/guestside/hotelimage/img1.jpeg',
        'assets/guestside/hotelimage/img3.jpg',
        'assets/guestside/hotelimage/img4.webp',
        'assets/guestside/hotelimage/img5.jpg',
        'assets/guestside/hotelimage/img6.jpg',
        'assets/guestside/hotelimage/img7.jpg',
        'assets/guestside/hotelimage/img8.jpg',
        'assets/guestside/hotelimage/img9.jpg',
        'assets/guestside/hotelimage/img10.jpg',
        'assets/guestside/hotelimage/img11.jpg'
      ],
      id: 4,
      location: 'Thane , Maharashtra',
      description: 'Budget Special',
      prise: '6000/-',
      rating: '4.2',
      propetyDescriptiom:
          '2BHK with pool and amazing parking and other aminities'),
  HomeTabModel(
      images: [
        'assets/guestside/hotelimage/img1.jpeg',
        'assets/guestside/hotelimage/img3.jpg',
        'assets/guestside/hotelimage/img4.webp',
        'assets/guestside/hotelimage/img5.jpg',
        'assets/guestside/hotelimage/img6.jpg',
        'assets/guestside/hotelimage/img7.jpg',
        'assets/guestside/hotelimage/img8.jpg',
        'assets/guestside/hotelimage/img9.jpg',
        'assets/guestside/hotelimage/img10.jpg',
        'assets/guestside/hotelimage/img11.jpg'
      ],
      id: 5,
      location: 'Mumbai , Maharashtra',
      description: 'Amazing bedroom with pool',
      prise: '12,999/-',
      rating: '4.2',
      propetyDescriptiom:
          '2BHK with pool and amazing parking and other aminities')
];
