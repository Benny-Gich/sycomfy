import 'package:equatable/equatable.dart' show Equatable;

class Item extends Equatable {
  final String itemTitle;
  final String itemSubTitle;
  final String itemPrice;
  final String? originalPrice;
  final int? itemQuantity;

  const Item({
    required this.itemTitle,
    required this.itemSubTitle,
    required this.itemPrice,
    this.itemQuantity,
    this.originalPrice,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
