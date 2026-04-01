import 'package:flutter/services.dart' show rootBundle;
import 'package:share_plus/share_plus.dart';

Future<void> shareResume() async {
  final bytes = await rootBundle.load('lib/assets/Peswaran-2026.pdf');
  await SharePlus.instance.share(
    ShareParams(
      files: [
        XFile.fromData(
          bytes.buffer.asUint8List(),
          name: 'Peswaran-2026.pdf',
          mimeType: 'application/pdf',
        ),
      ],
    ),
  );
}
