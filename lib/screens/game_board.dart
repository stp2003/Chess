import 'package:chess/components/pieces.dart';
import 'package:chess/components/square.dart';
import 'package:chess/utils/helper_function.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  //?? pieces ->
  ChessPiece myPawn = ChessPiece(
    type: ChessPieceType.pawn,
    isWhite: true,
    imagePath: 'assets/pawn.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8 * 8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: (context, index) {
          return Square(
            isWhite: isWhite(index),
            piece: myPawn,
          );
        },
      ),
    );
  }
}
