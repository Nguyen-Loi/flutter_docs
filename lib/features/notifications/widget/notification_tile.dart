import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:appwrite_twitter/constants/constants.dart';
import 'package:appwrite_twitter/core/enums/notification_type_enum.dart';
import 'package:appwrite_twitter/models/notification_model.dart' as model;
import 'package:appwrite_twitter/theme/pallete.dart';

class NotificationTile extends StatelessWidget {
  final model.Notification notification;
  const NotificationTile({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: notification.notificationType == NotificationType.follow
          ? const Icon(
              Icons.person,
              color: Pallete.blueColor,
            )
          : notification.notificationType == NotificationType.like
              ? SvgPicture.asset(
                  AssetsConstants.likeFilledIcon,
                  height: 20,
                )
              : notification.notificationType == NotificationType.retweet
                  ? SvgPicture.asset(
                      AssetsConstants.retweetIcon,
                      height: 20,
                    )
                  : null,
      title: Text(notification.text),
    );
  }
}
