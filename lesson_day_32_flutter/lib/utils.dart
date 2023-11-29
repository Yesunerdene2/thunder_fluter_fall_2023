import 'package:image_picker/image_picker.dart';

pickImage(ImageSource sourse) async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: sourse);
  if (image != null) {
    return await image.readAsBytes();
  }
  print('No image is selected');
}
