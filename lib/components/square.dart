import 'package:chess/components/pieces.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;

  const Square({
    Key? key,
    required this.isWhite,
    required this.piece,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isWhite ? Colors.grey[300] : Colors.grey[600],
      child: piece != null
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                piece!.imagePath,
                color: piece!.isWhite ? Colors.white : Colors.black,
              ),
            )
          : null,
    );
  }
}
