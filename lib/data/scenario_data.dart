class ScenarioData {
  static const List<Map<String, dynamic>> scenarioData = [
    // {
    //   'dialogue':
    //   "You’re walking peacefully, the wind gently blowing, footsteps echoing on the pavement.", // index 0
    //   'backgroundImage': 'assets/images/bg/Downtown-Night.png',
    //   'characterName': 'TEST',
    //   'characters': [ // dont hot relaod go back from the main screen . ps right left looks opposite
    //      {'sprite': 'assets/images/characters/pose1/111.png', 'position': 'right'},
    //      {'sprite': 'assets/images/characters/skibidi/smile.png', 'position': 'left'},
    //   ],
    //   'sfx': 'audio/sfx/SE_49mm_01.wav', // sfx goes first before dialogue if want the sfx at the end after dialogue put it at the very end or after dialogue
    //    'bgm': 'audio/bgm/bgm-fantasy.mp3',
    // },

    
                                    //?           CHAPTER 1         //
    {
      'dialogue':
      "You’re walking peacefully, the wind gently blowing, footsteps echoing on the pavement.", // index 0
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'sfx': 'audio/sfx/action/footstep1.mp3'
    },
    {
      'dialogue':
      "The world feels calm and normal, but something is off.", // index 1
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
      
    },
    {
      'dialogue':
      "A strange noise rises behind you.", // index 2
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/sound/rappel.mp3',
    },
    {
      'dialogue':
      "You turn immediately...", // index 3
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/gear2.mp3',
    },
    {
      'dialogue': "Wha—?!", // index 4
      'backgroundImage': 'assets/images/bg/cutscene1.png',
      'characterName': 'You',
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },
    {
      'dialogue':
      "You spotted someone behind you, but before you can react. You suddenly got knocked down to  the ground unconcious.", // index 5
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/hit2.mp3',
    },
    {
      'dialogue':
      "You blink awake in a dimly lit room.", // index 6
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },
    {
      'dialogue': "Hey! Kid..? You alright? I'm sorry for knocking you down, I thought you are infected with brainrot", // index 7
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose1/113.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/question.mp3',
    },
    {
      'dialogue': "A crazy sickness called Brainrot is spreading in the city!!", // index 8
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose1/114.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },
    {
      'dialogue': "It's turning people into skibidi toilets! They attack anyone that has a functioning brain and eat them.", // index 9
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose2/213.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    {
      'dialogue': "The girl pauses for a moment, looking down at you with a mixture of sympathy and urgency.", // index 10
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': '',
      'characters': [ {'sprite': 'assets/images/characters/pose1/144.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/sweat.mp3',
    },
    {
      'dialogue': "But you… you didn’t change. You’re still you. Somehow, you made it through without getting infected.", // index 11
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },
    {
      'dialogue': "Hey! I need your help...", // index 12
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose1/154.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/bulb.mp3',
    },
    {
      'dialogue': "Will you join me and help stop this skibidi infection?", // index 13
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose1/164.png', 'position': 'right'} ],
      'showLives': false,
      'sfx': 'audio/sfx/emotion/cartoon.mp3',
      'choices': [
        {
          'text': "Yes",
          'nextDialogueIndex': 14,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
          //'sfx': 'audio/sfx/emotion/respond.mp3',
        },
        {
          'text': "I would be glad to help",
          'nextDialogueIndex': 14,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
          //'sfx': 'audio/sfx/emotion/respond.mp3',
        },
      ]
    },
    {
      'dialogue': "Yey! Thank you for accepting..", // index 14
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [ {'sprite': 'assets/images/characters/pose2/252.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },
    {
      'dialogue': "My name is mem. I lost my family to skibidi toilets a month ago. ", // index 15
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/113.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sigh.mp3',
    },
    {
      'dialogue': "The infected are called as Skibdi Toilets, because they're humans transformed into human-headed toilets..", // index 16
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/111.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue': "They infect people with brainrot disease using their loud skibidi music...", // index 17
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/113.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
    {
      'dialogue': "Avoid prolonged exposure to skibidi music to prevent being infected. You can cover your ears or strengthen your mind to resist the virus", // index 18
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'sfx': 'audio/sfx/emotion/respond.mp3',
      'characterName': 'Mem',
    },










    {
      'dialogue': "You followed Mem and walked to another room.", // index 19
      'backgroundImage':  'assets/images/bg/black screen.png',
      'sfx': 'audio/sfx/action/footstep6.mp3',
      'characterName': '',
    },
    {
      'dialogue': "Mem leads you to a room filled with books and scattered notes.", // index 20
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'sfx': 'audio/sfx/action/dooropen2.mp3',
      'characterName': '',
    },
    {
      'dialogue': "Alright! To see if you can survive against the infection, we must see how sharp your brain is!", // index 21
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose2/252.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
      
    },
    {
      'dialogue': "In order to stop this brainrot madness, we must go to the laboratory to find out how to exterminate them.", // index 22
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
    {
      'dialogue': "Skibidi Toilet’s weakness are facts and grammars. They flush themselves when u attack them with it.", // index 23
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/142.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    {
      'dialogue': "Get the answers right, and you’ll defeat them!", // index 24
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/112.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/bulb.mp3',
    },
    {
      'dialogue': "You have 3 hearts!", // index 25
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue': "Mess up three times, and it's game over. So, get ready to think.", // index 26
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/153.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sigh.mp3',
    },
    {
      'dialogue': "Here comes your first question! Pick the sentence that’s written right.", // index 27
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/111.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/question.mp3',
    },
    {
      'dialogue': "Alright let's go!", // index 28
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose2/222.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/cartoon.mp3',
    },
    {
      'dialogue': "He ____ like pizza. What should I put here to complete the sentence?", // index 29
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/141.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
      'isQuestion': true,
      'choices': [
        {
          'text': "don't",
          'nextDialogueIndex': 30,  // Incorrect choice leads to index 31
          'nextBackgroundImage':  'assets/images/bg/messyroom.jpg',
          'characterName': 'Mem',
          'isCorrect': false,
          'loseLifeOnIncorrect': true,
        },
        {
          'text': "doesn't",
          'nextDialogueIndex': 32,  // Correct choice leads to index 30
          'nextBackgroundImage':  'assets/images/bg/messyroom.jpg',
          'characterName': 'Mem',
          'isCorrect': true,
        },
        {
          'text': "didn’t",
          'nextDialogueIndex': 31,  // Incorrect choice leads to index 32
          'nextBackgroundImage':  'assets/images/bg/messyroom.jpg',
          'characterName': 'Mem',
          'isCorrect': false,
          'loseLifeOnIncorrect': true,
        },
      ],
    },
    {
      'dialogue': "You’ve lost one of your lives! Stay sharp", // index 30 After incorrect feedback, go back to question at index 29
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'incorrectChoiceGoTo': 29,
      'sfx': 'audio/sfx/sound/wrong.mp3',
    },
    {
      'dialogue': "You’ve got three lives! Lose all three, and we start over!", // index 31
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'incorrectChoiceGoTo': 29,
      'sfx': 'audio/sfx/sound/wrong.mp3',
    },
    {
      'dialogue': "Correct! That's how we do it!!", // index 32
      'nextDialogueIndex': 33,
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose2/252.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/check2.mp3',
    },
    {
      'dialogue': "Great job kid! You've proven to me that your mind is sharp.", // index 33
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/142.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/heart.mp3',
    },


    {
      'dialogue': "Congrats on completing the tutorial!!", // index 34
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose2/252.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },
    {
      'dialogue': "Alright, kid. You’ve got the basics done... Let’s go outside and find the source of all this madness!", // index 35
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/112.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    {
      'dialogue': "We’re heading to the laboratory. I heard from other survivors that there are information about how the brainrot infection started!", // index 36
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/141.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',

    },
    {
      'dialogue': "Let’s go! No time to waste! We’ve got the city to save!", // index 37
      'backgroundImage':  'assets/images/bg/messyroom.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/152.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

  

                                //?           CHAPTER 2         //

    {
      'dialogue': "The streets are eerily quiet, with only the flickering streetlights casting long shadows as the two of you walk in silence.", // index 38
      'backgroundImage':  'assets/images/bg/outside1.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep2.mp3',
    },

    {
      'dialogue': "I can hear some skibidi toilets up ahead.", // index 39
      'backgroundImage':  'assets/images/bg/outside1.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/113.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "Stay alert.", // index 40
      'backgroundImage':  'assets/images/bg/outside1.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/143.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/respond.mp3',
    },

    {
      'dialogue': "Let’s head towards the library. We can reach the laboratory faster if we go through there.", // index 41
      'backgroundImage':  'assets/images/bg/outside1.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/141.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },

    {
      'dialogue': "The two of you walked towards the direction of the library.", // index 42
      'backgroundImage':  'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep2.mp3',
    },

    {
      'dialogue': "We are finally here at the library entrance.", // index 43
      'backgroundImage':  'assets/images/bg/door2.jpg',
      'characters': [ {'sprite': 'assets/images/characters/pose1/112.png', 'position': 'right'} ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "Oh no, a skibidi toilet is blocking the door.", // index 44
      'backgroundImage':  'assets/images/bg/cutscene2.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/skibidisong.mp3',
    },

    {
      'dialogue': "We have no choice but to fight!", // index 45
      'backgroundImage':  'assets/images/bg/cutscene2.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/action/upset.mp3',
    },

    {
      'dialogue': "Skibidi dop dop dop yiz yiz skibidi skibidi skibidi—", // index 46
      'backgroundImage':  'assets/images/bg/door2.jpg',
      'characters': [ {'sprite': 'assets/images/characters/skibidi/happy.png', 'position': 'center'} ],
      'characterName': 'Skibidi Toilet',
      'sfx': 'audio/sfx/sound/skibidisong.mp3',
    },



   
  ];
}