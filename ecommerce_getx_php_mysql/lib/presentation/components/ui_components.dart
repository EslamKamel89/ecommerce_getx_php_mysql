import 'package:ecommerce_getx_php_mysql/presentation/components/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Text Form Field
class CustomFormField extends StatefulWidget {
  const CustomFormField({
    super.key,
    required this.hint,
    required this.controller,
    this.obsecureAllow = false,
    this.minLines,
  });
  final String hint;
  final TextEditingController controller;
  final bool obsecureAllow;
  final int? minLines;
  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  final regExpEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.hint,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 3),
          TextFormField(
            controller: widget.controller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "The ${widget.hint} can't be empty";
              } else if (value.length < 4) {
                return "The ${widget.hint} must be at least 4 charcters";
              } else if (widget.hint == 'Email' && !regExpEmail.hasMatch(value)) {
                return 'Please enter a valid Email';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                hintText: 'Please enter your ${widget.hint}',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: !widget.obsecureAllow
                    ? null
                    : IconButton(
                        onPressed: () {
                          obsecure = !obsecure;
                          setState(() {});
                        },
                        icon: const Icon(Icons.remove_red_eye),
                      )),
            obscureText: widget.obsecureAllow == false ? false : obsecure,
            minLines: widget.obsecureAllow ? 1 : widget.minLines,
            maxLines: widget.obsecureAllow ? 1 : widget.minLines,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

class CustomFormField2 extends StatefulWidget {
  const CustomFormField2({
    super.key,
    required this.hint,
    required this.controller,
    this.obsecureAllow = false,
    this.minLines,
    this.title,
    this.icon,
    this.checkEmail = false,
    this.isPhoneNumber = false,
  });
  final String hint;
  final TextEditingController controller;
  final bool obsecureAllow;
  final int? minLines;
  final String? title;
  final Icon? icon;
  final bool checkEmail;
  final bool isPhoneNumber;
  @override
  State<CustomFormField2> createState() => _CustomFormFieldState2();
}

class _CustomFormFieldState2 extends State<CustomFormField2> {
  final regExpEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: widget.controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return (Get.locale!.languageCode == 'ar') ? "${widget.hint} لا يمكن ان يكون فارغ" : "The ${widget.hint} can't be empty";
          } else if (value.length < 4) {
            return (Get.locale!.languageCode == 'ar') ? '${widget.hint} يجب ان يتكون من أربعة حروف علي الافل' : "The ${widget.hint} must be at least 4 charcters";
          } else if (widget.checkEmail && !regExpEmail.hasMatch(value)) {
            return (Get.locale!.languageCode == 'ar') ? "من فضلك قم بادخال بريد الاكتروني صحيح" : 'Please enter a valid Email';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            hintText: (Get.locale!.languageCode == 'ar') ? 'من فضلك قم بأدخال ${widget.hint}' : 'Please enter your ${widget.hint}',
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              color: Colors.transparent,
              child: Text(
                widget.title ?? widget.hint,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            suffixIcon: !widget.obsecureAllow
                ? widget.icon
                : IconButton(
                    onPressed: () {
                      obsecure = !obsecure;
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_red_eye),
                  )),
        obscureText: widget.obsecureAllow == false ? false : obsecure,
        minLines: widget.obsecureAllow ? 1 : widget.minLines,
        maxLines: widget.obsecureAllow ? 1 : widget.minLines,
        keyboardType: widget.isPhoneNumber ? TextInputType.phone : null,
      ),
    );
  }
}

enum EntryType { email, username, passOne, passTwo, phone }

class CustomFormField3 extends StatefulWidget {
  const CustomFormField3({
    super.key,
    required this.type,
    required this.controller,
    this.obsecureAllow = false,
    this.minLines,
    this.title,
    this.icon,
    this.minChar = 5,
    this.maxChar = 20,
  });
  final TextEditingController controller;
  final bool obsecureAllow;
  final int? minLines;
  final String? title;
  final Icon? icon;
  final EntryType type;
  final int minChar;
  final int maxChar;
  @override
  State<CustomFormField3> createState() => _CustomFormFieldState3();
}

class _CustomFormFieldState3 extends State<CustomFormField3> {
  final regExpEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: widget.controller,
        validator: _validate,
        decoration: InputDecoration(
            hintText: _hint(),
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              color: Colors.transparent,
              child: Text(
                _title(),
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            suffixIcon: !widget.obsecureAllow
                ? widget.icon
                : IconButton(
                    onPressed: () {
                      obsecure = !obsecure;
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_red_eye),
                  )),
        obscureText: widget.obsecureAllow == false ? false : obsecure,
        minLines: widget.obsecureAllow ? 1 : widget.minLines,
        maxLines: widget.obsecureAllow ? 1 : widget.minLines,
        keyboardType: widget.type == EntryType.phone ? TextInputType.phone : null,
      ),
    );
  }

  String? _validate(value) {
    switch (widget.type) {
      case EntryType.username:
        if (value == null || value.isEmpty) {
          return 'USERNAME_CAN_NOT_BE_EMPTY'.tr;
        } else if (value.length < widget.minChar || value.length > widget.maxChar) {
          return '${'THE_CHARS_CANT_BE_LESS_THAN'.tr} (${widget.minChar} , ${widget.maxChar}) ${'CHARACTERS'.tr}';
        }
        break;
      case EntryType.email:
        if (value == null || value.isEmpty) {
          return 'EMAIL_CAN_NOT_BE_EMPTY'.tr;
        } else if (!regExpEmail.hasMatch(value)) {
          return 'ENTER_VALID_EMAIL'.tr;
        }
        break;
      case EntryType.phone:
        if (value == null || value.isEmpty) {
          return 'PHONE_CAN_NOT_BE_EMPTY'.tr;
        }
        break;
      case EntryType.passOne:
      case EntryType.passTwo:
        if (value == null || value.isEmpty) {
          return 'PASSWORD_CAN_NOT_BE_EMPTY'.tr;
        } else if (value.length < widget.minChar || value.length > widget.maxChar) {
          return '${'THE_CHARS_CANT_BE_LESS_THAN'.tr} (${widget.minChar} , ${widget.maxChar}) ${'CHARACTERS'.tr}';
        }
        break;
      default:
    }
    return null;
  }

  String _title() {
    switch (widget.type) {
      case EntryType.username:
        return 'USERNAME'.tr;
      case EntryType.email:
        return 'EMAIL'.tr;
      case EntryType.phone:
        return 'PHONE'.tr;
      case EntryType.passOne:
        return 'PASSONE'.tr;
      case EntryType.passTwo:
        return 'PASSTWO'.tr;
      default:
    }
    return '';
  }

  String _hint() {
    switch (widget.type) {
      case EntryType.username:
        return 'USERNAME_HINT'.tr;
      case EntryType.email:
        return 'EMAIL_HINT'.tr;
      case EntryType.phone:
        return 'PHONE_HINT'.tr;
      case EntryType.passOne:
        return 'PASSONE_HINT'.tr;
      case EntryType.passTwo:
        return 'PASSTWO_HINT'.tr;
      default:
    }
    return '';
  }
}

/* validator: (value) {
          if (value == null || value.isEmpty) {
            return (Get.locale!.languageCode == 'ar') ? "${widget.hint} لا يمكن ان يكون فارغ" : "The ${widget.hint} can't be empty";
          } else if (value.length < 4) {
            return (Get.locale!.languageCode == 'ar') ? '${widget.hint} يجب ان يتكون من أربعة حروف علي الافل' : "The ${widget.hint} must be at least 4 charcters";
          } else if (widget.checkEmail && !regExpEmail.hasMatch(value)) {
            return (Get.locale!.languageCode == 'ar') ? "من فضلك قم بادخال بريد الاكتروني صحيح" : 'Please enter a valid Email';
          } else {
            return null;
          }
        }, */

// MaterialText
class MaterialText extends StatelessWidget {
  const MaterialText({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.onBackgroundColor,
    this.fontSize,
    this.fontWeight,
    required this.elevation,
    this.width,
    this.height,
    this.horizntalMargin,
    this.verticalMargin,
  });
  final String title;
  final Color backgroundColor;
  final Color onBackgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double elevation;
  final double? width;
  final double? height;
  final double? horizntalMargin;
  final double? verticalMargin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: verticalMargin ?? 5, horizontal: horizntalMargin ?? 5),
      width: width,
      height: height,
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: onBackgroundColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// MaterialContainer
class MaterialContainer extends StatelessWidget {
  const MaterialContainer({
    super.key,
    required this.child,
    required this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    required this.elevation,
    this.width,
    this.height,
    this.horizntalMargin,
    this.verticalMargin,
  });
  final Widget child;
  final Color backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double elevation;
  final double? width;
  final double? height;
  final double? horizntalMargin;
  final double? verticalMargin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: verticalMargin ?? 5, horizontal: horizntalMargin ?? 5),
      width: width,
      height: height,
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          child: child,
        ),
      ),
    );
  }
}

// CompactTextField
class CompactTextField extends StatelessWidget {
  CompactTextField({super.key, required this.hint, required this.controller, this.minLines});
  final String hint;
  final TextEditingController controller;
  final int? minLines;
  final regExpEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "The $hint can't be empty";
          } else if (hint == 'Email' && !regExpEmail.hasMatch(value)) {
            return 'Please enter a valid Email';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        minLines: minLines,
        maxLines: minLines,
      ),
    );
  }
}

class CustomButtonColored extends StatelessWidget {
  const CustomButtonColored({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialText(
      title: title,
      backgroundColor: AppColors.backgroundColor1,
      onBackgroundColor: AppColors.onBackgroundColor1,
      elevation: 30,
      horizntalMargin: 30,
    );
  }
}

class CircularImageAsset extends StatelessWidget {
  const CircularImageAsset({super.key, required this.imageName, this.size});
  final String imageName;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 30,
      height: size ?? 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size ?? 30),
        image: DecorationImage(
          image: AssetImage('assets/images/$imageName'),
        ),
      ),
    );
  }
}
