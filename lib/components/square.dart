import 'package:chess/components/pieces.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  final bool isValidMove;
  final void Function()? onTap;

  const Square({
    Key? key,
    required this.isWhite,
    required this.piece,
    required this.isSelected,
    required this.onTap,
    required this.isValidMove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? squareColor;

    //?? if selected, then square is green ->
    if (isSelected) {
      squareColor = Colors.green;
    }
    else if(isValidMove) {
      squareColor = Colors.green[300];
    }
    else {
      squareColor = isWhite ? Colors.grey[400] : Colors.grey[600];
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: squareColor,
        child: piece != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  piece!.imagePath,
                  color: piece!.isWhite ? Colors.white : Colors.black,
                ),
              )
            : null,
      ),
    );
  }
}
