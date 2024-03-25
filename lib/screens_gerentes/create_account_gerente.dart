import 'package:flutter/material.dart';
import 'package:map_flutter/screens_users/login_screen.dart';
import 'package:map_flutter/screens_users/map_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController parkingNameController = TextEditingController();
  TextEditingController ownerPhoneController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TimeOfDay? openingTime;
  TimeOfDay? closingTime;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF1b4ee4),
      body: Stack(
        children: [
          Positioned(bottom: 0, child: _buildBottom()),
        ],
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
          child: SingleChildScrollView(
            child: _buildForm(),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Crear cuenta de Parqueo",
          style: TextStyle(color: myColor, fontSize: 32, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 20),
        _buildInputField(parkingNameController, "Nombre del Parqueo", Icons.local_parking),
        _buildInputField(ownerPhoneController, "Número de Teléfono del Propietario", Icons.phone),
        _buildInputField(descriptionController, "Descripción", Icons.description),
        _buildInputField(rateController, "Tarifa", Icons.attach_money),
        _buildSelectLocation(),
        _buildTimePicker("Hora de Apertura", true),
        _buildTimePicker("Hora de Cierre", false),
        const SizedBox(height: 40),
        _buildSignUpButton(),
      ],
    );
  }

  Widget _buildInputField(TextEditingController controller, String label, IconData icon) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
      ),
    );
  }

  Widget _buildSelectLocation() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MapScreen()));
      },
      child: Row(
        children: const [
          Icon(Icons.map),
          Text('Seleccionar Ubicación'),
        ],
      ),
    );
  }

  Widget _buildTimePicker(String label, bool isOpeningTime) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () async {
            final TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            setState(() {
              if (isOpeningTime) {
                openingTime = pickedTime;
              } else {
                closingTime = pickedTime;
              }
            });
          },
          child: Text(label),
        ),
        SizedBox(width: 10),
        Text(
          isOpeningTime ? (openingTime?.format(context) ?? '') : (closingTime?.format(context) ?? ''),
        ),
      ],
    );
  }

  Widget _buildSignUpButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1b4ee4),
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text(
        "Registrar Parqueo",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
