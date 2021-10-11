import 'package:flutter/material.dart';
import 'package:selection_wave_slider/selection_wave_slider.dart';


class WaveSlider extends StatefulWidget {
  final double width;
  final double height;
 /* final Color color;
  final ValueChanged<double> onChanged;
  final ValueChanged<double> onChangeStart;
  final ValueChanged<double> onChangeEnd;*/

  const WaveSlider({
    this.height = 80.0,
    this.width = 350.0
  }) ;

  num? get sliderWidth => null;

  @override
  _WaveSliderState createState() => _WaveSliderState();
}

class _WaveSliderState extends State<WaveSlider> {
  double dragPosition =0;
  double dragPersentege = 0;

  late double newDragPosition;


  void updateDragPosition(Offset val) {
    if (val.dx <= 0) {
      var newDragPosition = 0;
    } else if (val.dx >= widget.width) {
      var newDragPosition = widget.width;
    } else {
      var newDragPosition = val.dx;
    }
    setState(() {
      dragPosition = newDragPosition;
      dragPersentege = dragPosition / widget.width;
    });
  }

  void _onDragUpdate(BuildContext context, DragUpdateDetails update) {
    RenderBox? box = context.findRenderObject() as RenderBox?;
    Offset offset = box!.globalToLocal(update.globalPosition);
    updateDragPosition(offset);
  }
  void _onDragStart(BuildContext context, DragStartDetails start){
    RenderBox? box = context.findRenderObject() as RenderBox?;
    Offset offset =box!.globalToLocal(start.globalPosition);
  }
  void _onDragEnd(BuildContext context, DragStartDetails end){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Container(
          width: widget.width,
          height: widget.height,
          color: Colors.yellow,
          child: Column(
            children: <Widget> [
              Text(dragPosition.toString()),
              Text(dragPersentege.toString()),
            ],
          ),
        ),
        onHorizontalDragUpdate: (DragUpdateDetails update) => _onDragUpdate(context, update),
        onHorizontalDragStart: (DragStartDetails start) => _onDragStart(context, start),
        onHorizontalDragEnd: (DragEndDetails end) => onDragEnd( context, end)

      ),
    );
  }

  onDragEnd(BuildContext context, DragEndDetails end) {}
}

/*class _onDragEnd {
}

class _onDragStart {*/
//}
/*child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WaveSliderWithDragPoint(
            *//*  dragButton: Container(
                color: Colors.blue,
              ),
              sliderHeight: 80,
              sliderPointColor: Colors.blue,
              sliderPointBorderColor: Colors.orange,
              sliderColor: Colors.red,
              toolTipBackgroundColor: Colors.yellow,
              toolTipBorderColor: Colors.green,
              toolTipTextStyle: TextStyle(
                color: Colors.green,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),*//*
            onSelected: (value) {
              print(value);
            },
            optionToChoose: [
              "Underweight",
              "Balanced",
              "Overweight",
            ],
          )
        ],
      ),*/