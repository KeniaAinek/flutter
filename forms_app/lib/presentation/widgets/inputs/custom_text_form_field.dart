import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      onChanged: (value){
        print('value: $value');
      },
      validator: (value) {
        if( value == null) return 'Campo ess requerido';
        if( value.isEmpty ) return 'Campo ess requerido';
        if( value.trim().isEmpty ) return 'Campo ess requerido';

        return null;
      },
      decoration: InputDecoration(
        
      ),
    );
  }
}