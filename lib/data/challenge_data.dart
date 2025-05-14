class ChallengeData {
  static const List<Map<String, dynamic>> challengeData = [
    {






//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                                 //?           LEVEL 1         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?



      'dialogue':
          "In Level 1, you will encounter English words and grammar problems.", // index 0
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developers',
      'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
      'index': 0,
    },
    {
      'dialogue': "You have to solve them to proceed.", // index 1
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developers',
      'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
    },
    {
      'dialogue': "There are 10 questions. If you answer them all correctly, you will pass and unlock the next level.", // index 2
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developers',
      'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
    },
    {
      'dialogue': "Good luck, and do your best!", // index 3
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developers',
      'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
    },
    {
      'dialogue': "Question 1.", // index 4
      'backgroundImage': 'assets/images/bg/inside9.jpg',
      'characterName': 'Developers',
      'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
    },

//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//*QUESTION 1
                                                { // 5
                                                  'dialogue': "He ____ like pizza. What should I put here to complete the sentence?",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "don't",
                                                      'nextDialogueIndex': 6,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "doesn't",
                                                      'nextDialogueIndex': 8,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "didn’t",
                                                      'nextDialogueIndex': 7,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 6
                                                  'dialogue': "You’ve lost one of your lives! Stay sharp",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 5,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 7
                                                  'dialogue': "You’ve got three lives! Lose all three, and we start over!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 5,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 8
                                                  'dialogue': "Correct! That's how we do it!!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },
//*QUESTION 2
                                                { // 9
                                                  'dialogue': "Which sentence is grammatically correct?",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "She go to school every day.",
                                                      'nextDialogueIndex': 10,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "She goes to school every day.",
                                                      'nextDialogueIndex': 12,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "She going to school every day.",
                                                      'nextDialogueIndex': 11,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 10
                                                  'dialogue': "Oops! That's not the correct sentence.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 9,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 11
                                                  'dialogue': "Not quite right! Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 9,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 12
                                                  'dialogue': "Nice job! You chose the correct sentence!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 3
                                                { // 13
                                                  'dialogue': "Choose the correct past tense form: 'They ___ a movie last night.'",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "watch",
                                                      'nextDialogueIndex': 14,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "watched",
                                                      'nextDialogueIndex': 16,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "watches",
                                                      'nextDialogueIndex': 15,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 14
                                                  'dialogue': "That's the present tense. Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 13,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 15
                                                  'dialogue': "Close, but not the past tense!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 13,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 16
                                                  'dialogue': "Correct! 'Watched' is the past tense of 'watch.'",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 4
                                                { // 17
                                                  'dialogue': "Select the correct article: 'I saw ___ elephant at the zoo.'",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "a",
                                                      'nextDialogueIndex': 18,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "an",
                                                      'nextDialogueIndex': 20,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "the",
                                                      'nextDialogueIndex': 19,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 18
                                                  'dialogue': "Not quite! 'Elephant' starts with a vowel sound.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 17,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 19
                                                  'dialogue': "'The' doesn't fit here. Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 17,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 20
                                                  'dialogue': "Nice! 'An' comes before vowel sounds like 'elephant.'",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 5
                                                { // 21
                                                  'dialogue': "Fill in the blank: 'We are going ___ the park.'",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "in",
                                                      'nextDialogueIndex': 22,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "to",
                                                      'nextDialogueIndex': 24,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "at",
                                                      'nextDialogueIndex': 23,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 22
                                                  'dialogue': "'In' doesn’t fit here. Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 21,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 23
                                                  'dialogue': "Not quite! You go 'to' a place.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 21,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 24
                                                  'dialogue': "Correct! You go 'to' a place.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 6
                                                { // 25
                                                  'dialogue': "Which word is the noun in this sentence? 'The cat slept on the sofa.'",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "slept",
                                                      'nextDialogueIndex': 26,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "on",
                                                      'nextDialogueIndex': 27,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "cat",
                                                      'nextDialogueIndex': 28,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 26
                                                  'dialogue': "'Slept' is a verb. Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 25,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 27
                                                  'dialogue': "'On' is a preposition. Look again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 25,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 28
                                                  'dialogue': "Correct! 'Cat' is a noun.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },
//*QUESTION 7
                                                { // 29
                                                  'dialogue': "Choose the correct sentence:",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "He are my friend.",
                                                      'nextDialogueIndex': 30,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "He is my friend.",
                                                      'nextDialogueIndex': 32,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "He am my friend.",
                                                      'nextDialogueIndex': 31,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 30
                                                  'dialogue': "'Are' is not correct with 'He'. Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 29,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 31
                                                  'dialogue': "'Am' is only used with 'I'. Keep going!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 29,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 32
                                                  'dialogue': "Nice! 'He is' is the correct form.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 8
                                                { // 33
                                                  'dialogue': "Which is the correct plural form?",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "Childs",
                                                      'nextDialogueIndex': 34,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "Children",
                                                      'nextDialogueIndex': 36,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "Childes",
                                                      'nextDialogueIndex': 35,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 34
                                                  'dialogue': "'Childs' is not a real word! Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 33,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 35
                                                  'dialogue': "'Childes' is incorrect spelling.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 33,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 36
                                                  'dialogue': "Great job! 'Children' is the correct plural.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 9
                                                { // 37
                                                  'dialogue': "Choose the correct form: 'They ___ playing in the garden.'",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "is",
                                                      'nextDialogueIndex': 38,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "are",
                                                      'nextDialogueIndex': 40,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "am",
                                                      'nextDialogueIndex': 39,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 38
                                                  'dialogue': "'Is' is for singular subjects. 'They' is plural.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 37,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 39
                                                  'dialogue': "'Am' is only used with 'I'. Try again!",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 37,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 40
                                                  'dialogue': "Correct! 'They are playing' is the right form.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },

//*QUESTION 10
                                                { // 41
                                                  'dialogue': "Which sentence is correct?",
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                  'isQuestion': true,
                                                  'choices': [
                                                    {
                                                      'text': "I has a new bag.",
                                                      'nextDialogueIndex': 42,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                    {
                                                      'text': "I have a new bag.",
                                                      'nextDialogueIndex': 44,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': true,
                                                    },
                                                    {
                                                      'text': "I haved a new bag.",
                                                      'nextDialogueIndex': 43,
                                                      'nextBackgroundImage': 'assets/images/bg/messyroom.jpg',
                                                      'characterName': 'Mem',
                                                      'isCorrect': false,
                                                      'loseLifeOnIncorrect': true,
                                                    },
                                                  ],
                                                },
                                                { // 42
                                                  'dialogue': "'Has' is used with 'he/she/it', not 'I'.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 41,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 43
                                                  'dialogue': "'Haved' is not a correct word.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'incorrectChoiceGoTo': 41,
                                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                },
                                                { // 44
                                                  'dialogue': "Perfect! 'I have a new bag' is correct.",
                                                  'backgroundImage': 'assets/images/bg/messyroom.jpg',
                                                  'characterName': 'Mem',
                                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//























//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                                 //?           LEVEL 2         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?

//*SCIENCE INTRO
{ // 45
  'dialogue': "Welcome to Level 2 — Science Time!",
  'backgroundImage': 'assets/images/bg/lab1.jpg',
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
  'index': 45,
},
{ // 46
  'dialogue': "Science helps us understand how the world works through observation and experiments.",
  'backgroundImage': 'assets/images/bg/lab1.jpg',
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
},
{ // 47
  'dialogue': "From gravity to plants to electricity — science is all around you.",
  'backgroundImage': 'assets/images/bg/lab1.jpg',
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
},
{ // 48
  'dialogue': "Are you ready to test your brain with science questions?",
  'backgroundImage': 'assets/images/bg/lab1.jpg',
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
},
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//

//*QUESTION 1 - Science
                                                                            { // 49
                                                                              'dialogue': "What do plants need to make their food through photosynthesis?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Oxygen and sugar",
                                                                                  'nextDialogueIndex': 50,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab2.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Sunlight, water, and carbon dioxide",
                                                                                  'nextDialogueIndex': 52,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab2.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Soil and heat",
                                                                                  'nextDialogueIndex': 51,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab2.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 50
                                                                              'dialogue': "Oxygen is a product, not an ingredient in photosynthesis.",
                                                                              'backgroundImage': 'assets/images/bg/lab2.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 49,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 51
                                                                              'dialogue': "Soil helps plants grow, but it's not used in photosynthesis.",
                                                                              'backgroundImage': 'assets/images/bg/lab2.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 49,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 52
                                                                              'dialogue': "Correct! Plants use sunlight, water, and carbon dioxide to make their food.",
                                                                              'backgroundImage': 'assets/images/bg/lab2.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 2 - Science
                                                                            { // 53
                                                                              'dialogue': "What is the center of our Solar System?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Earth",
                                                                                  'nextDialogueIndex': 54,
                                                                                  'nextBackgroundImage': 'assets/images/bg/space1.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "The Sun",
                                                                                  'nextDialogueIndex': 56,
                                                                                  'nextBackgroundImage': 'assets/images/bg/space1.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "The Moon",
                                                                                  'nextDialogueIndex': 55,
                                                                                  'nextBackgroundImage': 'assets/images/bg/space1.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 54
                                                                              'dialogue': "Earth orbits the Sun, not the other way around!",
                                                                              'backgroundImage': 'assets/images/bg/space1.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 53,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 55
                                                                              'dialogue': "The Moon orbits Earth. Try again!",
                                                                              'backgroundImage': 'assets/images/bg/space1.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 53,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 56
                                                                              'dialogue': "That's right! The Sun is at the center of the Solar System.",
                                                                              'backgroundImage': 'assets/images/bg/space1.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 3 - Science
                                                                            { // 57
                                                                              'dialogue': "What do we call animals that eat only plants?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Carnivores",
                                                                                  'nextDialogueIndex': 58,
                                                                                  'nextBackgroundImage': 'assets/images/bg/jungle.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Omnivores",
                                                                                  'nextDialogueIndex': 59,
                                                                                  'nextBackgroundImage': 'assets/images/bg/jungle.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Herbivores",
                                                                                  'nextDialogueIndex': 60,
                                                                                  'nextBackgroundImage': 'assets/images/bg/jungle.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 58
                                                                              'dialogue': "Carnivores eat only meat, not plants!",
                                                                              'backgroundImage': 'assets/images/bg/jungle.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 57,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 59
                                                                              'dialogue': "Omnivores eat both plants and meat. Try again!",
                                                                              'backgroundImage': 'assets/images/bg/jungle.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 57,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 60
                                                                              'dialogue': "Correct! Herbivores eat only plants.",
                                                                              'backgroundImage': 'assets/images/bg/jungle.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 4 - Science
                                                                            { // 61
                                                                              'dialogue': "Which of these is a gas at room temperature?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Water",
                                                                                  'nextDialogueIndex': 62,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab3.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Oxygen",
                                                                                  'nextDialogueIndex': 64,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab3.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Iron",
                                                                                  'nextDialogueIndex': 63,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab3.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 62
                                                                              'dialogue': "Water is a liquid at room temperature.",
                                                                              'backgroundImage': 'assets/images/bg/lab3.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 61,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 63
                                                                              'dialogue': "Iron is a solid metal, not a gas.",
                                                                              'backgroundImage': 'assets/images/bg/lab3.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 61,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 64
                                                                              'dialogue': "Right! Oxygen is a gas at room temperature.",
                                                                              'backgroundImage': 'assets/images/bg/lab3.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 5 - Science
                                                                            { // 65
                                                                              'dialogue': "What do plants need for photosynthesis?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Moonlight",
                                                                                  'nextDialogueIndex': 66,
                                                                                  'nextBackgroundImage': 'assets/images/bg/garden.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Sunlight",
                                                                                  'nextDialogueIndex': 68,
                                                                                  'nextBackgroundImage': 'assets/images/bg/garden.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Starlight",
                                                                                  'nextDialogueIndex': 67,
                                                                                  'nextBackgroundImage': 'assets/images/bg/garden.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 66
                                                                              'dialogue': "Moonlight isn't strong enough. Try again!",
                                                                              'backgroundImage': 'assets/images/bg/garden.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 65,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 67
                                                                              'dialogue': "Starlight is too weak for photosynthesis.",
                                                                              'backgroundImage': 'assets/images/bg/garden.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 65,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 68
                                                                              'dialogue': "Correct! Plants need sunlight to make their food.",
                                                                              'backgroundImage': 'assets/images/bg/garden.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 6 - Science
                                                                            { // 69
                                                                              'dialogue': "What organ pumps blood through the body?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Lungs",
                                                                                  'nextDialogueIndex': 70,
                                                                                  'nextBackgroundImage': 'assets/images/bg/hospital.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Heart",
                                                                                  'nextDialogueIndex': 72,
                                                                                  'nextBackgroundImage': 'assets/images/bg/hospital.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Liver",
                                                                                  'nextDialogueIndex': 71,
                                                                                  'nextBackgroundImage': 'assets/images/bg/hospital.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 70
                                                                              'dialogue': "Lungs help you breathe, not pump blood.",
                                                                              'backgroundImage': 'assets/images/bg/hospital.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 69,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 71
                                                                              'dialogue': "The liver cleans your blood but doesn’t pump it.",
                                                                              'backgroundImage': 'assets/images/bg/hospital.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 69,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 72
                                                                              'dialogue': "Right! The heart pumps blood all around your body.",
                                                                              'backgroundImage': 'assets/images/bg/hospital.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 7 - Science
                                                                            { // 73
                                                                              'dialogue': "Which state of matter is ice?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Gas",
                                                                                  'nextDialogueIndex': 74,
                                                                                  'nextBackgroundImage': 'assets/images/bg/freezer.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Liquid",
                                                                                  'nextDialogueIndex': 75,
                                                                                  'nextBackgroundImage': 'assets/images/bg/freezer.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Solid",
                                                                                  'nextDialogueIndex': 76,
                                                                                  'nextBackgroundImage': 'assets/images/bg/freezer.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 74
                                                                              'dialogue': "Nope. Gas would be like steam or air.",
                                                                              'backgroundImage': 'assets/images/bg/freezer.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 73,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 75
                                                                              'dialogue': "Water is liquid, but ice is frozen!",
                                                                              'backgroundImage': 'assets/images/bg/freezer.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 73,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 76
                                                                              'dialogue': "Correct! Ice is the solid form of water.",
                                                                              'backgroundImage': 'assets/images/bg/freezer.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 8 - Science
                                                                            { // 77
                                                                              'dialogue': "Which tool do scientists use to look at tiny objects?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Telescope",
                                                                                  'nextDialogueIndex': 78,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab2.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Microscope",
                                                                                  'nextDialogueIndex': 80,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab2.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Periscope",
                                                                                  'nextDialogueIndex': 79,
                                                                                  'nextBackgroundImage': 'assets/images/bg/lab2.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 78
                                                                              'dialogue': "Telescope is for looking at stars, not tiny cells.",
                                                                              'backgroundImage': 'assets/images/bg/lab2.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 77,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 79
                                                                              'dialogue': "Periscopes are used in submarines. Not for science!",
                                                                              'backgroundImage': 'assets/images/bg/lab2.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 77,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 80
                                                                              'dialogue': "Correct! A microscope helps us see very small things.",
                                                                              'backgroundImage': 'assets/images/bg/lab2.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 9 - Science
                                                                            { // 81
                                                                              'dialogue': "What gas do humans breathe in to stay alive?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Carbon Dioxide",
                                                                                  'nextDialogueIndex': 82,
                                                                                  'nextBackgroundImage': 'assets/images/bg/park.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Oxygen",
                                                                                  'nextDialogueIndex': 84,
                                                                                  'nextBackgroundImage': 'assets/images/bg/park.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Hydrogen",
                                                                                  'nextDialogueIndex': 83,
                                                                                  'nextBackgroundImage': 'assets/images/bg/park.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 82
                                                                              'dialogue': "Carbon dioxide is what we breathe out.",
                                                                              'backgroundImage': 'assets/images/bg/park.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 81,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 83
                                                                              'dialogue': "Hydrogen is explosive! Not for breathing.",
                                                                              'backgroundImage': 'assets/images/bg/park.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 81,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 84
                                                                              'dialogue': "Yes! Oxygen keeps us alive.",
                                                                              'backgroundImage': 'assets/images/bg/park.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//*QUESTION 10 - Science
                                                                            { // 85
                                                                              'dialogue': "Which of the following is a source of renewable energy?",
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                                              'isQuestion': true,
                                                                              'choices': [
                                                                                {
                                                                                  'text': "Coal",
                                                                                  'nextDialogueIndex': 86,
                                                                                  'nextBackgroundImage': 'assets/images/bg/powerplant.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Wind",
                                                                                  'nextDialogueIndex': 88,
                                                                                  'nextBackgroundImage': 'assets/images/bg/powerplant.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': true,
                                                                                },
                                                                                {
                                                                                  'text': "Gasoline",
                                                                                  'nextDialogueIndex': 87,
                                                                                  'nextBackgroundImage': 'assets/images/bg/powerplant.jpg',
                                                                                  'characterName': 'Mem',
                                                                                  'isCorrect': false,
                                                                                  'loseLifeOnIncorrect': true,
                                                                                },
                                                                              ],
                                                                            },
                                                                            { // 86
                                                                              'dialogue': "Coal is non-renewable. It can run out.",
                                                                              'backgroundImage': 'assets/images/bg/powerplant.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 85,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 87
                                                                              'dialogue': "Gasoline is made from oil and is not renewable.",
                                                                              'backgroundImage': 'assets/images/bg/powerplant.jpg',
                                                                              'characterName': 'Mem',
                                                                              'incorrectChoiceGoTo': 85,
                                                                              'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                                            },
                                                                            { // 88
                                                                              'dialogue': "That's right! Wind is a renewable energy source.",
                                                                              'backgroundImage': 'assets/images/bg/powerplant.jpg',
                                                                              'characterName': 'Mem',
                                                                              'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                                            },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//












//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                                 //?           LEVEL 3         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//*MATH INTRODUCTION
{ // 89
  'dialogue': "Welcome to the Math Level! Math is all around us—from counting coins to measuring time.",
  'backgroundImage': 'assets/images/bg/classroom.jpg',
  'characterName': 'Mem',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
},
{ // 90
  'dialogue': "You’ll practice adding, subtracting, multiplying, and dividing numbers.",
  'backgroundImage': 'assets/images/bg/classroom.jpg',
  'characterName': 'Mem',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
},
{ // 91
  'dialogue': "Ready? Let's test your math skills!",
  'backgroundImage': 'assets/images/bg/classroom.jpg',
  'characterName': 'Mem',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
},

//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//

//*QUESTION 1 - Addition
                                                      { // 92
                                                        'dialogue': "What is 5 + 3?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "8",
                                                            'nextDialogueIndex': 95,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "6",
                                                            'nextDialogueIndex': 93,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "9",
                                                            'nextDialogueIndex': 94,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 93
                                                        'dialogue': "Nope! Try counting again carefully.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 92,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 94
                                                        'dialogue': "Not quite! Try again.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 92,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 95
                                                        'dialogue': "Nice job! 5 + 3 = 8.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 2 – Subtraction
                                                      { // 96
                                                        'dialogue': "What is 10 − 4?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "6",
                                                            'nextDialogueIndex': 99,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "5",
                                                            'nextDialogueIndex': 97,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "7",
                                                            'nextDialogueIndex': 98,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 97
                                                        'dialogue': "Close, but not quite. Try subtracting again!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 96,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 98
                                                        'dialogue': "Not this time—have another go!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 96,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 99
                                                        'dialogue': "Great! 10 − 4 = 6.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },

//*QUESTION 3 – Addition
                                                      { // 100
                                                        'dialogue': "What is 12 + 7?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "19",
                                                            'nextDialogueIndex': 103,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "18",
                                                            'nextDialogueIndex': 101,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "20",
                                                            'nextDialogueIndex': 102,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 101
                                                        'dialogue': "Add a bit more!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 100,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 102
                                                        'dialogue': "That’s too much—try again.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 100,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 103
                                                        'dialogue': "Correct! 12 + 7 = 19.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 4 – Multiplication
                                                      { // 104
                                                        'dialogue': "What is 4 × 6?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "24",
                                                            'nextDialogueIndex': 107,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "20",
                                                            'nextDialogueIndex': 105,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "26",
                                                            'nextDialogueIndex': 106,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 105
                                                        'dialogue': "Too low—multiply again!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 104,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 106
                                                        'dialogue': "A little high. Try once more!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 104,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 107
                                                        'dialogue': "Exactly! 4 × 6 = 24.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 5 – Division
                                                      { // 108
                                                        'dialogue': "What is 15 ÷ 3?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "5",
                                                            'nextDialogueIndex': 111,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "6",
                                                            'nextDialogueIndex': 109,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "4",
                                                            'nextDialogueIndex': 110,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 109
                                                        'dialogue': "Too high—divide again!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 108,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 110
                                                        'dialogue': "Too low—try once more!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 108,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 111
                                                        'dialogue': "Spot on! 15 ÷ 3 = 5.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 6 – Subtraction
                                                      { // 112
                                                        'dialogue': "What is 20 − 9?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "11",
                                                            'nextDialogueIndex': 115,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "12",
                                                            'nextDialogueIndex': 113,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "10",
                                                            'nextDialogueIndex': 114,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 113
                                                        'dialogue': "One too many—subtract again!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 112,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 114
                                                        'dialogue': "A bit low—try again.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 112,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 115
                                                        'dialogue': "Correct! 20 − 9 = 11.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 7 – Multiplication
                                                      { // 116
                                                        'dialogue': "What is 7 × 8?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "56",
                                                            'nextDialogueIndex': 119,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "54",
                                                            'nextDialogueIndex': 117,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "58",
                                                            'nextDialogueIndex': 118,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 117
                                                        'dialogue': "Too low—remember your 7-times table!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 116,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 118
                                                        'dialogue': "Too high—try again.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 116,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 119
                                                        'dialogue': "Excellent! 7 × 8 = 56.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 8 – Division
                                                      { // 120
                                                        'dialogue': "What is 18 ÷ 2?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "9",
                                                            'nextDialogueIndex': 123,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "8",
                                                            'nextDialogueIndex': 121,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "10",
                                                            'nextDialogueIndex': 122,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 121
                                                        'dialogue': "Too low—divide once more!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 120,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 122
                                                        'dialogue': "Too high—try again.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 120,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 123
                                                        'dialogue': "Correct! 18 ÷ 2 = 9.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 9 – Mixed (Add & Subtract)
                                                      { // 124
                                                        'dialogue': "Solve: 6 + 4 − 3 = ?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "7",
                                                            'nextDialogueIndex': 127,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "6",
                                                            'nextDialogueIndex': 125,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "8",
                                                            'nextDialogueIndex': 126,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 125
                                                        'dialogue': "Check your addition and subtraction steps!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 124,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 126
                                                        'dialogue': "Almost—try the calculation again.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 124,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 127
                                                        'dialogue': "Nice work! 6 + 4 − 3 = 7.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//*QUESTION 10 – Mixed (Multiply & Divide)
                                                      { // 128
                                                        'dialogue': "What is (8 × 5) ÷ 2?",
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                                        'isQuestion': true,
                                                        'choices': [
                                                          {
                                                            'text': "20",
                                                            'nextDialogueIndex': 131,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': true,
                                                          },
                                                          {
                                                            'text': "22",
                                                            'nextDialogueIndex': 129,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                          {
                                                            'text': "18",
                                                            'nextDialogueIndex': 130,
                                                            'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                                            'characterName': 'Mem',
                                                            'isCorrect': false,
                                                            'loseLifeOnIncorrect': true,
                                                          },
                                                        ],
                                                      },
                                                      { // 129
                                                        'dialogue': "A bit high—multiply and divide carefully!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 128,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 130
                                                        'dialogue': "Too low—check the steps again!",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'incorrectChoiceGoTo': 128,
                                                        'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                                      },
                                                      { // 131
                                                        'dialogue': "Excellent! (8 × 5) ÷ 2 = 20.",
                                                        'backgroundImage': 'assets/images/bg/classroom.jpg',
                                                        'characterName': 'Mem',
                                                        'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                                      },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//








//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
                                 //?           LEVEL 4         //
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?//?
//* INTRO TO LEVEL 4 - Mixed Subjects
{ // 132
  'dialogue': "Welcome to Level 4. This level is the ultimate challenge!",
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
  'backgroundImage': 'assets/images/bg/laboratory.jpg',
},
{ // 133
  'dialogue': "Here, you'll face a mix of English, Math, and Science questions.",
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
  'backgroundImage': 'assets/images/bg/laboratory.jpg',
},
{ // 134
  'dialogue': "These questions are tricky, but not impossible—just like real learning!",
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
  'backgroundImage': 'assets/images/bg/laboratory.jpg',
},
{ // 135
  'dialogue': "Use everything you've learned so far. Let’s begin!",
  'characterName': 'Developers',
  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
  'backgroundImage': 'assets/images/bg/laboratory.jpg',
},

//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//

                                  //*QUESTION 1 – ENGLISH (Word Usage)
                                  { // 136
                                    'dialogue': "Which sentence uses the word 'their' correctly?",
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                    'isQuestion': true,
                                    'choices': [
                                      {
                                        'text': "Their going to the market.",
                                        'nextDialogueIndex': 137,
                                        'nextBackgroundImage': 'assets/images/bg/library.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                      {
                                        'text': "The students forgot their books.",
                                        'nextDialogueIndex': 139,
                                        'nextBackgroundImage': 'assets/images/bg/library.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': true,
                                      },
                                      {
                                        'text': "I saw their at the park.",
                                        'nextDialogueIndex': 138,
                                        'nextBackgroundImage': 'assets/images/bg/library.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                    ],
                                  },
                                  { // 137
                                    'dialogue': "'Their' is used to show possession, not as a substitute for 'they’re'.",
                                    'backgroundImage': 'assets/images/bg/library.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 136,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 138
                                    'dialogue': "Oops! That’s not how 'their' is used. Try again.",
                                    'backgroundImage': 'assets/images/bg/library.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 136,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 139
                                    'dialogue': "Correct! 'The students forgot their books' is the right usage.",
                                    'backgroundImage': 'assets/images/bg/library1.jpg',
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                  },

                                  //*QUESTION 2 – MATH (Division with Remainder)
                                  { // 140
                                    'dialogue': "What is 17 divided by 3?",
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                    'isQuestion': true,
                                    'choices': [
                                      {
                                        'text': "5 R2",
                                        'nextDialogueIndex': 143,
                                        'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': true,
                                      },
                                      {
                                        'text': "6 R1",
                                        'nextDialogueIndex': 141,
                                        'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                      {
                                        'text': "4 R1",
                                        'nextDialogueIndex': 142,
                                        'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                    ],
                                  },
                                  { // 141
                                    'dialogue': "Close, but check your division again!",
                                    'backgroundImage': 'assets/images/bg/classroom.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 140,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 142
                                    'dialogue': "Try again—17 divided by 3 is more than 4.",
                                    'backgroundImage': 'assets/images/bg/classroom.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 140,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 143
                                    'dialogue': "Nice! 17 divided by 3 is 5 with a remainder of 2.",
                                    'backgroundImage': 'assets/images/bg/classroom.jpg',
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                  },

                                  //*QUESTION 3 – SCIENCE (Planet Order)
                                  { // 144
                                    'dialogue': "Which planet is third from the Sun?",
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                    'isQuestion': true,
                                    'choices': [
                                      {
                                        'text': "Earth",
                                        'nextDialogueIndex': 147,
                                        'nextBackgroundImage': 'assets/images/bg/space.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': true,
                                      },
                                      {
                                        'text': "Mars",
                                        'nextDialogueIndex': 145,
                                        'nextBackgroundImage': 'assets/images/bg/space.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                      {
                                        'text': "Venus",
                                        'nextDialogueIndex': 146,
                                        'nextBackgroundImage': 'assets/images/bg/space.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                    ],
                                  },
                                  { // 145
                                    'dialogue': "Mars is the fourth planet. Think earlier!",
                                    'backgroundImage': 'assets/images/bg/space.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 144,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 146
                                    'dialogue': "Venus is second from the Sun.",
                                    'backgroundImage': 'assets/images/bg/space.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 144,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 147
                                    'dialogue': "Yes! Earth is the third planet from the Sun.",
                                    'backgroundImage': 'assets/images/bg/space.jpg',
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                  },
//** QUESTION 4 – ENGLISH (Tenses)
                                  { // 148
                                    'dialogue': "Which sentence is in the past tense?",
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                    'isQuestion': true,
                                    'choices': [
                                      {
                                        'text': "She walks to school.",
                                        'nextDialogueIndex': 149,
                                        'nextBackgroundImage': 'assets/images/bg/street.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                      {
                                        'text': "She walked to school.",
                                        'nextDialogueIndex': 151,
                                        'nextBackgroundImage': 'assets/images/bg/street.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': true,
                                      },
                                      {
                                        'text': "She is walking to school.",
                                        'nextDialogueIndex': 150,
                                        'nextBackgroundImage': 'assets/images/bg/street.jpg',
                                        'characterName': 'Mem',
                                        'isCorrect': false,
                                        'loseLifeOnIncorrect': true,
                                      },
                                    ],
                                  },
                                  { // 149
                                    'dialogue': "'Walks' is present tense.",
                                    'backgroundImage': 'assets/images/bg/street.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 148,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 150
                                    'dialogue': "'Is walking' is present continuous tense.",
                                    'backgroundImage': 'assets/images/bg/street.jpg',
                                    'characterName': 'Mem',
                                    'incorrectChoiceGoTo': 148,
                                    'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                  },
                                  { // 151
                                    'dialogue': "Correct! 'Walked' is in the past tense.",
                                    'backgroundImage': 'assets/images/bg/street.jpg',
                                    'characterName': 'Mem',
                                    'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                  },
                                //*QUESTION 5 – MATH (Multiple Operations)
                                { // 152
                                  'dialogue': "What is 6 + 4 × 2?",
                                  'characterName': 'Mem',
                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                  'isQuestion': true,
                                  'choices': [
                                    {
                                      'text': "20",
                                      'nextDialogueIndex': 153,
                                      'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': false,
                                      'loseLifeOnIncorrect': true,
                                    },
                                    {
                                      'text': "14",
                                      'nextDialogueIndex': 155,
                                      'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': true,
                                    },
                                    {
                                      'text': "16",
                                      'nextDialogueIndex': 154,
                                      'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': false,
                                      'loseLifeOnIncorrect': true,
                                    },
                                  ],
                                },
                                { // 153
                                  'dialogue': "Check the order of operations—multiply before adding!",
                                  'backgroundImage': 'assets/images/bg/classroom.jpg',
                                  'characterName': 'Mem',
                                  'incorrectChoiceGoTo': 152,
                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                },
                                { // 154
                                  'dialogue': "Almost! Try following multiplication first.",
                                  'backgroundImage': 'assets/images/bg/classroom.jpg',
                                  'characterName': 'Mem',
                                  'incorrectChoiceGoTo': 152,
                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                },
                                { // 155
                                  'dialogue': "Great! 4 × 2 = 8, then 6 + 8 = 14.",
                                  'backgroundImage': 'assets/images/bg/classroom.jpg',
                                  'characterName': 'Mem',
                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                },

                                //*QUESTION 6 – ENGLISH (Synonyms)
                                { // 156
                                  'dialogue': "Which word means the same as 'happy'?",
                                  'characterName': 'Mem',
                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                  'isQuestion': true,
                                  'choices': [
                                    {
                                      'text': "Sad",
                                      'nextDialogueIndex': 157,
                                      'nextBackgroundImage': 'assets/images/bg/library.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': false,
                                      'loseLifeOnIncorrect': true,
                                    },
                                    {
                                      'text': "Joyful",
                                      'nextDialogueIndex': 159,
                                      'nextBackgroundImage': 'assets/images/bg/library.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': true,
                                    },
                                    {
                                      'text': "Angry",
                                      'nextDialogueIndex': 158,
                                      'nextBackgroundImage': 'assets/images/bg/library.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': false,
                                      'loseLifeOnIncorrect': true,
                                    },
                                  ],
                                },
                                { // 157
                                  'dialogue': "'Sad' is the opposite of happy.",
                                  'backgroundImage': 'assets/images/bg/library.jpg',
                                  'characterName': 'Mem',
                                  'incorrectChoiceGoTo': 156,
                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                },
                                { // 158
                                  'dialogue': "'Angry' isn't the same as happy.",
                                  'backgroundImage': 'assets/images/bg/library.jpg',
                                  'characterName': 'Mem',
                                  'incorrectChoiceGoTo': 156,
                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                },
                                { // 159
                                  'dialogue': "Correct! 'Joyful' means the same as happy.",
                                  'backgroundImage': 'assets/images/bg/library.jpg',
                                  'characterName': 'Mem',
                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                },

                                //*QUESTION 7 – SCIENCE (States of Matter)
                                { // 160
                                  'dialogue': "Which state of matter has a definite shape and volume?",
                                  'characterName': 'Mem',
                                  'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                  'isQuestion': true,
                                  'choices': [
                                    {
                                      'text': "Solid",
                                      'nextDialogueIndex': 163,
                                      'nextBackgroundImage': 'assets/images/bg/lab.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': true,
                                    },
                                    {
                                      'text': "Gas",
                                      'nextDialogueIndex': 161,
                                      'nextBackgroundImage': 'assets/images/bg/lab.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': false,
                                      'loseLifeOnIncorrect': true,
                                    },
                                    {
                                      'text': "Liquid",
                                      'nextDialogueIndex': 162,
                                      'nextBackgroundImage': 'assets/images/bg/lab.jpg',
                                      'characterName': 'Mem',
                                      'isCorrect': false,
                                      'loseLifeOnIncorrect': true,
                                    },
                                  ],
                                },
                                { // 161
                                  'dialogue': "Gases take the shape and volume of their container.",
                                  'backgroundImage': 'assets/images/bg/lab.jpg',
                                  'characterName': 'Mem',
                                  'incorrectChoiceGoTo': 160,
                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                },
                                { // 162
                                  'dialogue': "Liquids have a volume but not a definite shape.",
                                  'backgroundImage': 'assets/images/bg/lab.jpg',
                                  'characterName': 'Mem',
                                  'incorrectChoiceGoTo': 160,
                                  'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                                },
                                { // 163
                                  'dialogue': "Right! Solids have a definite shape and volume.",
                                  'backgroundImage': 'assets/images/bg/lab.jpg',
                                  'characterName': 'Mem',
                                  'sfx': 'assets/audio/sfx/sound/check2.mp3',
                                },

                              //*QUESTION 8 – MATH (Addition with Larger Numbers)
                              { // 164
                                'dialogue': "What is 987 + 654?",
                                'characterName': 'Mem',
                                'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                'isQuestion': true,
                                'choices': [
                                  {
                                    'text': "1,641",
                                    'nextDialogueIndex': 165,
                                    'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': true,
                                  },
                                  {
                                    'text': "1,631",
                                    'nextDialogueIndex': 167,
                                    'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': false,
                                    'loseLifeOnIncorrect': true,
                                  },
                                  {
                                    'text': "1,627",
                                    'nextDialogueIndex': 166,
                                    'nextBackgroundImage': 'assets/images/bg/classroom.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': false,
                                    'loseLifeOnIncorrect': true,
                                  },
                                ],
                              },
                              { // 165
                                'dialogue': "Great! 987 + 654 = 1,641.",
                                'backgroundImage': 'assets/images/bg/classroom.jpg',
                                'characterName': 'Mem',
                                'sfx': 'assets/audio/sfx/sound/check2.mp3',
                              },
                              { // 166
                                'dialogue': "Close, but check your addition again.",
                                'backgroundImage': 'assets/images/bg/classroom.jpg',
                                'characterName': 'Mem',
                                'incorrectChoiceGoTo': 164,
                                'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                              },
                              { // 167
                                'dialogue': "Almost! Try adding again, carefully.",
                                'backgroundImage': 'assets/images/bg/classroom.jpg',
                                'characterName': 'Mem',
                                'incorrectChoiceGoTo': 164,
                                'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                              },

                              //*QUESTION 9 – ENGLISH (Plural Forms)
                              { // 168
                                'dialogue': "What is the plural of 'child'?",
                                'characterName': 'Mem',
                                'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                'isQuestion': true,
                                'choices': [
                                  {
                                    'text': "Childs",
                                    'nextDialogueIndex': 169,
                                    'nextBackgroundImage': 'assets/images/bg/street.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': false,
                                    'loseLifeOnIncorrect': true,
                                  },
                                  {
                                    'text': "Children",
                                    'nextDialogueIndex': 171,
                                    'nextBackgroundImage': 'assets/images/bg/street.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': true,
                                  },
                                  {
                                    'text': "Childrens",
                                    'nextDialogueIndex': 170,
                                    'nextBackgroundImage': 'assets/images/bg/street.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': false,
                                    'loseLifeOnIncorrect': true,
                                  },
                                ],
                              },
                              { // 169
                                'dialogue': "'Childs' is not the correct plural form.",
                                'backgroundImage': 'assets/images/bg/street.jpg',
                                'characterName': 'Mem',
                                'incorrectChoiceGoTo': 168,
                                'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                              },
                              { // 170
                                'dialogue': "'Childrens' is not correct either.",
                                'backgroundImage': 'assets/images/bg/street.jpg',
                                'characterName': 'Mem',
                                'incorrectChoiceGoTo': 168,
                                'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                              },
                              { // 171
                                'dialogue': "Correct! The plural of 'child' is 'children'.",
                                'backgroundImage': 'assets/images/bg/street.jpg',
                                'characterName': 'Mem',
                                'sfx': 'assets/audio/sfx/sound/check2.mp3',
                              },

                              //*QUESTION 10 – SCIENCE (Water Cycle)
                              { // 172
                                'dialogue': "What is the process by which water moves from the Earth's surface to the atmosphere and back?",
                                'characterName': 'Mem',
                                'sfx': 'assets/audio/sfx/emotion/twinkle.mp3',
                                'isQuestion': true,
                                'choices': [
                                  {
                                    'text': "Photosynthesis",
                                    'nextDialogueIndex': 173,
                                    'nextBackgroundImage': 'assets/images/bg/lab.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': false,
                                    'loseLifeOnIncorrect': true,
                                  },
                                  {
                                    'text': "Water Cycle",
                                    'nextDialogueIndex': 175,
                                    'nextBackgroundImage': 'assets/images/bg/lab.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': true,
                                  },
                                  {
                                    'text': "Evaporation",
                                    'nextDialogueIndex': 174,
                                    'nextBackgroundImage': 'assets/images/bg/lab.jpg',
                                    'characterName': 'Mem',
                                    'isCorrect': false,
                                    'loseLifeOnIncorrect': true,
                                  },
                                ],
                              },
                              { // 173
                                'dialogue': "Photosynthesis is the process by which plants make food.",
                                'backgroundImage': 'assets/images/bg/lab.jpg',
                                'characterName': 'Mem',
                                'incorrectChoiceGoTo': 172,
                                'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                              },
                              { // 174
                                'dialogue': "Evaporation is part of the water cycle but isn't the whole process.",
                                'backgroundImage': 'assets/images/bg/lab.jpg',
                                'characterName': 'Mem',
                                'incorrectChoiceGoTo': 172,
                                'sfx': 'assets/audio/sfx/sound/wrong.mp3',
                              },
                              { // 175
                                'dialogue': "That's right! The water cycle describes the movement of water on Earth.",
                                'backgroundImage': 'assets/images/bg/lab.jpg',
                                'characterName': 'Mem',
                                'sfx': 'assets/audio/sfx/sound/check2.mp3',
                              },
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//
//!=================================================QUESTIONS!===================================================//












  ];
}
