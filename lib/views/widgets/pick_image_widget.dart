import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/logic/pick_image/pick_image_cubit.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/helper.dart';
import 'package:the_business_square/shared/theme/text_theme.dart';

class PickImageWidget extends StatefulWidget {
  final String? initialImg;
  final String? hint;

  const PickImageWidget({Key? key, required this.onSelect, this.initialImg, required this.hint}) : super(key: key);

  final Function(File? file) onSelect;

  @override
  State<PickImageWidget> createState() => _PickImageWidgetState();
}

class _PickImageWidgetState extends State<PickImageWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickImageCubit(),
      child: BlocBuilder<PickImageCubit, PickImageState>(
        builder: (context, state) {
          final cubit = context.read<PickImageCubit>();
          return ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: InkWell(
              onTap: () async {
                File? file = await cubit.pickImage();
                // var multipart = MultipartFile.fromFileSync(file?.path??'', filename: file?.path.split('/').last);

                if (file != null) {
                  widget.onSelect(file);
                }
              },
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 3), shape: BoxShape.circle),
                child: (state is PickImageInitial && widget.initialImg != null)
                    ? CircleAvatar(
                        radius: 50,
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl: widget.initialImg!,
                            fit: BoxFit.cover,
                            width: 120,
                          ),
                        ),
                      )
                    : state is PickImageSuccess && cubit.image != null
                        ? CircleAvatar(backgroundImage: FileImage(cubit.image!), radius: 50)
                        : state is PickImageError
                            ? Text(state.error)
                            : state is PickImageLoading
                                ? const Center(child: CircularProgressIndicator())
                                : Center(
                                    child: Text(widget.hint!,
                                        style: KTextStyle.of(context).title2.copyWith(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ))),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PickProImageWidget extends StatelessWidget {
  const PickProImageWidget({
    Key? key,
    this.initialImg,
    required this.onSelect,
    this.maxWidth = 720,
    this.maxHeight = 1280,
    this.radius,
    this.imageQuality = 100,
    this.isAvatar = false,
    this.validator,
  }) : super(key: key);

  final String? initialImg;
  final Function(File? file) onSelect;
  final double? maxWidth;
  final double? maxHeight;
  final double? radius;
  final int? imageQuality;
  final bool isAvatar;
  final String? Function(File?)? validator;
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry borderRadius = BorderRadius.circular(isAvatar ? 100 : KHelper.btnRadius);
    return BlocProvider(
      create: (context) => PickImageCubit(),
      child: BlocBuilder<PickImageCubit, PickImageState>(
        builder: (context, state) {
          final cubit = context.read<PickImageCubit>();
          return FormField<File?>(
            validator: validator,
            builder: (formState) {
              return Container(
                height: radius ?? 70,
                width: radius ?? 70,
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  elevation: 0,
                  onPressed: () async {
                    File? file = await cubit.pickImage();
                    if (file != null) {
                      onSelect(file);
                      formState
                        ..didChange(file)
                        ..validate();
                    }
                  },
                  child: SizedBox(
                    height: radius ?? 70,
                    width: radius ?? 70,
                    child: ClipRRect(
                      borderRadius: borderRadius,
                      child: (state is PickImageInitial && initialImg != null)
                          ? CachedNetworkImage(imageUrl: initialImg!, fit: BoxFit.cover)
                          : (state is PickImageSuccess && cubit.image != null)
                              ? Image.file(cubit.image!, fit: BoxFit.cover)
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.photo_size_select_actual_outlined, color: Colors.grey),
                                    SizedBox(height: 8),
                                    FittedBox(
                                      child: Text(Tr.get.browse_images, style: TextStyle(color: Colors.grey)),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ],
                                ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
