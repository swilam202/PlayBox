import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home page state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitialState());

  loadVideo() async {
    emit(HomePageLoadingState());
    try {
      String? path = await getFile();

      if (path == null) {
        emit(HomePageFailureState());
      } else {
        emit(HomePageSuccessState(path: path));
      }
    } catch (e) {
      emit(HomePageFailureState());
    }
  }
}

Future<String?> getFile() async {
  FilePickerResult? filePickerResult = await FilePicker.platform
      .pickFiles(type: FileType.video, allowMultiple: false);
  String? path = filePickerResult?.files.single.path;

  return path;
}
