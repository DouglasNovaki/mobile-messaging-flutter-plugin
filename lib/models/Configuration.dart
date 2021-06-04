
class Configuration {
  /// The application code of your Application from Push Portal website
  final String applicationCode;

  String? pluginVersion;

  final AndroidSettings? androidSettings;

  final IOSSettings? iosSettings;

  final PrivacySettings? privacySettings;

  final List<NotificationCategory>? notificationCategories;

  Configuration({
    required this.applicationCode,
    this.pluginVersion,
    this.androidSettings,
    this.iosSettings,
    this.privacySettings,
    this.notificationCategories
  });

  Map<String, dynamic> toJson() {
    return {
      'applicationCode': applicationCode,
      'pluginVersion': pluginVersion,
      'androidSettings': (this.androidSettings !=null)? this.androidSettings!.toJson() : null,
      'iosSettings': (this.iosSettings !=null)? this.iosSettings!.toJson(): null,
      'privacySettings': (this.privacySettings !=null)? this.privacySettings!.toJson() : null,
      'notificationCategories': (this.notificationCategories !=null)? this.notificationCategories!.map((e) => e.toJson()) : null
    };
  }
}

class AndroidSettings {
  /// The application code of your Application from Push Portal website
  final String? firebaseSenderId;

  // A resource name for a status bar icon (without extension), located in '/platforms/android/app/src/main/res/mipmap'
  final String? notificationIcon;
  final bool? multipleNotifications;
  final String? notificationAccentColor;

  AndroidSettings({this.firebaseSenderId, this.notificationIcon,
    this.multipleNotifications, this.notificationAccentColor});

  Map<String, dynamic> toJson() =>
      {
        'firebaseSenderId': firebaseSenderId,
        'notificationIcon': notificationIcon,
        'multipleNotifications': multipleNotifications,
        'notificationAccentColor': notificationAccentColor
      };
}

class IOSSettings {
  final List<String>? notificationTypes;
  final bool? forceCleanup;
  final bool? logging;

  IOSSettings({this.notificationTypes, this.forceCleanup, this.logging});

  Map<String, dynamic> toJson() =>
      {
        'notificationTypes': notificationTypes,
        'forceCleanup': forceCleanup,
        'logging': logging
      };
}

class PrivacySettings {
  final bool? applicationCodePersistingDisabled;
  final bool? userDataPersistingDisabled;
  final bool? carrierInfoSendingDisabled;
  final bool? systemInfoSendingDisabled;

  PrivacySettings(this.applicationCodePersistingDisabled,
      this.userDataPersistingDisabled,
      this.carrierInfoSendingDisabled,
      this.systemInfoSendingDisabled);

  Map<String, dynamic> toJson() =>
      {
        'applicationCodePersistingDisabled': applicationCodePersistingDisabled,
        'userDataPersistingDisabled': userDataPersistingDisabled,
        'carrierInfoSendingDisabled': carrierInfoSendingDisabled,
        'systemInfoSendingDisabled': systemInfoSendingDisabled
      };
}

class NotificationAction {
  final String? identifier;
  final String? title;
  final bool? foreground;
  final bool? authenticationRequired;
  final bool? moRequired;
  final bool? destructive;
  final String? icon;
  final String? textInputActionButtonTitle;
  final String? textInputPlaceholder;

  NotificationAction(this.identifier,
      this.title,
      this.foreground,
      this.authenticationRequired,
      this.moRequired,
      this.destructive,
      this.icon,
      this.textInputActionButtonTitle,
      this.textInputPlaceholder);

  Map<String, dynamic> toJson() =>
      {
        'identifier': identifier,
        'title': title,
        'foreground': foreground,
        'authenticationRequired': authenticationRequired,
        'moRequired': moRequired,
        'destructive': destructive,
        'icon': icon,
        'textInputActionButtonTitle': textInputActionButtonTitle,
        'textInputPlaceholder': textInputPlaceholder,
      };

}

class NotificationCategory {
  final String? identifier;
  final List<NotificationAction>? actions;

  NotificationCategory(this.identifier, this.actions);

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>>? actions = this.actions!.map((i) => i.toJson()).toList();
    return {
      'identifier': identifier,
      'actions': actions
    };
  }


}