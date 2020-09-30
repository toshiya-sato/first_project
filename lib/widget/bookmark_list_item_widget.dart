import 'package:first_project/model/bookmark.dart';
import 'package:first_project/page/add_bookmark_page.dart';
import 'package:first_project/page/view_bookmark_page.dart';
import 'package:first_project/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarkListItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()=> navigateToViewBookmarkPage(this.bookmark, context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.bookmark.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 6,
            ),
            Text(this.bookmark.link,
                style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}
