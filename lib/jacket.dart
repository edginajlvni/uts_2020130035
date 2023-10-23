class Jacket {
  final int id;
  final String name;
  final String price;
  final String imageUrl;

  Jacket({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

final List<Jacket> listJacket = [
  Jacket(
    id: 1,
    name: 'Jaket Boomber',
    price: 'Rp. 100.000',
    imageUrl: 'assets/images/1.png',
  ),
  Jacket(
    id: 2,
    name: 'Cardigan Butterfly',
    price: '99.000',
    imageUrl: 'assets/images/2.png',
  ),
  Jacket(
    id: 3,
    name: 'Jaket Bulu-Bulu',
    price: '120.000',
    imageUrl: 'assets/images/3.png',
  ),
  Jacket(
    id: 4,
    name: 'Jaket Jeans',
    price: '110.000',
    imageUrl: 'assets/images/4.png',
  ),
  Jacket(
    id: 5,
    name: 'Jaket Varsity Hijau',
    price: '90.000',
    imageUrl: 'assets/images/5.png',
  ),
  Jacket(
    id: 6,
    name: 'Hoodie',
    price: '190.000',
    imageUrl: 'assets/images/6.png',
  ),
];
