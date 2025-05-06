class ScenarioData {
  static const List<Map<String, dynamic>> scenarioData = [

    {
      'dialogue':
      "Hello there! Before we start we would like you to be familiar with the game!", // index 0
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },
    {
      'dialogue':
      "Tap the speaker icon to activate text-to-speech!", // index 1
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue':
      "Great Job! Just keep tapping the icon to activate text-to-speech!", // index 2
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },
    {
      'dialogue':
      "If you need to adjust the music and sound effects. Press the Menu Icon!", // index 3
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue':
      "You can also go back to homescreen, if you wanted to!", // index 4
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':
      "Now for the next Part!", // index 5
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/cartoon.mp3',
    },
    {
      'dialogue': "This is where you pick choices! Pick the right choices given to you.", // index 6
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'isQuestion': true,
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
      'choices': [
        {
          'text': "Right",
          'nextDialogueIndex': 8,
          'nextBackgroundImage': 'assets/images/bg/inside9.jpg',
          'characterName': 'Developer',
          'isCorrect': true,
        },
        {
          'text': "Wrong",
          'nextDialogueIndex': 7,
          'nextBackgroundImage': 'assets/images/bg/inside9.jpg',
          'characterName': 'Developer',
          'isCorrect': false,
          'loseLifeOnIncorrect': true,
        },
      ],
    },
    {
      'dialogue': "You lose lives as you go! So pick the right answer!", // index 7
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'incorrectChoiceGoTo': 6,
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue': "That's how you do it! In the game you would be given questions to answer!", // index 8
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/sound/check.mp3',
    },
    {
      'dialogue': "So pick the right answer!", // index 9
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },
    {
      'dialogue': "Now that's all for me.", // index 10
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue': "If you need more help. Just press the question icon!", // index 11
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue': "Well then! Goodluck!", // index 12
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developer',
      'sfx': 'audio/sfx/emotion/cartoon.mp3',
      
    },







//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                                 //?           CHAPTER 1         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?

    {
      'dialogue':
      "(You suddenly woke up in the middle of the city without any memories of what happened)",
      // index 13
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep1.mp3'
    },
    {
      'dialogue':
      "(The city feels calm and quite, but something is off)", // index 14
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':
      "(A strange noise rises behind you)", // index 15
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/sound/rappel.mp3',
    },
    {
      'dialogue':
      "(You immediately turned around...)", // index 16
      'backgroundImage': 'assets/images/bg/Downtown-Night.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/gear2.mp3',
    },
    {
      'dialogue': "Wha—?!", // index 17
      'backgroundImage': 'assets/images/bg/cutscene1.png',
      'characterName': 'You',
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },
    {
      'dialogue':
      "(You spotted someone behind you, but before you can react. You suddenly got knocked down to  the ground unconcious)",
      // index 18
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/hit2.mp3',
    },
    {
      'dialogue':
      "(You blink awake in a dimly lit room)", // index 19
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },
    {
      'dialogue': "Hey! Kid..? You alright? I'm sorry for knocking you down, I thought you were infected with brainrot.",
      // index 20
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/question.mp3',
    },
    {
      'dialogue': "There is a crazy infection called Brainrot that's spreading throughout the city right now.",
      // index 21
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/114.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },
    {
      'dialogue': "It's turning people into skibidi toilets! They infect people and rot their brains using loud music.",
      // index 22
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose2/213.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    {
      'dialogue': "(The girl pauses for a moment, looking at you with a mixture of sympathy and curiousity)",
      // index 23
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': '',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/144.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },
    {
      'dialogue': "I thought you are about to turn into an infected because you were just standing still in the middle of a dangerous city.",
      // index 24
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/sweat.mp3',
    },
    {
      'dialogue': " But you… you didn’t change. You’re still you. Somehow, you survived without getting infected.",
      // index 25
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/bulb.mp3',
    },
    {
      'dialogue': "Hey... I need your help...", // index 26
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/154.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/respond.mp3',
    },
    {
      'dialogue': "I am planning to save this city from brainrot.", // index 27
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/142.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/shy.mp3',
    },
    {
      'dialogue': "But i can't do it alone.", // index 28
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/153.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/sad.mp3',
    },
    {
      'dialogue': "Will you join me and help stop this skibidi infection?",
      // index 29
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/164.png',
          'position': 'right'
        }
      ],
      'showLives': false,
      'sfx': 'audio/sfx/emotion/question.mp3',
      'choices': [
        {
          'text': "Yes",
          'nextDialogueIndex': 30,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
//'sfx': 'audio/sfx/emotion/respond.mp3',
        },
        {
          'text': "I would be glad to help",
          'nextDialogueIndex': 30,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
//'sfx': 'audio/sfx/emotion/respond.mp3',
        },
      ]
    },
    {
      'dialogue': "Yey! Thank you for accepting..", // index 30
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characterName': 'Girl',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose2/252.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },
    {
      'dialogue': "My name is Meguri, but you can call me Mem. My name sounds similar to the word 'memory'.",
      // index 31
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/111.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/shy.mp3',
    },
    {
      'dialogue': "The infected are called as Skibdi Toilets, because they're humans transformed into human-headed toilets..",
      // index 32
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/111.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue': "They infect people with brainrot disease using their loud skibidi music...",
      // index 33
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
    {
      'dialogue': "Avoid prolonged exposure to skibidi music to prevent being infected.",
      // index 34
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/respond.mp3',
      'characterName': 'Mem',
    },
    {
      'dialogue': "You can cover your ears or strengthen your mind to resist the virus.",
      // index 35
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/141.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
      'characterName': 'Mem',
    },
    {
      'dialogue': "Alright, let's go to the other room. I need you to follow me.",
      // index 36
      'backgroundImage': 'assets/images/bg/inside5.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'sfx': 'audio/sfx/emotion/ding.mp3',
      'characterName': 'Mem',
    },
    {
      'dialogue': "(You followed Mem and walked to another room)", // index 37
      'backgroundImage': 'assets/images/bg/black screen.png',
      'sfx': 'audio/sfx/action/footstep6.mp3',
      'characterName': '',
    },
    {
      'dialogue': "Mem leads you to a room filled with books and scattered notes.",
      // index 38
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'sfx': 'audio/sfx/action/dooropen1.mp3',
      'characterName': '',
    },
    {
      'dialogue': "Alright! To see if you can survive against the infection, we must see how sharp your brain is!",
      // index 39
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose2/252.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },
    {
      'dialogue': "We need to go outside and find the source of the infection.",
      // index 40
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
    {
      'dialogue': "Skibidi Toilet’s weakness are correct facts and grammars.",
      // index 41
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/142.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    {
      'dialogue': "It hurts their rotten brains. They flush themselves when u attack them with it.",
      // index 42
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/142.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },
    {
      'dialogue': "Get the answers right, and you’ll defeat them!", // index 43
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/bulb.mp3',
    },
    {
      'dialogue': "You have 3 hearts!", // index 44
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/think.mp3',
    },
    {
      'dialogue': "Mess up three times, and it's game over. So, get ready to think.",
      // index 45
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/153.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sigh.mp3',
    },
    {
      'dialogue': "Here comes your first question! Pick the sentence that’s written right.",
      // index 46
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/111.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/question.mp3',
    },
    {
      'dialogue': "Alright let's go!", // index 47
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose2/222.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/cartoon.mp3',
    },


//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
                                                  { // 48
                                                    'dialogue': "He ____ like pizza. What should I put here to complete the sentence?",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/141.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/emotion/twinkle.mp3',
                                                    'isQuestion': true,
                                                    'choices': [
                                                      {
                                                        'text': "don't",
                                                        'nextDialogueIndex': 49,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                      {
                                                        'text': "doesn't",
                                                        'nextDialogueIndex': 51,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': true,
                                                      },
                                                      {
                                                        'text': "didn’t",
                                                        'nextDialogueIndex': 50,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                    ],
                                                  },
                                                  { // 49
                                                    'dialogue': "You’ve lost one of your lives! Stay sharp",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/143.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'incorrectChoiceGoTo': 48,
                                                    'sfx': 'audio/sfx/sound/wrong.mp3',
                                                  },
                                                  { // 50
                                                    'dialogue': "You’ve got three lives! Lose all three, and we start over!",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/143.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'incorrectChoiceGoTo': 48,
                                                    'sfx': 'audio/sfx/sound/wrong.mp3',
                                                  },
                                                  { // 51
                                                    'dialogue': "Correct! That's how we do it!!",
                                                    'nextDialogueIndex': 52,
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose2/252.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/sound/check2.mp3',
                                                  },
                                                  { // 52
                                                    'dialogue': "Let's tidy up this sentence! 'They ____ cleaning their room right now.' What’s the right word?",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/141.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/emotion/thinking.mp3',
                                                    'isQuestion': true,
                                                    'choices': [
                                                      {
                                                        'text': "is",
                                                        'nextDialogueIndex': 53,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                      {
                                                        'text': "are",
                                                        'nextDialogueIndex': 55,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': true,
                                                      },
                                                      {
                                                        'text': "was",
                                                        'nextDialogueIndex': 54,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                    ],
                                                  },
                                                  { // 53
                                                    'dialogue': "Oops! ‘Is’ doesn’t match with ‘they’. Try again!",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/143.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'incorrectChoiceGoTo': 52,
                                                    'sfx': 'audio/sfx/sound/wrong.mp3',
                                                  },
                                                  { // 54
                                                    'dialogue': "Nope! ‘Was’ is past tense, but the sentence says ‘right now’.",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/143.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'incorrectChoiceGoTo': 52,
                                                    'sfx': 'audio/sfx/sound/wrong.mp3',
                                                  },
                                                  { // 55
                                                    'dialogue': "Correct! 'They are cleaning' matches the subject and tense!",
                                                    'nextDialogueIndex': 56,
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose2/253.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/sound/check2.mp3',
                                                  },
                                                  { // 56
                                                    'dialogue': "Here's another! 'She ____ already eaten when I arrived.' Which word completes it?",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/141.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/emotion/thinking.mp3',
                                                    'isQuestion': true,
                                                    'choices': [
                                                      {
                                                        'text': "has",
                                                        'nextDialogueIndex': 57,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                      {
                                                        'text': "had",
                                                        'nextDialogueIndex': 58,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': true,
                                                      },
                                                      {
                                                        'text': "have",
                                                        'nextDialogueIndex': 57,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                    ],
                                                  },
                                                  { // 57
                                                    'dialogue': "Not quite! The second part is past tense, so use the past perfect form.",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/143.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'incorrectChoiceGoTo': 56,
                                                    'sfx': 'audio/sfx/sound/wrong.mp3',
                                                  },
                                                  { // 58
                                                    'dialogue': "Yes! 'She had already eaten' — that’s the past perfect form!",
                                                    'nextDialogueIndex': 59,
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose2/254.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/sound/check2.mp3',
                                                  },
                                                  { // 59
                                                    'dialogue': "Final one for now: 'Mem grabbed ___ apple from the table.' What fits best?",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/141.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/emotion/thinking.mp3',
                                                    'isQuestion': true,
                                                    'choices': [
                                                      {
                                                        'text': "a",
                                                        'nextDialogueIndex': 60,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                      {
                                                        'text': "an",
                                                        'nextDialogueIndex': 61,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': true,
                                                      },
                                                      {
                                                        'text': "the",
                                                        'nextDialogueIndex': 60,
                                                        'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                        'characterName': 'Mem',
                                                        'isCorrect': false,
                                                        'loseLifeOnIncorrect': true,
                                                      },
                                                    ],
                                                  },
                                                  { // 60
                                                    'dialogue': "Nope! ‘Apple’ starts with a vowel sound — check again!",
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose1/143.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'incorrectChoiceGoTo': 59,
                                                    'sfx': 'audio/sfx/sound/wrong.mp3',
                                                  },
                                                  { // 61
                                                    'dialogue': "Nice! 'An apple' is correct. You nailed it!",
                                                    'nextDialogueIndex': 62,
                                                    'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                    'characters': [
                                                      {
                                                        'sprite': 'assets/images/characters/pose2/254.png',
                                                        'position': 'right'
                                                      }
                                                    ],
                                                    'characterName': 'Mem',
                                                    'sfx': 'audio/sfx/sound/check2.mp3',
                                                  },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
    { // 62
      'dialogue': "Great job! You've proven to me that your mind is sharp.",
      'nextDialogueIndex': 63,
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/142.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/heart.mp3',
    },
    { // 63
      'dialogue': "Congrats on completing the tutorial!!",
      'nextDialogueIndex': 64,
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose2/252.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },
    { // 64
      'dialogue': "Since you’ve got the basics done... Let’s go outside and find the source of all this madness!",
      'nextDialogueIndex': 65,
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    { // 65
      'dialogue': "We’re going to the laboratory. I heard from other survivors that there are information about how to stop the skibidi infection there!",
      'nextDialogueIndex': 66,
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/141.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },
    { // 66
      'dialogue': "Let’s go! No time to waste! We’ve got the city to save!",
      'backgroundImage': 'assets/images/bg/messyroom.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/152.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

















































//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                                  //?           CHAPTER 2         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
    { // 67
      'dialogue': "The streets are eerily quiet, with only the flickering streetlights casting long shadows as the two of you walk in silence.",
      'backgroundImage': 'assets/images/bg/outside1.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep2.mp3',
    },
    { // 68
      'dialogue': "I can hear some skibidi toilets up ahead.",
      'backgroundImage': 'assets/images/bg/outside1.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/skibidi1.mp3',
    },
    { // 69
      'dialogue': "Stay alert.",
      'backgroundImage': 'assets/images/bg/outside1.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/respond.mp3',
    },
    { // 70
      'dialogue': "Let’s head towards the library. We can reach the laboratory faster if we go through there.",
      'backgroundImage': 'assets/images/bg/outside1.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/141.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },
    { // 71
      'dialogue': "The two of you walked towards the direction of the library.",
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep2.mp3',
    },
    { // 72
      'dialogue': "We are finally here at the library entrance.",
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },
    { // 73
      'dialogue': "Oh no, a skibidi toilet is blocking the door.",
      'backgroundImage': 'assets/images/bg/cutscene2.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/skibidi2.mp3',
    },
    { // 74
      'dialogue': "We have no choice but to fight it!",
      'backgroundImage': 'assets/images/bg/cutscene2.png',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
    { // 75
      'dialogue': "Skibidi dop dop dop yiz yiz skibidi skibidi skibidi—",
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/happy.png',
          'position': 'center'
        }
      ],
      'characterName': 'Skibidi Toilet',
      'sfx': 'audio/sfx/sound/skibidi3.mp3',
    },
    { // 76
      'dialogue': "As you can see, they’ve lost their brains and are saying random words.",
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/smile.png',
          'position': 'left'
        },
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
    { // 77
      'dialogue': "Oh no! It saw us!",
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/angry.png',
          'position': 'center'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/alert.mp3',
    },
    { // 78
      'dialogue': "They're afraid of correct grammar, attack him with this sentence! Quick!!",
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/angry.png',
          'position': 'left'
        },
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/skibidi3.mp3',
    },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
                                                      { // 79
                                                        'dialogue': "____ hate going to school",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/angry.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/143.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/skibidi3.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "Im",
                                                            'nextDialogueIndex': 80,
                                                            'nextBackgroundImage': 'assets/images/bg/door2.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "him",
                                                            'nextDialogueIndex': 81,
                                                            'nextBackgroundImage': 'assets/images/bg/door2.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "I",
                                                            'nextDialogueIndex': 82,
                                                            'nextBackgroundImage': 'assets/images/bg/door2.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                        ],
                                                      },

                                                      { // 80
                                                        'dialogue': "WRONG",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/happy.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/144.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/wrong.mp3',
                                                        'incorrectChoiceGoTo': 79,
                                                      },

                                                      { // 81
                                                        'dialogue': "WRONG",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/happy.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/144.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/wrong.mp3',
                                                        'incorrectChoiceGoTo': 79,
                                                      },

                                                      { // 82
                                                        'dialogue': "It’s working! Keep going!",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/sad.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/142.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/check2.mp3',
                                                      },

                                                      { // 83
                                                        'dialogue': "The man slip and _______",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/sad.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/142.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/skibidi3.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "fall",
                                                            'nextDialogueIndex': 84,
                                                            'nextBackgroundImage': 'assets/images/bg/door2.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "feel",
                                                            'nextDialogueIndex': 85,
                                                            'nextBackgroundImage': 'assets/images/bg/door2.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "fell",
                                                            'nextDialogueIndex': 86,
                                                            'nextBackgroundImage': 'assets/images/bg/door2.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                        ],
                                                      },

                                                      { // 84
                                                        'dialogue': "WRONG",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/happy.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/144.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/wrong.mp3',
                                                        'incorrectChoiceGoTo': 83,
                                                      },

                                                      { // 85
                                                        'dialogue': "WRONG",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/happy.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/144.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/wrong.mp3',
                                                        'incorrectChoiceGoTo': 83,
                                                      },

                                                      { // 86
                                                        'dialogue': "Hell yeah!",
                                                        'backgroundImage': 'assets/images/bg/door2.jpg',
                                                        'characters': [
                                                          {
                                                            'sprite': 'assets/images/characters/skibidi/sad.png',
                                                            'position': 'left'
                                                          },
                                                          {
                                                            'sprite': 'assets/images/characters/pose1/142.png',
                                                            'position': 'right'
                                                          }
                                                        ],
                                                        'characterName': 'Mem',
                                                        'sfx': 'audio/sfx/sound/check2.mp3',
                                                      },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
    {
      'dialogue': "RRRAAAAAAAAAAHHHHHHHH", // index 87
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/shocked.png',
          'position': 'center'
        }
      ],
      'characterName': 'Skibidi Toilet',
      'sfx': 'audio/sfx/sound/rah.mp3',
    },

    {
      'dialogue': "....", // index 88
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/dead.png',
          'position': 'center'
        }
      ],
      'characterName': 'Skibidi Toilet',
      'sfx': 'audio/sfx/sound/flush.mp3',
    },

    {
      'dialogue': "Amazing! The skibidi toilet flushed itself because it couldn’t handle a correct grammar.",
      // index 89
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/dead.png',
          'position': 'left'
        },
        {
          'sprite': 'assets/images/characters/pose1/152.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "You successfully defeated a skibidi toilet for the first time. Congratulations!",
      // index 90
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },

    {
      'dialogue': "Let’s hurry and head inside the library.", // index 91
      'backgroundImage': 'assets/images/bg/door2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/132.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/respond.mp3',
    },

    {
      'dialogue': "(You and Mem slowly opened the door and entered the library)",
      // index 92
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/dooropen1.mp3',
    },

    {
      'dialogue': "This is a library. Going to the library and reading books helps your mind become stronger.",
      // index 93
      'backgroundImage': 'assets/images/bg/library1.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose2/212.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "(Mem turns on the lights)", // index 94
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/131.png',
          'position': 'right'
        }
      ],
      'characterName': '',
      'sfx': 'audio/sfx/action/switch.mp3',
    },

    {
      'dialogue': "Reading is better when the lights are on.", // index 95
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/151.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "The more you read, the faster you can defeat the skibidi toilets.",
      // index 96
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/142.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },

    {
      'dialogue': "I highly recommend you to visit the library in your free time.",
      // index 97
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "(Mem hands you out a book)", // index 98
      'backgroundImage': 'assets/images/bg/cutscene3.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/gear2.mp3',
    },

    {
      'dialogue': "Here, try reading this book.", // index 99
      'backgroundImage': 'assets/images/bg/cutscene3.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/respond.mp3',
    },

    {
      'dialogue': "You can practice here. Answer them before we proceed to the next location!",
      // index 100
      'backgroundImage': 'assets/images/bg/cutscene3.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },

    {
      'dialogue': "pay attention to your hearts and only choose the correct answer.",
      // index 101
      'backgroundImage': 'assets/images/bg/cutscene3.png',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/141.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "Alright let's do this!", // index 102
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/152.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
                                              {
                                                'dialogue': "She ____ to school every day", // index 103
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/154.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/question.mp3',
                                                'isQuestion': true,
                                                'choices': [
                                                  {
                                                    'text': "game",
                                                    'nextDialogueIndex': 104,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                  {
                                                    'text': "goes",
                                                    'nextDialogueIndex': 106,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': true,
                                                  },
                                                  {
                                                    'text': "get",
                                                    'nextDialogueIndex': 105,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                ],
                                              },

                                              {
                                                'dialogue': "oops, that is wrong.", // index 104
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 103,
                                              },

                                              {
                                                'dialogue': "oops, that is wrong.", // index 105
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 103,
                                              },

                                              {
                                                'dialogue': "Yes! When we talk about he or she, we add -s to the action. So we say: ‘She goes’ or ‘He goes’.",
                                                // index 106
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/152.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/check2.mp3',
                                              },

                                              {
                                                'dialogue': "Next Question!", // index 107
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/151.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/respond.mp3',
                                              },

                                              {
                                                'dialogue': "This is my brother. ___ is a doctor.", // index 108
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/154.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/question.mp3',
                                                'isQuestion': true,
                                                'choices': [
                                                  {
                                                    'text': "He",
                                                    'nextDialogueIndex': 111,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': true,
                                                  },
                                                  {
                                                    'text': "She",
                                                    'nextDialogueIndex': 109,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                  {
                                                    'text': "It",
                                                    'nextDialogueIndex': 110,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                ],
                                              },

                                              {
                                                'dialogue': "nuh uh, brother is a boy, so that is not the correct answer.",
                                                // index 109
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 108,
                                              },

                                              {
                                                'dialogue': "try harder.", // index 110
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 108,
                                              },

                                              {
                                                'dialogue': "Good job! We say ‘he’ when talking about a boy, like your brother!",
                                                // index 111
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/152.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/check2.mp3',
                                              },

                                              {
                                                'dialogue': "Next Question!", // index 112
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/151.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/respond.mp3',
                                              },

                                              {
                                                'dialogue': "I ___ my homework yesterday.", // index 113
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/154.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/question.mp3',
                                                'isQuestion': true,
                                                'choices': [
                                                  {
                                                    'text': "do",
                                                    'nextDialogueIndex': 114,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                  {
                                                    'text': "did",
                                                    'nextDialogueIndex': 116,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': true,
                                                  },
                                                  {
                                                    'text': "done",
                                                    'nextDialogueIndex': 115,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                ],
                                              },

                                              {
                                                'dialogue': "Not quite! Think about how we talk about something from yesterday.",
                                                // index 114
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 113,
                                              },

                                              {
                                                'dialogue': "try again.", // index 115
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 113,
                                              },

                                              {
                                                'dialogue': "Yay! ‘Did’ is the right word when we talk about the past—like something you did yesterday!",
                                                // index 116
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/152.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/check2.mp3',
                                              },
                                              {
                                                'dialogue': "She ___ to the store yesterday.", // index 117
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/154.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/question.mp3',
                                                'isQuestion': true,
                                                'choices': [
                                                  {
                                                    'text': "go",
                                                    'nextDialogueIndex': 118,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                  {
                                                    'text': "went",
                                                    'nextDialogueIndex': 120,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': true,
                                                  },
                                                  {
                                                    'text': "gone",
                                                    'nextDialogueIndex': 119,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                ],
                                              },

                                              {
                                                'dialogue': "Oops! That’s not quite right. Think about the past tense of 'go'.",
                                                // index 118
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 117,
                                              },

                                              {
                                                'dialogue': "Hmm, not quite! 'Gone' is used in other situations. Try again.",
                                                // index 119
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 117,
                                              },

                                              {
                                                'dialogue': "Yay! ‘Went’ is the correct word for talking about the past—like something you did yesterday!",
                                                // index 120
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/152.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/check2.mp3',
                                              },
                                              {
                                                'dialogue': "They ___ a movie last night.", // index 121
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/154.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/emotion/question.mp3',
                                                'isQuestion': true,
                                                'choices': [
                                                  {
                                                    'text': "watch",
                                                    'nextDialogueIndex': 122,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                  {
                                                    'text': "watched",
                                                    'nextDialogueIndex': 124,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': true,
                                                  },
                                                  {
                                                    'text': "watching",
                                                    'nextDialogueIndex': 123,
                                                    'nextBackgroundImage': 'assets/images/bg/library2.jpg',
                                                    'characterName': 'Mem',
                                                    'isCorrect': false,
                                                    'loseLifeOnIncorrect': true,
                                                  },
                                                ],
                                              },

                                              {
                                                'dialogue': "Oops! That’s not correct. What’s the past tense of 'watch'?",
                                                // index 122
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 121,
                                              },

                                              {
                                                'dialogue': "Hmm, not quite! 'Watching' is for ongoing actions. Try again.",
                                                // index 123
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/153.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/wrong.mp3',
                                                'incorrectChoiceGoTo': 121,
                                              },

                                              {
                                                'dialogue': "Yay! ‘Watched’ is the correct word when talking about something that happened in the past!",
                                                // index 124
                                                'backgroundImage': 'assets/images/bg/library2.jpg',
                                                'characters': [
                                                  {
                                                    'sprite': 'assets/images/characters/pose1/152.png',
                                                    'position': 'right'
                                                  }
                                                ],
                                                'characterName': 'Mem',
                                                'sfx': 'audio/sfx/sound/check2.mp3',
                                              },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
    {
      'dialogue': "Great job!", // index 125
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "Now that you're all warmed up, let’s head outside and make our way to the laboratory.",
      // index 126
      'backgroundImage': 'assets/images/bg/library2.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/141.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },













































//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                              //?           CHAPTER 3         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
    {
      'dialogue': "(You and Mem goes outside the library)", // index 127
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/doorclose3.mp3',
    },

    {
      'dialogue': "(walking)", // index 128
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep6.mp3',
    },

    {
      'dialogue': "This place is a mess", // index 129
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sweat.mp3',
    },

    {
      'dialogue': "It's a sign that a fight broke out here near the laboratory.",
      // index 130
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },

    {
      'dialogue': "Look! I see the laboratory door up ahead!", // index 131
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/112.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "Ohh no...", // index 132
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sweat.mp3',
    },

    {
      'dialogue': "There are many skibidi toilets scattered everywhere...",
      // index 133
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/happy.png',
          'position': 'right'
        },
        {
          'sprite': 'assets/images/characters/skibidi/smile.png',
          'position': 'center'
        },
        {
          'sprite': 'assets/images/characters/skibidi/angry.png',
          'position': 'left'
        }
      ],
      'characterName': 'Mem',
      'showLives': false,
      'sfx': 'audio/sfx/sound/skibidi6.mp3',
    },

    {
      'dialogue': "Should we fight them?", // index 134
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/skibidi/happy.png',
          'position': 'right'
        },
        {
          'sprite': 'assets/images/characters/skibidi/smile.png',
          'position': 'center'
        },
        {
          'sprite': 'assets/images/characters/skibidi/angry.png',
          'position': 'left'
        }
      ],
      'characterName': 'Mem',
      'showLives': false,
      'sfx': 'audio/sfx/emotion/question.mp3',
      'choices': [
        {
          'text': "I don’t think we can win",
          'nextDialogueIndex': 135,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/outside6.jpg',
        },
        {
          'text': "no",
          'nextDialogueIndex': 135,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/outside6.jpg',
        },
        {
          'text': "Let’s avoid them if possible",
          'nextDialogueIndex': 135,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/outside6.jpg',
        }
      ]
    },

    {
      'dialogue': "You're right, sneaking past them without getting caught is impossible.",
      // index 135
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/124.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sigh.mp3',
    },

    {
      'dialogue': "what should we do?", // index 136
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/113.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/think.mp3',
      'showLives': false,
      'choices': [
        {
          'text': "Lets run for it.",
          'nextDialogueIndex': 137,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/outside6.jpg',
        }
      ]
    },

    {
      'dialogue': "You’re crazy....", // index 137
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/surprise.mp3',
    },

    {
      'dialogue': "But… looking at our situation, we don’t really have a choice.",
      // index 138
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/153.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/respond.mp3',
    },

    {
      'dialogue': "Let's do this on the count of 3..", // index 139
      'backgroundImage': 'assets/images/bg/outside6.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/111.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },

    {
      'dialogue': "1...", // index 140
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/bulb.mp3',
    },

    {
      'dialogue': "2...", // index 141
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/bulb.mp3',
    },

    {
      'dialogue': "3...", // index 142
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/bulb2.mp3',
    },

    {
      'dialogue': "RUN!!!", // index 143
      'backgroundImage': 'assets/images/bg/cutscene4.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/action/run2.mp3',
    },
    {
      'dialogue': "AAAAAHHHH!!!! There's so many skibidi toilets following us!",
      // index 144
      'backgroundImage': 'assets/images/bg/cutscene4.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/sound/many_skibidi.mp3',
    },
    {
      'dialogue': "WAIT!! You're too fast! don't leave me!!!", // index 145
      'backgroundImage': 'assets/images/bg/cutscene4.png',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/action/run.mp3',
    },
    {
      'dialogue': "There! Look the laboratory door!", // index 146
      'backgroundImage': 'assets/images/bg/door1.jpg',
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "Quickly! Let’s get inside!", // index 147
      'backgroundImage': 'assets/images/bg/door1.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/143.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/action/doorclose1.mp3',
    },

    {
      'dialogue': "Hurry and lock the door before they get in!", // index 148
      'backgroundImage': 'assets/images/bg/door1.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/141.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/chat.mp3',
    },

    {
      'dialogue': "(You locked the door)", // index 149
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/action/doorclose2.mp3',
    },

    {
      'dialogue': "Phew.. that was close.", // index 150
      'backgroundImage': 'assets/images/bg/hallway4.jpg',
      'characters': [
        {
          'sprite': 'assets/images/characters/pose1/151.png',
          'position': 'right'
        }
      ],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sweat.mp3',
    },

    {
      'dialogue': "We’re safe for now, but... it's only a matter of time before they break the door.", // index 151
      'backgroundImage': 'assets/images/bg/hallway4.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/113.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "We need to figure out what’s going on in this lab.", // index 152
      'backgroundImage': 'assets/images/bg/hallway4.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/111.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },

    {
      'dialogue': "let's go and explore this place, we might be able to find clues about the skibidi king.", // index 153
      'backgroundImage': 'assets/images/bg/hallway4.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/112.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },

    {
      'dialogue': "(walking)", // index 154
      'backgroundImage': 'assets/images/bg/b12.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep1.mp3',
    },

     {
      'dialogue': "This place is massive... Lets keep going.", // index 155
      'backgroundImage': 'assets/images/bg/b12.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/121.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "(walking)", // index 156
      'backgroundImage': 'assets/images/bg/b11.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/footstep2.mp3',
    },

    {
      'dialogue': "Let's check each room and see what we can find.", // index 157
      'backgroundImage': 'assets/images/bg/b11.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },

    {
      'dialogue': "(enters a room)", // index 158
      'backgroundImage': 'assets/images/bg/b10.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/dooropen3.mp3',
    },


    {
      'dialogue': "This looks like a place where the skibidi toilets were contained.", // index 159
      'backgroundImage': 'assets/images/bg/b10.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/113.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "But this is not what we were locking for. Lets go to another room.", // index 160
      'backgroundImage': 'assets/images/bg/b10.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/133.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/sigh.mp3',
    },

    {
      'dialogue': "(enters a room)", // index 161
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characterName': '',
      'sfx': 'audio/sfx/action/dooropen3.mp3',
    },

    {
      'dialogue': "This looks like the chemical lab where they experimented on the skibidi toilets.", // index 162
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/141.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/ding.mp3',
    },

    {
      'dialogue': "Look! There’s something here. Maybe we can use science to understand how to cure the Brainrot Infection!", // index 163
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/142.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/twinkle.mp3',
    },

    {
      'dialogue': "Science is amazing because it lets us do experiments to discover how things work and create cool things!", // index 164
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/152.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/cartoon.mp3',
    },

    {
      'dialogue': "Let’s test your knowledge about science!", // index 165
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/142.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/exclaim.mp3',
    },

    {
      'dialogue': "Try not to mess up, picking the wrong answer will reduce your heart because science can be dangerous if it’s done wrong.", // index 166
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
    },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
                                        {
                                            'dialogue': "Here’s your first science question! What part of a plant absorbs water from the soil?", // index 167
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/154.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/question.mp3',
                                            'isQuestion': true,
                                            'choices': [
                                              {
                                                'text': "Roots",
                                                'nextDialogueIndex': 169,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': true,
                                              },
                                              {
                                                'text': "Leaves",
                                                'nextDialogueIndex': 168,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                              {
                                                'text': "Flowers",
                                                'nextDialogueIndex': 168,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                            ],
                                          },

                                          {
                                            'dialogue': "Not quite! Think about where the plant's water comes from. Try again!", // index 168
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/wrong.mp3',
                                            'incorrectChoiceGoTo': 167,
                                          }, 
                                          {
                                            'dialogue': "Correct! The roots absorb water from the soil to keep the plant alive!", // index 169
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/check2.mp3',
                                          },
                                          
                                          {
                                            'dialogue': "Next, what happens to water when it gets heated up?", // index 170
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/154.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/question.mp3',
                                            'isQuestion': true,
                                            'choices': [
                                              {
                                                'text': "It freezes",
                                                'nextDialogueIndex': 171,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                              {
                                                'text': "It evaporates",
                                                'nextDialogueIndex': 172,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': true,
                                              },
                                              {
                                                'text': "It turns into ice",
                                                'nextDialogueIndex': 171,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                            ],
                                          },
                                          
                                          {
                                            'dialogue': "Think about what happens when water gets really hot. What happens to it? Try again!", // index 171
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/wrong.mp3',
                                            'incorrectChoiceGoTo': 170,
                                          },
                                          {
                                            'dialogue': "Correct! When water gets heated, it turns into vapor and rises up as evaporation!", // index 172
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/steam.mp3',
                                          },
                                          {
                                            'dialogue': "Next question...", // index 173
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/142.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/exclaim.mp3',
                                          },
                                          {
                                            'dialogue': "Which force pulls everything toward the ground?", // index 174
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/154.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/question.mp3',
                                            'isQuestion': true,
                                            'choices': [
                                              {
                                                'text': "Magnetism",
                                                'nextDialogueIndex': 175,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                              {
                                                'text': "Gravity",
                                                'nextDialogueIndex': 176,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': true,
                                              },
                                              {
                                                'text': "Electricity",
                                                'nextDialogueIndex': 175,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                            ],
                                          },
                                          
                                          {
                                            'dialogue': "Almost! Gravity is the force that keeps us grounded. Try again!", // index 175
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/wrong.mp3',
                                            'incorrectChoiceGoTo': 174,
                                          },

                                          {
                                            'dialogue': "Great! Gravity pulls everything down toward the Earth!", // index 176
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/fall.mp3',
                                          }, 
                                          {
                                            'dialogue': "Alright, last question! We’re almost there!", // index 177
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/142.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/exclaim.mp3',
                                          },
                                          {
                                            'dialogue': "Which system in our body helps us breathe?", // index 178
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/154.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/question.mp3',
                                            'isQuestion': true,
                                            'choices': [
                                              {
                                                'text': "Digestive system",
                                                'nextDialogueIndex': 179,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                              {
                                                'text': "Respiratory system",
                                                'nextDialogueIndex': 180,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': true,
                                              },
                                              {
                                                'text': "Nervous system",
                                                'nextDialogueIndex': 179,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                            ],
                                          },
                                          
                                          {
                                            'dialogue': "Think about what helps us breathe in air. What system is involved? Try again!", // index 179
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/wrong.mp3',
                                            'incorrectChoiceGoTo': 178,
                                          },
                                          {
                                            'dialogue': "Correct! The respiratory system helps us breathe by taking in oxygen and releasing carbon dioxide.", // index 180
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/breathing.mp3',
                                          },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
    {
      'dialogue': "Nice work! With your knowledge, defeating the skibidi king will be much more easier!", // index 181
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    {
      'dialogue': "Let's go and explore the next room!", // index 182
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    {
      'dialogue': "Let's go and explore the next room!", // index 183
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    {
      'dialogue':"(you and Mem left the science lab)", // index 184
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue': "Lets go to that room next!", // index 183
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    {
      'dialogue':"(you followed Mem)", // index 184
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"(Door opens)", // index 184
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/sound/dooropen2.mp3',
    },























//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                              //?           CHAPTER 4        //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?   
    {
      'dialogue': "Woah! We found the computer room!", // index 185
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    {
      'dialogue': "With this we can finally find the data we need to stop the brainrot infection!", // index 186
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    {
      'dialogue':"(Mem turned on the electricity)", // index 187
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue': "Nice! the computers still works fine.", // index 188
      'backgroundImage': 'assets/images/bg/b3.jpg',
      'characters': [{'sprite': 'assets/images/characters/pose1/143.png','position': 'right'}],
      'characterName': 'Mem',
      'sfx': 'audio/sfx/emotion/upset.mp3',
  	},
    //TODO CUTSCENE---------------------------------------------
    {
      'dialogue':"(Mem sat at the computer chair)", // index 189
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"alright, lets see what's inside.", // index 190
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    //TODO CUTSCENE---------------------------------------------
    {
      'dialogue':"Ohh no", // index 191
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
     {
      'dialogue':"the computers are locked.", // index 192
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"We need to use mathematics in order to open the computer and access their data...", // index 193
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"Get 3 wrong answers and the computer will lock… permanently...", // index 194
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"What do we do now?", // index 195
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue': "...", // index 196
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'showLives': false,
      'sfx': 'audio/sfx/emotion/question.mp3',
      'choices': [
        {
          'text': "Let me help",
          'nextDialogueIndex': 197,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
        },
        {
          'text': "don't worry bebe girl, I'll help you",
          'nextDialogueIndex': 197,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
        },
      ]
    },
    {
      'dialogue':"Really?!", // index 197
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"I knew I could count on you!", // index 198
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"Alright, I'll explain on how you can unlock the computer security system.", // index 199
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"The lock consist of 4 levels.", // index 200
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"It consist of Addition, Substraction, Multiplication and Division!", // index 201
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"You need to pass all of them to unlock the computer.", // index 202
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue': "Are you ready?", // index 203
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'showLives': false,
      'sfx': 'audio/sfx/emotion/question.mp3',
      'choices': [
        {
          'text': "Heck Yeah!",
          'nextDialogueIndex': 204,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
        },
        {
          'text': "I'm ready",
          'nextDialogueIndex': 204,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
        },
        {
          'text': "Let's do this",
          'nextDialogueIndex': 204,
          'isCorrect': null,
          'nextBackgroundImage': 'assets/images/bg/inside5.jpg',
        },
      ]
    },
    {
      'dialogue':"Alright, The 1st Level is Addition.", // index 204
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"Addition is when we put numbers together to make a bigger number!", // index 205
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"Like if you have 1 apple and I give you 1 more, now you have 2 apples!", // index 206
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
    {
      'dialogue':"Alright, Let's do this!... Starting Level 1...", // index 207
      'characters': [{'sprite': 'assets/images/characters/pose1/164.png','position': 'right' }],
      'backgroundImage': 'assets/images/bg/black screen.png',
      'characterName': '',
      'sfx': 'audio/sfx/emotion/dot.mp3',
    },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
{
                                            'dialogue': "What is 2 + 3?", // index 208
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/154.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/emotion/question.mp3',
                                            'isQuestion': true,
                                            'choices': [
                                              {
                                                'text': "4",
                                                'nextDialogueIndex': 209,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': true,
                                              },
                                              {
                                                'text': "6",
                                                'nextDialogueIndex': 209,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                              {
                                                'text': "5",
                                                'nextDialogueIndex': 210,
                                                'nextBackgroundImage': 'assets/images/bg/b3.jpg',
                                                'characterName': 'Mem',
                                                'isCorrect': false,
                                                'loseLifeOnIncorrect': true,
                                              },
                                            ],
                                          },

                                          {
                                            'dialogue': "Oops… that’s not right. Be careful, we only have limited chances!", // index 209
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/wrong.mp3',
                                            'incorrectChoiceGoTo': 167,
                                          }, 
                                          {
                                            'dialogue': "Yay! That’s right! 2 and 3 together make a 5!", // index 210
                                            'backgroundImage': 'assets/images/bg/b3.jpg',
                                            'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                            'characterName': 'Mem',
                                            'sfx': 'audio/sfx/sound/check2.mp3',
                                          },
                                          { 
                                          'dialogue': "Next Question!",  // index 211
                                          'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                          'characters': [{'sprite': 'assets/images/characters/pose1/153.png','position': 'right'}],
                                          'characterName': 'Mem',
                                          'sfx': 'audio/sfx/sound/check2.mp3',
                                          },






    


  ];
}