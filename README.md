# Feed em flutter

Este feed é um projeto que interage com uma API Rest para obter templates de posts e comentários, e então atribuindo-os a um feed.

### Rodando o projeto localmente
 - Apague CMakeCache.txt em /build/linux/x64/debug/
 - Vá para o diretório do projeto e execute `flutter clean` e `flutter create .`
 - Agora o projeto executará normalmente.

## :toolbox: Packages Utilizadas:
 - [modular](https://pub.dev/packages/flutter_modular)
 - [mobx](https://pub.dev/packages/flutter_mobx)
 - [mobx codegen](https://pub.dev/packages/mobx_codegen)
 - [dio](https://pub.dev/packages/dio)
 - [build runner](https://pub.dev/packages/build_runner)
## API Utilizada:
 - [JSON placeholder](https://jsonplaceholder.typicode.com/)
 
## :pushpin: Objetivos do projeto
 - Listar posts e comentários em cards :heavy_check_mark:
 - Fazer uso do Dio para obter os dados :heavy_check_mark:
 - Fazer uso do mobx :heavy_check_mark:
 - Fazer uso do modular :heavy_check_mark:
 - Fazer tela de login 
