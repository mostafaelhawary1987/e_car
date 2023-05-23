import 'package:e_car/view/layout/auth/login/login_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../helpers/images/app_images.dart';
import '../../../../helpers/locale/app_locale_key.dart';
import '../../../../helpers/theme/app_colors.dart';
import '../../../../helpers/theme/sizes.dart';
import '../../../../helpers/theme/style.dart';
import '../../../../helpers/utils/navigator_methods.dart';
import '../../../../helpers/utils/validations.dart';
import '../../../custom_widget/ui_element/button_widget/elevates_button_widget.dart';
import '../../../custom_widget/ui_element/page_container/page_container.dart';
import '../../../custom_widget/ui_element/text_field_form_widget/label_form_widget.dart';
import '../../../custom_widget/ui_element/text_field_form_widget/text_field_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  TextEditingController? _passWordController;
  
  @override
  void initState() {
    _emailController = TextEditingController();
    _passWordController = TextEditingController();
    super.initState();
  }

    @override
  void dispose() {
    _emailController!.dispose();
    _passWordController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      statusBarColor: whiteColor,
      statusBarTheme: StatusBarTheme.dark,
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
              vertical: MySizes.verticalMargin,
              horizontal: MySizes.horizontalMargin),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              //  Center(
              //   child: Image.asset(
              //     AppImages.logoLogin,
              //     width: 114,
              //     height: 146,
              //   ),
              // ),
              Text(
                  tr(
                    AppLocalKey.loginIn,
                  ),
                  style: textB20B,
                ),
                 Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelFormWidget(labelName: tr(AppLocalKey.email)),
                      CustomTextFormField(
                        textInputType: TextInputType.emailAddress,
                        controller: _emailController,
                        validator: validateEmail,
                      ),
                      LabelFormWidget(labelName: tr(AppLocalKey.passWord)),
                      Consumer<LoginController>(
                          builder: (context, login, child) =>
                              CustomTextFormField(
                                textInputType: TextInputType.text,
                                controller: _passWordController,
                                validator: validatePassword,
                                suffixOnTap: () => login.changeScureText(),
                                obscureText: login.secureText,
                                suffixImage: AppImages.eye,
                              )),
                              
                              ElevatedButtonWidget(
                                    title: tr(AppLocalKey.loginIn),
                                    
                                    onTap: (() {
                                     
                                              // NavigatorMethods
                                              //     .pushNamed(
                                              //   context,
                                              //   HomeScreen.routeName,
                                              // );
                                    })),
                                    Container(
                padding: const EdgeInsets.only(top: MySizes.horizontalMargin),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "tr(AppLocalKey.haveAnAccount)",
                      style: textB15R,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                      child: Text(
                        tr(AppLocalKey.createAccount),
                        style: textS15SB,
                      ),
                    )
                  ],
                ),
              )
                              ]))
            ]))));
  }
}
