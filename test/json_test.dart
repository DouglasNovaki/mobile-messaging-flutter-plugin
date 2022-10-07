import 'package:flutter_test/flutter_test.dart';
import 'package:infobip_mobilemessaging/models/Installation.dart';
import 'package:infobip_mobilemessaging/models/Message.dart';
import 'package:infobip_mobilemessaging/models/UserData.dart';

import 'utils/json_test_stubs.dart';
import 'utils/models_examples.dart';

void main() {
  group('toJSON', () {
    test('Configuration', () {
      expect(configurationModelExample.toJson(), configurationExampleJson);
    });

    test('Installation', () {
      expect(installationModelExample.toJson(), installationExampleJson);
    });

    test('InstallationPrimary', () {
      expect(installationPrimaryModelExample.toJson(),
          installationPrimaryExampleJson);
    });

    test('IOSChatSettings', () {
      expect(iosChatSettingsModelExample.toJson(), iosChatSettingsExampleJson);
    });

    test('UserIdentity', () {
      expect(userIdentityModelExample.toJson(), userIdentityExampleJson);
    });

    test('PersonalizeContext', () {
      expect(personalizeContextModelExample.toJson(),
          personalizeContextExampleJson);
    });

    test('UserData', () {
      expect(userDataModelExample.toJson(), userDataExampleJson);
    });
  });

  group('fromJSON', () {
    test('Message', () {
      expect(Message.fromJson(messageExampleJson), messageModelExample);
    });

    test('Installation', () {
      expect(Installation.fromJson(installationExampleJson),
          installationModelExample);
    });

    test('UserData', () {
      expect(UserData.fromJson(userDataExampleJson), userDataModelExample);
    });
  });
}
