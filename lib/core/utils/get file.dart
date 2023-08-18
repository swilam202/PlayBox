

import 'package:file_picker/file_picker.dart';

Future<String?> getFile()async{
  FilePickerResult? filePickerResult  = await FilePicker.platform.pickFiles(type: FileType.video,allowMultiple: false);
  String? path = filePickerResult?.files.single.path;
  print(path.toString());
  return path;

}