//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';
//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Arabanızın lastiği, hiçliğin ortasında, cep telefonu sinyalinin olmadığı dolambaçlı bir yolda patladı. Otostop çekmeye karar veriyorsunuz. Paslı bir kamyonet gürültüyle yanınızda duruyor. Geniş kenarlı şapkalı, ruhsuz bakışlı bir adam sana yolcu kapısını açıyor ve soruyor: "Arabaya mı ihtiyacın var oğlum?".',
        choice1: 'Ben atlayacağım. Yardımın için teşekkürler!',
        choice2: 'Önce ona katil olup olmadığını sorsan iyi olur.'),
    Story(
        storyTitle: 'Yavaş yavaş başını sallıyor, soru karşısında duraksamadan.',
        choice1: 'En azından dürüst. İçeri gireceğim',
        choice2: 'Bekle, lastiği nasıl değiştireceğimi biliyorum.'),
    Story(
        storyTitle:
        'Araba kullanmaya başladığınızda, yabancı annesiyle olan ilişkisi hakkında konuşmaya başlar. Her geçen dakika daha da sinirleniyor. Torpido gözünü açmanı istiyor. İçinde kanlı bir bıçak, iki kesik parmak ve Elton John\'un bir kasetini buluyorsun. Torpido gözüne uzanıyor.',
        choice1: 'Elton John\'u seviyorum! Kaseti ona ver.',
        choice2: 'O ya da ben! Bıçağı al ve onu bıçakla.'),
    Story(
        storyTitle:
        'ne? Tam bir polis çıktı! Trafik kazalarının çoğu yetişkin yaş grubu için kaza sonucu ölümün ikinci önde gelen nedeni olduğunu biliyor muydunuz?',
        choice1: 'Yeniden Başla',
        choice2: ''),
    Story(
        storyTitle:
        'Korkuluktan geçerken ve aşağıdaki pürüzlü kayalara doğru ilerlerken, içinde bulunduğunuz bir arabayı sürerken birini bıçaklamanın şüpheli bilgeliğini yansıtırsınız.',
        choice1: 'Yeniden Başla',
        choice2: ''),
    Story(
        storyTitle:
        '"Bu gece aşkı hissedebiliyor musun" mısralarını mırıldanırken katille bağ kuruyorsun. Seni bir sonraki kasabaya bırakıyor. Gitmeden önce cesetleri atmak için iyi bir yer biliyor musun diye soruyor. Cevap veriyorsun: "İskeleyi dene".',
        choice1: 'Yeniden Başla',
        choice2: '')
  ];

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  //TODO: Step 23 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.
  int _storyNumber = 0;


//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber < 3) {
      return true;
    }
    else return false;
  }

}