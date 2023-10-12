import 'package:casa_da_quintanda/src/auth/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(///Expanded ocupa 50% da tela
            child: Container(
              color: Colors.red,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,//alinhamento do eixo cruzado
              children: [
                // EMAIL
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),


                // SENHA
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),

                // BOTÃO DE ENTRAR
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                    ),
                    onPressed: () {},
                    child: const Text(
                        'Entrar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                // BOTÃO DE ESQUECEU A SENHA
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                  ),
                ),

                // Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child:  Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                // BOTÃO DE NOVO USUÁRIO
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      side: BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                      onPressed: (){},
                      child: const Text('Criar conta', style: TextStyle(fontSize: 18),),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
