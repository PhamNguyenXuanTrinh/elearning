import 'package:flutter/material.dart';

class ItemsNotificationWidget extends StatefulWidget {
  final String content;
  final String time;
  final String imageUrl;

  const ItemsNotificationWidget(
      {super.key,
      required this.content,
      required this.time,
      required this.imageUrl});

  @override
  State<ItemsNotificationWidget> createState() =>
      ItemsNotificationWidgetState();
}

class ItemsNotificationWidgetState extends State<ItemsNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(6),
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).cardColor.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  leading: Image.asset(widget.imageUrl),
                  title: Text(
                    widget.content,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        size: 12,
                        color: Theme.of(context).cardColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        widget.time,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).cardColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
