import 'package:file_selector/file_selector.dart';
import 'package:get/get.dart';
// 用来选择文件的
Future<List<XFile>> getFilesForDesktopAndWeb() async {
  final typeGroup = XTypeGroup(
    label: 'images',
    extensions: GetPlatform.isWeb ? [''] : null,
  );
  final files = await openFiles(acceptedTypeGroups: [typeGroup]);
  if (files.isEmpty) {
    return null;
  }
  return files;
}
