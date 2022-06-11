# app_gasolina

* projeto flutter pra controle de gastos

___
- Rodar sem o debbuger:
    - pelo terminal entrar na `app/lib`
    - rodar: `flutter run`

____
- Alterar o nome do app:
    - entrar no dir.: `AndroidManifest.xml`
    - procurar: `android:label`
___
- Alterar icones: [aqui](https://acervolima.com/flutter-alterando-o-icone-do-aplicativo/)
____
 - Criar um projeto com path diferente
    - na playStore precisa ser diferente os nomes
    - dessa forma de criação, ele define um nome diferente
    `flutter create --org Roni_projects`


___
 - Geralmente se tem um: `MaterialApp`
    - 2 tipos de clases, (Statica: `StatelessWidget` e maleavel: `StatefulWidget`)
    - Scaffold:

____
 * Reaproveitamento de código com `Componentização`
 * Stack = Empilhamento, jogando um widget em cima de outro
 * Rotas, `pushReplacementNamed` e `pushNamed`
 * Card, Coloca uma box 
 * Tudo q for Assets, deve ser declarado no `pubspec.yaml` 
 * Drawer = Opção de Menu

# Proximos passos:

    - Mostrar mais info quando clicar numa row
    - Colocar link do git no icon
    - Colocar no git
    - Fazer o CRUD
    - Colocar mais Telas
    - 