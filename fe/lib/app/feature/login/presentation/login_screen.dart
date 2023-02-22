import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/l10n/l10n.dart';
import '../../../core/widget/app_button.dart';
import '../../../core/widget/app_text_field.dart';
import 'login_cubit.dart';
import 'login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: LayoutBuilder(
          builder: _buildBody,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, BoxConstraints constraints) {
    return SafeArea(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        onTap: context.read<LoginCubit>().clearFocusView,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildHeader(context),
                _buildForm(),
                _buildLoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    Widget buildHeaderText({
      required String text,
      required String tag,
      required EdgeInsets padding,
      required TextAlign textAlign,
    }) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: padding,
              child: Hero(
                tag: tag,
                child: AutoSizeText(
                  text,
                  maxLines: 1,
                  textAlign: textAlign,
                  minFontSize: 36,
                  maxFontSize: 48,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      children: <Widget>[
        buildHeaderText(
          text: context.l10n.login_title_1,
          tag: 'title1',
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          textAlign: TextAlign.start,
        ),
        buildHeaderText(
          text: context.l10n.login_title_2,
          tag: 'title2',
          padding: EdgeInsets.zero,
          textAlign: TextAlign.end,
        ),
      ],
    );
  }

  Widget _buildForm() {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!),
              backgroundColor: Colors.red,
              onVisible: context.read<LoginCubit>().onErrorShown,
            ),
          );
        }
      },
      builder: (context, state) {
        final ThemeData theme = Theme.of(context);
        final LoginCubit loginCubit = context.read<LoginCubit>();

        return Column(
          children: <Widget>[
            Form(
              key: loginCubit.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextField(
                    enabled: !state.isLoading,
                    controller: loginCubit.usernameTEC,
                    focusNode: loginCubit.usernameFN,
                    label: context.l10n.username,
                    inputAction: TextInputAction.next,
                    validator: (input) =>
                        (input?.length ?? 0) == 0 ? context.l10n.missing_username : null,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  AppTextField(
                    enabled: !state.isLoading,
                    controller: loginCubit.pswTEC,
                    focusNode: loginCubit.pswFN,
                    label: context.l10n.password,
                    validator: (input) =>
                        (input?.length ?? 0) == 0 ? context.l10n.missing_password : null,
                    suffixIcon: IconButton(
                      icon: Icon(
                        state.showPassword ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                        color: Colors.white,
                      ),
                      onPressed: loginCubit.onShowPasswordChange,
                    ),
                    obscureText: !state.showPassword,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CheckboxListTile(
              value: state.rememberMe,
              onChanged: (_) => loginCubit.onRememberMeChange(),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
              title: Text(
                context.l10n.remember_me,
                style: theme.textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        );
      },
    );
  }

  Widget _buildLoginButton() {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (old, current) => old.isLoading != current.isLoading,
      builder: (context, state) {
        return AppButton(
          isLoading: state.isLoading,
          onPressed: context.read<LoginCubit>().onLogin,
          child: Text(context.l10n.login),
        );
      },
    );
  }
}
