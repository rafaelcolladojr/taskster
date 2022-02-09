import 'package:flutter/material.dart';
import 'package:taskster/util/attachment_type.dart';

import '../constants.dart';

class AttachmentCarouselItem extends StatelessWidget {
  const AttachmentCarouselItem({
    Key? key,
    required this.filename,
    required this.filesize,
    required this.filetype,
  }) : super(key: key);

  final String filename;
  final String filesize;
  final AttachmentType filetype;

  IconData getAttachmentTypeIcon() {
    switch (filetype) {
      case AttachmentType.image:
        return Icons.image;
      case AttachmentType.audio:
        return Icons.audiotrack;
      default:
        return Icons.file_present_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Constants.colors['primary'],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(40),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  getAttachmentTypeIcon(),
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filename,
                      style: Constants.kWhiteTextStyle,
                    ),
                    Text(
                      filesize,
                      style: TextStyle(
                        color: Colors.white.withAlpha(140),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
