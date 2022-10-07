import 'package:infobip_mobilemessaging/models/Configuration.dart';
import 'package:infobip_mobilemessaging/models/IOSChatSettings.dart';
import 'package:infobip_mobilemessaging/models/Installation.dart';
import 'package:infobip_mobilemessaging/models/Message.dart';
import 'package:infobip_mobilemessaging/models/PersonalizeContext.dart';
import 'package:infobip_mobilemessaging/models/UserData.dart';

Configuration get configurationModelExample => Configuration(
      applicationCode: 'abc',
      pluginVersion: "1.2.3",
      inAppChatEnabled: true,
      androidSettings: AndroidSettings(
          firebaseOptions: FirebaseOptions(
              apiKey: "Some-API-Key",
              applicationId: "1:1234567890:android:abc123",
              projectId: "project-123ab"),
          notificationIcon: 'icon.png',
          multipleNotifications: true,
          notificationAccentColor: "#ABCDEF"),
      iosSettings: IOSSettings(
          notificationTypes: ['sound'],
          forceCleanup: true,
          logging: true,
          webViewSettings: WebViewSettings(
              title: 'webViewTitle',
              barTintColor: '#012345',
              titleColor: '#135',
              tintColor: '#246')),
      privacySettings: PrivacySettings(
          applicationCodePersistingDisabled: true,
          userDataPersistingDisabled: true,
          carrierInfoSendingDisabled: true,
          systemInfoSendingDisabled: true),
      notificationCategories: [
        NotificationCategory(identifier: '123', actions: [
          NotificationAction(
              identifier: '123456',
              title: 'Action Title',
              foreground: true,
              authenticationRequired: true,
              moRequired: true,
              destructive: true,
              icon: 'icon-action.png',
              textInputActionButtonTitle: 'Button Title',
              textInputPlaceholder: 'Placeholder Title')
        ])
      ],
      defaultMessageStorage: true,
    );

Installation get installationModelExample => Installation(
      pushRegistrationId: 'someRegistrationId',
      pushServiceToken: 'pushServiceToken',
      pushServiceType: PushServiceType.GCM,
      isPrimaryDevice: true,
      isPushRegistrationEnabled: true,
      notificationsEnabled: true,
      geoEnabled: true,
      sdkVersion: 'someSdkVersion',
      appVersion: 'appVersion',
      os: OS.Android,
      osVersion: '12.0',
      deviceManufacturer: 'deviceManufacturer',
      deviceModel: 'deviceModel',
      deviceSecure: true,
      language: 'EN',
      deviceTimezoneOffset: '1234567',
      applicationUserId: '123',
      deviceName: 'deviceName',
      customAttributes: {
        'alList': [
          {
            'alDate': '2021-10-11',
            'alWhole': 2,
            'alString': 'someAnotherString',
            'alBoolean': true,
            'alDecimal': 0.66
          }
        ]
      },
    );

InstallationPrimary get installationPrimaryModelExample => InstallationPrimary(
      '123456',
      true,
    );

IOSChatSettings get iosChatSettingsModelExample => IOSChatSettings(
      title: 'title',
      sendButtonColor: 'green',
      navigationBarItemsColor: 'red',
      navigationBarColor: 'blue',
      navigationBarTitleColor: 'yellow',
    );

UserIdentity get userIdentityModelExample => UserIdentity(
      phones: [
        '123',
        '234',
      ],
      emails: [
        'test@gmail.com',
        'test2@gmail.com',
      ],
      externalUserId: '123456',
    );

PersonalizeContext get personalizeContextModelExample => PersonalizeContext(
      userIdentity: userIdentityModelExample,
      forceDepersonalize: true,
      userAttributes: {
        'alList': [
          {
            'alDate': '2021-10-11',
            'alWhole': 2,
            'alString': 'someAnotherString',
            'alBoolean': true,
            'alDecimal': 0.66
          }
        ]
      },
    );

UserData get userDataModelExample => UserData(
      externalUserId: 'randomUID123',
      firstName: 'First',
      lastName: 'Last',
      middleName: 'Middle',
      gender: Gender.Male,
      birthday: '01-01-1999',
      phones: [
        '79123456789',
      ],
      emails: [
        'some.email@email.com',
      ],
      tags: [
        'randomTag',
      ],
      customAttributes: {
        'alList': [
          {
            'alDate': '2021-10-11',
            'alWhole': 2,
            'alString': 'someAnotherString',
            'alBoolean': true,
            'alDecimal': 0.66
          }
        ]
      },
    );

Message get messageModelExample => Message(
      messageId: 'mess-123',
      title: 'Message Title',
      body: 'message body',
      sound: 'Sound1',
      vibrate: true,
      icon: 'icon.png',
      silent: true,
      category: 'Category1',
      customPayload: {'customParam1': 'customValue1'},
      internalData: 'internalData1',
      receivedTimestamp: 1234567890,
      seenDate: 1234567890,
      contentUrl: 'https://some.url',
      seen: true,
      geo: true,
      originalPayload: {'param1': 'value1'},
      browserUrl: 'https://some-browser.url',
      deeplink: 'https://some-deeplink.url',
      webViewUrl: 'https://some-browser.url',
      inAppOpenTitle: 'InApp Title',
      inAppDismissTitle: 'Dismiss title',
      chat: true,
    );
