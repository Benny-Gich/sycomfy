import 'package:flutter/material.dart';
import 'package:sycomfy/common/entities/item.dart';
import 'package:sycomfy/features/app/presentation/widget/item_image.dart';

class ItemTile extends StatelessWidget {
  final Item cartItem;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ItemTile({
    super.key,
    required this.cartItem,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemImage(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.itemTitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    cartItem.itemSubTitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        cartItem.itemPrice,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (cartItem.originalPrice != null) ...[
                        const SizedBox(width: 8),
                        Text(
                          cartItem.originalPrice!,
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Minus button
                          IconButton(
                            onPressed: onDecrement,
                            icon: const Icon(Icons.remove, size: 20),
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              '${cartItem.itemQuantity}', // automatic conversion
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          IconButton(
                            onPressed: onIncrement,
                            icon: const Icon(Icons.add, size: 20),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            visualDensity: VisualDensity.compact,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ],
          ),

          // Price row
          const SizedBox(height: 4),

          // Quantity selector with plus and minus
        ],
      ),
    );
  }
}
