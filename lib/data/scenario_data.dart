class ScenarioData {
  static const List<Map<String, dynamic>> scenarioData = [
    {
      'dialogue':
      "You’re walking peacefully, the wind gently blowing, footsteps echoing on the pavement.", // index 0
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': 'TEST',
      'characters': [ // dont hot relaod go back from the main screen . ps right left looks opposite
        {'sprite': 'assets/images/characters/pose1/111.png', 'position': 'right'},
        {'sprite': 'assets/images/characters/skibidi/smile.png', 'position': 'left'},
      ],
      'sfx': 'audio/sfx/SE_49mm_01.wav', // sfx goes first before dialogue if want the sfx at the end after dialogue put it at the very end or after dialogue
    },
    {
      'dialogue':
      "The world feels calm and normal, but something is off.", // index 1
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'bgm': 'audio/bgm/bgm-fantasy.mp3',
    },
    {
      'dialogue':
      "A strange, unsettling noise rises behind you.", // index 2
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
    },
    {
      'dialogue':
      "You turn slowly...", // index 3
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
    },
    {
      'dialogue': "Wha—?!", // index 4
      'backgroundImage': 'assets/images/bg/cutscene1.png',
      'characterName': 'You',
    },
    {
      'dialogue':
      "You spotted someone behind you, but before you can react. You suddenly got knocked down to  the ground unconcious.", // index 5
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
    },
    {
      'dialogue':
      "You blink awake in a dimly lit room.", // index 6
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': '',
    },
    {
      'dialogue': "Hey! Kid..? You alright? I'm sorry for knocking you down, I thought you are infected with brainrot", // index 7
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
    },
    {
      'dialogue': "A crazy sickness called Brainrot is spreading in the city!!", // index 8
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
    },
    {
      'dialogue': "It's turning people into skibidi toilets! They attack anyone that has a functioning brain and eat them.", // index 9
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
    },
    {
      'dialogue': "The girl pauses for a moment, looking down at you with a mixture of sympathy and urgency.", // index 10
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': '',
    },
    {
      'dialogue': "But you… you didn’t change. You’re still you. Somehow, you made it through without getting infected.", // index 11
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
    },
    {
      'dialogue': "Hey! I need your help...", // index 12
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
    },
    {
      'dialogue': "Will you join me and help stop this skibidi infection?", // index 13
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
      'showLives': false,
      'choices': [
        {
          'text': "Yes",
          'nextDialogueIndex': 14,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/Dimlit-room.png.png',
        },
        {
          'text': "Let's do this!",
          'nextDialogueIndex': 14,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/Dimlit-room.png.png',
        },
      ]
    },
    {
      'dialogue': "Yey! Thank you for accepting..", // index 14
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Girl',
    },
    {
      'dialogue': "My name is mem. I lost my family to skibidi toilets a month ago. ", // index 15
      'backgroundImage': 'assets/images/bg/Dimlit-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "The infected are called as Skibdi Toilets, because they're humans transformed into human-headed toiltets..", // index 16
      'backgroundImage':  'assets/images/bg/Dimlit-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "They infect people with brainrot disease using their loud skibidi music...", // index 17
      'backgroundImage':  'assets/images/bg/Dimlit-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Avoid prolonged exposure to skibidi music to prevent being infected. You can cover your ears or strengthen your mind to resist the virus", // index 18
      'backgroundImage':  'assets/images/bg/Dimlit-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Mem leads you to a room filled with holographic displays and scattered notes.", // index 19
      'backgroundImage':  'assets/images/bg/hq-training-room.png',
      'characterName': '',
    },
    {
      'dialogue': "Mem turns to you. She was so excited...", // index 20
      'backgroundImage':  'assets/images/bg/hq-training-room.png',
      'characterName': '',
    },
    {
      'dialogue': "Alright! to stop them, we must see how sharp your brain is!", // index 21
      'backgroundImage':  'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
      'characterSprite': 'assets/images/characters/pose2/242.png',
    },
    {
      'dialogue': "Skibidi Toilets forgot how to think and talk right.", // index 22
      'backgroundImage':  'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "But if your grammar’s strong, you can beat them!", // index 23
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Get the answers right, and you’ll stop them!", // index 24
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "You have 3 hearts!", // index 25
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Mess up three times, and we start over. So, get ready to think!", // index 26
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Here comes your first question! Pick the sentence that’s written right.", // index 27
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Alright let's go!", // index 28
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "He ____ like pizza. What should I put here to complete the sentence?", // index 29
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
      'isQuestion': true,
      'choices': [
        {
          'text': "don't",
          'nextDialogueIndex': 30,  // Incorrect choice leads to index 31
          'nextBackgroundImage': 'assets/images/bg/hq-training-room.png',
          'characterName': 'Mem',
          'isCorrect': false,
          'loseLifeOnIncorrect': true,
        },
        {
          'text': "doesn't",
          'nextDialogueIndex': 32,  // Correct choice leads to index 30
          'nextBackgroundImage': 'assets/images/bg/hq-training-room.png',
          'characterName': 'Mem',
          'isCorrect': true,
        },
        {
          'text': "didn’t",
          'nextDialogueIndex': 31,  // Incorrect choice leads to index 32
          'nextBackgroundImage': 'assets/images/bg/hq-training-room.png',
          'characterName': 'Mem',
          'isCorrect': false,
          'loseLifeOnIncorrect': true,
        },
      ],
    },
    {
      'dialogue': "You’ve lost one of your lives! Stay sharp", // index 30 After incorrect feedback, go back to question at index 29
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
      'incorrectChoiceGoTo': 29,
    },
    {
      'dialogue': "You’ve got three lives! Lose all three, and we start over!", // index 31
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
      'incorrectChoiceGoTo': 29,
    },
    {
      'dialogue': "Correct! That's how we do it!!", // index 32
      'nextDialogueIndex': 33,
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Great job kid! You've proven to me that your mind is sharp.", // index 33
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Congrats on completing the tutorial!!", // index 34
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Alright, kid. You've got the basics done...", // index 35
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Alright, we're diving into the wildest part of the Grammar Epidemic!", // index 36
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',

    },
    {
      'dialogue': "It's spreading like crazy, and people are forgetting grammar.", // index 36
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    },
    {
      'dialogue': "It's spreading like crazy, and people are forgetting grammar.", // index 36
      'backgroundImage': 'assets/images/bg/hq-training-room.png',
      'characterName': 'Mem',
    }
  ];
}