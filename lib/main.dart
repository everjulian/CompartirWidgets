import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Registro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/perro.jpeg'),
            ),
            SizedBox(height: 16.0),
            CustomTextField(
              icon: Icons.person,
              hintText: 'Ingrese su nombre',
              labelText: 'Nombre',
            ),
            SizedBox(height: 16.0),
            CustomTextField(
              icon: Icons.email,
              hintText: 'Ingrese su correo electrónico',
              labelText: 'Correo electrónico',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            CustomTextField(
              icon: Icons.lock,
              hintText: 'Ingrese su contraseña',
              labelText: 'Contraseña',
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            CustomTextField(
              icon: Icons.phone,
              hintText: 'Ingrese su número de teléfono',
              labelText: 'Teléfono',
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16.0),
            CustomTextField(
              icon: Icons.calendar_today,
              hintText: 'Ingrese su fecha de nacimiento',
              labelText: 'Fecha de Nacimiento',
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 16.0),
            CustomTextField(
              icon: Icons.location_on,
              hintText: 'Ingrese su dirección',
              labelText: 'Dirección',
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de registro
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
  
}

class CustomTextField extends StatelessWidget {
  final IconData? icon;
  final IconData? suffixIcon;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final bool? autofocus;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const CustomTextField({
    Key? key,
    this.icon,
    this.suffixIcon,
    this.hintText,
    this.labelText,
    this.helperText,
    this.autofocus,
    this.keyboardType,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: icon != null ? Icon(icon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
      ),
      autofocus: autofocus ?? false,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
    );
  }
}
