import 'package:flutter/material.dart';
import 'package:venta/Constant/InputElement.dart';

class Searchscreenheader extends StatefulWidget {
  final void Function(bool) onTagBoolChanged;

  Searchscreenheader({super.key, required this.onTagBoolChanged});

  @override
  State<Searchscreenheader> createState() => _SearchscreenheaderState();
}

class _SearchscreenheaderState extends State<Searchscreenheader> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                height: 44,
                child: Inputelement(
                  onChanged: (p0) {
                    setState(() {
                      if (p0 == ''){
                      widget.onTagBoolChanged(false);
                    }else{
                      widget.onTagBoolChanged(true);
                      //search result cixacaq
                    }
                    });
                    
                  },
                  border_radius: 10,
                  label_color: Color.fromRGBO(102, 102, 102, 1),
                  border_color: Color.fromRGBO(45, 45, 45, 1),
                  label: "Araşdır və kəşf et",
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.search, size: 20)),
                  controller: _textController,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/Asset/filter.png"))),
            ),
          ),
        ],
      ),
    );
  }
}
