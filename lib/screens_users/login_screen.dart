import 'package:flutter/material.dart';

import 'create_account_page.dart';
import 'forgot_password_screen.dart';
import 'navigation_bar_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  bool rememberUser = false;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF1b4ee4),
      body: Stack(
        children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom()),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Container(
      width: mediaSize.width,
      height: 200, // Ajusta la altura según necesites
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Logotipo.png'),
          fit: BoxFit
              .contain, // Esto hará que la imagen cubra todo el contenedor
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bienvenido",
          style: TextStyle(
            color: myColor,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        _buildGreyText("Por favor inicia sesión con tus datos personales"),
        const SizedBox(height: 40),
        _buildGreyText("Correo Electrónico"),
        _buildInputField(emailController, icon: Icons.person),
        const SizedBox(height: 40),
        _buildGreyText("Contraseña"),
        _buildPasswordInputField(),
        const SizedBox(height: 20),
        _buildRememberForgot(),
        const SizedBox(height: 20),
        _buildLoginButton(),
        const SizedBox(height: 20),
        _buildSignUpButton(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller, {IconData? icon}) {
    return TextField(
      controller: controller,
      focusNode: emailFocusNode,
      decoration: InputDecoration(
        prefixIcon:
            emailFocusNode.hasFocus ? null : (icon != null ? Icon(icon) : null),
      ),
    );
  }

  Widget _buildPasswordInputField() {
    return TextField(
      controller: passwordController,
      focusNode: passwordFocusNode,
      obscureText: obscurePassword,
      decoration: InputDecoration(
        prefixIcon: passwordFocusNode.hasFocus ? null : const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(obscurePassword ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              obscurePassword = !obscurePassword;
            });
          },
        ),
      ),
    );
  }

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberUser,
              onChanged: (value) {
                setState(() {
                  rememberUser = value!;
                });
              },
            ),
            _buildGreyText("Recuérdame"),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
            );
          },
          child: _buildGreyText("Olvidé mi contraseña"),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        // Navegar a CreateAccountPage
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NavigationBarScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1b4ee4),
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: Text(
        "Iniciar Sesión",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return ElevatedButton(
      onPressed: () {
        // Navegar a CreateAccountPage
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SignUpPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1b4ee4),
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: Text(
        "Crear cuenta",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
