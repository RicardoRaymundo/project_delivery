import 'dart:async';

/// Sendo uma classe singleton ela pode ser chamada de qualquer ludar da aplicação para carregar os dados do app
class Data {
  static Data _instance;

  /// Lista de nomes de cursos que deve ser carregado
  /// TODO:: Implementar lógica para carregar essa lista diretamente do banco de dados

    /// Método que fará um delay, posteriormente chamando outro método
    static Future<Timer> loadData(next) async {
      return new Timer(Duration(seconds: 5), next);
    }


  /// Construtor da classe
  factory Data() {
    _instance ??= Data._internalConstructor();
    return _instance;
  }

  Data._internalConstructor();

  /// Inicialiador do loader deve ser executado dentro da classe splashscreen
  static Data generate(next) {
    Data.loadData(next);
  }
}
