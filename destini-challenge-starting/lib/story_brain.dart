import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        'Seu carro furou um pneu em uma estrada sinuosa no meio do nada, sem sinal de telefone celular. Você decide pegar carona. Uma caminhonete enferrujada para ao seu lado. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro e pergunta: "Precisa de uma carona, garoto(a)?".',
        'Eu aceito. Obrigado pela ajuda!',
        'Melhor perguntar se ele é um assassino primeiro.'),
    Story(
        'Ele balança a cabeça lentamente, sem se deixar abater pela pergunta.',
        'Pelo menos ele é honesto. Eu vou subir.',
        'Espere, irei sem o trocar um pneu.'),
    Story(
        'Quando você começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro, você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Ele pega o porta-luvas.',
        'Eu amo Elton John! Entregue-lhe a fita cassete.',
        'É ele ou eu! Você pega a faca e o esfaqueia.'),
    Story(
        'O que? Que policial! Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental na maioria dos grupos etários adultos?',
        'Reiniciar',
        ''),
    Story(
        'Ao atravessar o corrimão e seguir em direção às rochas irregulares abaixo, você reflete sobre a duvidosa sabedoria de esfaquear alguém enquanto ele dirige um carro em que você está.',
        'Reiniciar',
        ''),
    Story(
        'Você se une ao assassino enquanto canta versos de "Você pode sentir o amor hoje à noite"? Ele deixa você na próxima cidade. Antes de você ir, ele pergunta se você conhece bons lugares para despejar corpos. Você responde: "Experimente o píer".',
        'Reiniciar',
        '')
  ];

  int get storyNumber {
    return this._storyNumber;
  }

  String getStory() {
    return this._storyData[this._storyNumber].storyTitle;
  }

  String getChoice1() {
    return this._storyData[this._storyNumber].choice1;
  }

  String getChoice2() {
    return this._storyData[this._storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber < 3) {
      if (this._storyNumber == 0) {
        if (choiceNumber == 1) {
          _storyNumber = 2;
        } else {
          _storyNumber = 1;
        }
      } else if (this.storyNumber == 1) {
        if (choiceNumber == 1) {
          _storyNumber = 2;
        } else {
          _storyNumber = 3;
        }
      } else if (this.storyNumber == 2) {
        if (choiceNumber == 1) {
          _storyNumber = 5;
        } else {
          _storyNumber = 4;
        }
      }
    } else {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber < 3) {
      return true;
    } else {
      return false;
    }
  }
}
