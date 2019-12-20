/* File: Tyler_Torrella_chooseownadventure.ch
 * Purpose: Choose your own adventure! Explore the world as a duck.*/

// declaration
#include <time.h>
string_t player, bestFriend, response, responseTwo, minigameStart, typingRace, sleepEnable = "True", direction, fightChoice, ready;
int one = 1, two = 2, three = 3, four = 4, five = 5, six = 6, seconds, minutes, wroteLetter, left, right, forwards, backwards, lottery, notGonnaHappen; // 10 ms
clock_t before = clock();

// introduction
void intro() {
    printf("Please enter your name.\n");
    scanf("%s", &player);
    
    printf("Please enter your best friend's name.\n");
    scanf("%s", &bestFriend);
    
    printf("Do you want sleeps disabled? Type 'yes' if so, anything else if not.\n");
    scanf("%s", &response);
    if (response == "yes" || response == "Yes" || response == "YES" || response == "y" || response == "Y") {
        one = 0;
        two = 0;
        three = 0;
        four = 0;
        five = 0;
        six = 0;
        sleepEnable = "False";
    }
    
    printf("Do you want to see a plot diagram detailing all possible endings? Type 'yes' if so, anything else if not.\n");
    scanf("%s", &response);
    if (response == "yes" || response == "Yes" || response == "YES" || response == "y" || response == "Y") {
        printf("=============================[DOG DROPS BALL WHAT DO YOU DO?]=============================\n");
        printf("                                             |                                                  \n");
        printf("(LAUGH IN THEIR FACE)-----------------(GRAB THE BALL)---------------------(FIND A NEW TOY)\n");
        printf(" |                                           |                                          | \n");
        printf(" |                                           |                                          | \n");
        printf(" |                                           |                                          | \n");
        printf(" |        (fight alligator)--------------(run away)------------(call on the dogs)       | \n");
        printf(" |                |                          |                           |              | \n");
        printf(" |                v                          v                           v              | \n");
        printf(" |       [KILL ALL ALLIGATORS]   [BECOME DINOSAUR WRECK HAVOC]   [SUMMON PUPPIES]       | \n");
        printf(" |                                                                       |              | \n");
        printf(" |                                                                     (wait)           | \n");
        printf(" |                                                                       v              | \n");
        printf(" |                                                   (say CODE, get told BILLY)         | \n");
        printf(" |                                                                                      | \n");
        printf(" |                                                                                      | \n");
        printf(" |                                                                                      | \n");
        printf(" |                                                                                      | \n");
        printf(" |                                                                                      | \n");
        printf(" |-(follow them)-----------------(stay there)-------(write apology letter)              | \n");
        printf("        |                              |                      |                         | \n");
        printf("        |                              |             (type it perfectly)                | \n");
        printf("        v                              v                      v                         | \n");
        printf("[BECOME A SURVIVOR]             [WAIT FOREVER]       [BE A GOOD FRIEND]                 | \n");
        printf("                                                                                        | \n");
        printf("                                                                                        | \n");
        printf("                                                                                        | \n");
        printf("                                                                                        | \n");
        printf("                                                                                        | \n");
        printf("                                                                                        | \n");
        printf(" (enter laser tag)---(enter seven eleven)------------(enter temple)---------------------| \n");
        printf("        |                     |                            |                              \n");
        printf("        |                     |             (guess code right? code is BILLY)             \n");
        printf("        |                     |                    |                  |                   \n");
        printf("        |                     |                   <no>              <yes>                 \n");
        printf("        |                     |                    |                  |                   \n");
        printf("        v                     v                    v                  v                   \n");
        printf("[ABANDON DOG BE BAD] [GAMBLE GET NOTHING]        [DIE]  [ * BEST ENDING * ]               \n\n");
        printf("Say 'ready' when ready.\n");
        do {
            scanf("%s", &ready);
            if (ready != "ready" && ready != "Ready" && ready != "READY") {
                printf("No, type 'ready'.");
            }
        } while (ready != "ready" && ready != "Ready" && ready != "READY");
    }
    
    printf("Your name is %s, and you are a duck. Your best friend is a golden retriever named %s.\n", player, bestFriend);
    sleep(three);
    printf("As you trot down a hill, %s accidentally drops his tennis ball from his mouth.\n", bestFriend);
    sleep(three);
    printf("It rolls down the hill and onto the edge of the lake at the bottom of the lake.\n");
    sleep(three);
    printf("%s looks at you sad and hungry for his ball. They are too lazy to get the ball themselves.\n", bestFriend);
    sleep(three);
    printf("%s:   ", bestFriend);
    sleep(one);
    printf("Bark\n");
    sleep(two);
    printf("This is truly a crisis.\n");
    
    sleep(two);
    
    printf("Do you . . .\n\n");
    do {
        printf(">grab the ball\n");
        printf(">laugh in their face\n");
        printf(">find a new toy\n");
        scanf("%s", &response);
        if (response != "grab the ball" && response != "laugh in their face" && response != "find a new toy") {
            printf("Invalid response. Respond with the exact words for an option.\n");
        }
    } while (response != "grab the ball" && response != "laugh in their face" && response != "find a new toy");
}

// option 1
void optionOne() {
    printf("Your friend is in great peril! You, the mighty %s, must retrieve the ball.\n", player);
    sleep(three);
    printf("With vigor and extreme courage, you trot down the hill to get the ball.\n");
    sleep(three);
    printf("You're here! Triumphantly reaching the ball, you reach out for it-\n");
    sleep(three);
    printf("Haha kidding, you're a duck.\n");
    sleep(two);
    printf("You fall face flat into the lake after an awkward attempt at picking up the ball with your wings.\n");
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("<duck sounds>\n");
    sleep(two);
    printf("Oh no! You just remembered, this lake has alligators! You can see one swimming towards you . . .\n");
    
    sleep(four);
    
    printf("Do you . . .\n\n");
    do {
        printf(">fight alligator\n");
        printf(">fly away\n");
        printf(">call on the dogs\n");
        scanf("%s", &responseTwo);
        if (responseTwo != "fight alligator" && responseTwo != "fly away" && responseTwo != "call on the dogs") {
            printf("Invalid response. Respond with the exact words for an option.\n");
        }
    } while (responseTwo != "fight alligator" && responseTwo != "fly away" && responseTwo != "call on the dogs");
}

// end 1
void endOne() {
    printf("Since the dawn of time, alligators have always endangered ducks.\n");
    sleep(three);
    printf("The time has come to end this! You swim towards the alligator, ready to exact justice!\n");
    sleep(three);
    printf("= - = - = - = - = - = - ENGAGING FIGHT MODE - = - = - = - = - = - =\n");
    sleep(two);
    printf("%s:     7 HP                                  Alligator:     40 HP\n", player);
    sleep(one);
    do {
        printf(">aggressive quack\n>duckonator\n>prepare for attack\n");
        scanf("%s", &fightChoice);
        if (fightChoice != "aggressive quack" && fightChoice != "duckonator" && fightChoice != "prepare for attack") {
            printf("Invalid response. Respond with the exact words for an option.\n");
        }
    } while (fightChoice != "aggressive quack" && fightChoice != "duckonator" && fightChoice != "prepare for attack");
    if (fightChoice == "aggressive quack") {
        printf("You let out a ferocious quack.\n");
        sleep(one);
        printf("%s:   ", player);
        sleep(one);
        printf("Q ");
        sleep(one);
        printf("U ");
        sleep(one);
        printf("A ");
        sleep(one);
        printf("C ");
        sleep(one);
        printf("K ");
        sleep(two);
        printf("Alligator is unaffected.\n");
        sleep(two);
    }
    if (fightChoice == "duckonator") {
        printf("You pull out the duckonator and try to shoot him in the eye!\n");
        sleep(two);
        printf("It misses.\n");
    }
    if (fightChoice == "prepare for attack") {
        printf("You prepare for the Alligator’s attack (knowing full well it means nothing).\n");
        sleep(four);
    }
    printf("Alligator’s Turn!\n");
    sleep(two);
    printf("Alligator uses ");
    sleep(one);
    printf("CHOMP.\n");
    sleep(two);
    printf("Alligator:   ");
    sleep(one);
    printf("nom\n");
    sleep(two);
    printf("You have been eaten within one bite. Just to be a jerk, it also bites the tennis ball before swimming away.\n");
    sleep(four);
    printf("Battle phase over :(\n");
    sleep(two);
    printf("SEVERAL MONTHS LATER . . .\n");
    sleep(four);
    printf("After %s made you die by being too lazy to get their own ball, they spiraled into a dog-pression.\n", bestFriend);
    sleep(four);
    printf("But. . . little did they know, you DIDN'T die from the alligator. Since you were swallowed, you stayed\nalive in the stomach of the alligator. . .\n");
    sleep(five);
    printf("In fact, you escaped a little while later by killing the alligator from the inside. You escaped with guts\non your wings and a newfound determination -\n");
    sleep(six);
    printf("DESTROYING THE ALLIGATOR KINGDOM\n");
    sleep(two);
    printf("You will exact your revenge.\n");
    sleep(two);
    printf(" - The End . . . ? -\n");
}

// end 2
void endTwo() {
    printf("Screw the ball, you're flying out of here!\n");
    sleep(three);
    printf("You spread your wings and attempt to fly out of the lake.\n");
    sleep(three);
    printf("Even though you're a DUCK you are able to fly out of the lake with tremendous strength.\n");
    sleep(five);
    printf("Alligator:   ");
    sleep(one);
    printf("yo what the-\n");
    sleep(two);
    printf("You inhale and breath fire onto the alligator, roasting it into a fine cuisine.\n");
    sleep(four);
    printf("Wow, you're not just a duck - you are %s - DUCKZILLA.\n", player);
    sleep(three);
    printf("Realizing your newfound power, you spread your twenty-feet wings as you suddenly quadruple in size.\n");
    sleep(five);
    printf("You fly to a nearby city and utterly demolish it, %s panting on your back.\n", bestFriend);
    sleep(three);
    printf("Everyone shall tremble under your power.\n");
    sleep(three);
    printf(" - Duckzilla End -\n");
}

// end 3
void endThree() {
    printf("It is time to unleash hell.\n");
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("%s, summon the wolf pack!\n", bestFriend);
    sleep(three);
    printf("%s hears your cry for help and howls into the sky. After several seconds...\n", bestFriend);
    sleep(five);
    printf("Alligator:   ");
    sleep(one);
    printf("yo, what the-\n");
    sleep(three);
    printf("Hundreds of puppies can be seen in the distance running towards you .\n");
    sleep(five);
    printf("They stampede onto the alligator and, not knowing what to do, start playing with it.\n");
    sleep(five);
    printf("The alligator is engulfed in puppies. It chokes on the cuteness.\n");
    sleep(three);
    printf("You escape with the sudden distraction and see %s playing with the other puppies.\n", bestFriend);
    sleep(three);
    printf("You start playing with them too.\n");
    sleep(two);
    printf(" - iranoutofideasforendings End -\n");
    sleep(20);
    printf("You are still playing with the puppies.\n");
    sleep(5);
    printf("Yep, still are.\n");
    sleep(5);
    printf("Still playing with them.\n");
    sleep(5);
    printf("After playing with the puppies for an extended period of time, one of them barks.\n");
    sleep(two);
    printf("Puppy:   ");
    sleep(one);
    printf("What do you desire to know?\n");
    sleep(two);
    printf(">say ANYTHING (literally. type anything.)\n");
    scanf("%s", &response);
    if (response == "code" || response == "'code'" || response == "Code" || response == "CODE") {
        sleep(one);
        printf("Puppy:   ");
        sleep(one);
        printf("The secret code to the temple is BILLY.\n");
        sleep(two);
        printf("Interesting . . . but what could it mean . . . ?\n");
        sleep(two);
    } else {
        sleep(one);
        printf("Puppy:   ");
        sleep(one);
        printf("bark\n");
        sleep(one);
        printf("It looks like it doesn't understand, and has lost the ability to speak. Oh well.\n");
    }
}

// option 2
void optionTwo() {
    printf("%s:   ", player);
    sleep(one);
    printf("haha\n");
    sleep(two);
    printf("%s is hurt by your bullying. He runs away into the woods to the left of the lake.\n", bestFriend);
    sleep(four);
    printf("Wow, you suck.\n");
    
    sleep(two);
    
    printf("Do you . . .\n\n");
    do {
        printf(">follow them\n");
        printf(">stay there\n");
        printf(">write apology letter\n");
        scanf("%s", &responseTwo);
        if (responseTwo != "follow them" && responseTwo != "stay there" && responseTwo != "write apology letter") {
            printf("Invalid response. Respond with the exact words for an option.\n");
        }
    } while (responseTwo != "follow them" && responseTwo != "stay there" && responseTwo != "write apology letter");
}

// end 4
void endFour() {
    printf("You run after %s, but quickly realize dogs are faster than ducks.\n", bestFriend);
    sleep(three);
    printf("You find yourself lost in the woods. Which direction do you go to?\n");
    sleep(three);
    do {
        printf("\n>left\n");
        printf(">right\n");
        printf(">forwards\n");
        printf(">backwards\n");
        scanf("%s", &direction);
        
        if (direction != "left" && direction != "right" && direction != "forwards" && direction != "backwards") {
            printf("Invalid response. Respond with the exact words for an option.\n");
        }
        if (direction == "left") {
            if (left == 0) {
                printf("You try going left, but there's just thick vines everywhere. You turn back.\n");
                left = 1;
            } else {
                printf("You already went that direction.\n");
            }
        }
        if (direction == "right") {
            if (right == 0) {
                printf("You try going right, but there's a gigantic mountain. You turn back.\n");
                right = 1;
            } else {
                printf("You already went that direction.\n");
            }
        }
        if (direction == "forwards") {
            if (forwards == 0) {
                printf("You try going forwards, but there's a rock wall blocking your path. You turn back.\n");
                forwards = 1;
            } else {
                printf("You already went that direction.\n");
            }
        }
        if (direction == "backwards") {
            if (backwards == 0) {
                printf("You try going back the way you came, but somehow there are trees there now. You turn back.\n");
                backwards = 1;
            } else {
                printf("You already went that direction.\n");
            }
        }
    } while (forwards == 0 || backwards == 0 || left == 0 || right == 0);
    printf("Oh crap, you're lost.\n");
    sleep(two);
    printf("%s:   ", player);
    sleep(one);
    printf("Oh crap, I'm lost.\n");
    sleep(two);
    printf("You desperately start trying to find your way out, but it seems like you are now lost in the jungle.\n");
    sleep(four);
    printf("You rest your head on the ground to sleep.\n");
    sleep(six);
    printf("THE NEXT MORNING\n");
    sleep(one);
    printf("You wake up and start foraging for materials.\n");
    sleep(three);
    printf("You make a shelter. You manage to get food from a nearby river. You start making your own weapons.\n");
    sleep(six);
    printf("You find other ducks who have similarly lost their dog friend and got lost and are now really cool.\n");
    sleep(six);
    printf("You form a tribe. You start a village. You form a nation.\n");
    sleep(three);
    printf("You start more civilizations, taking over towns and eventually the entire world.\n");
    sleep(four);
    printf("But you never found %s despite your efforts to travel the world.\n", bestFriend);
    sleep(four);
    printf("You wonder where they are now . . .\n");
    sleep(three);
    printf(" - Lost Dog Ending -\n");
}

// end 5
void endFive() {
    printf("Yeah. They're too sensitive. They shouldn't have got upset at you for laughing at them.\n");
    sleep(four);
    printf("They'll come back! You stand in place like a statue, waiting for them to be reasonable and come back.\n");
    sleep(five);
    printf("SEVENTEEN YEARS LATER\n");
    sleep(two);
    printf("You wake up off the ground. It's another normal day.\n");
    sleep(three);
    printf("Wait. ");
    sleep(one);
    printf("Is that -?!\n");
    sleep(one);
    printf("%s:   ", bestFriend);
    sleep(one);
    printf("Bark\n");
    sleep(two);
    printf("%s:   ", player);
    sleep(one);
    printf("huzzah\n");
    sleep(two);
    printf("They have finally returned! You hug them and talk about the past seventeen years.\n");
    sleep(five);
    printf("He talks about how he had conquered Mars, and grown seven legs, and -\n");
    sleep(four);
    printf("You wake up from your dream. Oh, they’re still not here.\n");
    sleep(four);
    printf("Well. Whatever. He'll come back to you.\n");
    sleep(three);
    printf("Eventually.\n");
    sleep(two);
    printf(" - Sad Duck Ending - \n");
}

// minigame - "thinking. . ."
void thinking() {
    printf("Thinking");
    int count;
    while (count < 3) {
        count = count + 1;
        sleep(1);
        printf(" .");
    }
    sleep(1);
    printf("\n");
}

// minigame 6; typing
void minigameSix() {
    // pre-explanation of game
    printf("Hmmm . . . you decide you must write an amazing apology letter.\n");
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("quack\n");
    sleep(two);
    printf("You sit down and pluck a feather on your body to use as a quill.\n");
    sleep(three);
    printf("And then you pull out the ink bottle and paper that all ducks always have on them all the time.\n");
    sleep(five);
    printf("Okay, time to write a letter.\n");
    sleep(two);
    printf("= - = - = - MINIGAME: WRITING THE LETTER - = - = - =\n");
    printf("Type 'explain' to continue.\n");
    do {
        scanf("%s", &minigameStart);
        if (minigameStart != "explain") {
            printf("Yeah, you spelled 'explain' wrong.\n");
        }
    } while (minigameStart != "explain");
    
    // explanation of game
    printf("You will be prompted with a sentence at the start of every round.\n");
    sleep(four);
    printf("You must type it exactly! If you misspell or say anything wrong, the game is over.\n");
    sleep(four);
    printf("\n= - = - = - = - = - = - = - = - = - = - = - = - = - = - = - =\n");
    sleep(three);
    printf("Are you ready to write a letter?\n");
    printf(">yes\n");
    printf(">no\n");
    do {
        scanf("%s", &minigameStart);
        if (minigameStart != "yes" && minigameStart != "no") {
            printf("Try typing 'yes' or 'no'.\n");
        }
    } while (minigameStart != "yes" && minigameStart != "no");
    
    /* rounds 1-5
     * game starts off with thinking() function for visual effect
     * says thing to type, if you type it right you get to continue */
    if (minigameStart == "yes") {
        wroteLetter = 1;
        printf("Let's do this!\n= - = - = - = - = - = - = - = - = - = - = - = - = - = - = - =\n");
        sleep(one);
        
        thinking();
        printf(">hi best friend\n");
        
        scanf("%s", &typingRace);
        if (typingRace == "hi best friend") {
            printf("Success!\n");
            sleep(two);
            
            thinking();
            printf(">sorry for being mean\n");
            
            scanf("%s", &typingRace);
            if (typingRace == "sorry for being mean") {
                printf("Success!\n");
                sleep(two);
                
                thinking();
                printf(">you are super cool\n");
                
                scanf("%s", &typingRace);
                if (typingRace == "you are super cool") {
                    printf("Success!\n");
                    sleep(two);
                    
                    thinking();
                    printf(">hope we can stay friends yo\n");
                    
                    scanf("%s", &typingRace);
                    if (typingRace == "hope we can stay friends yo") {
                        printf("Success!\n");
                        sleep(two);
                        
                        thinking();
                        printf("Final Round\n= - = - = - = - = - = - = - = - = - =\n");
                        printf(">peace out homie catch you on the flip side\n");
                            
                        scanf("%s", &typingRace);
                        if (typingRace == "peace out homie catch you on the flip side") {
                            wroteLetter = 2;
                        }
                    }
                }
            }
        }
    }
    
    if (minigameStart == "no" || wroteLetter != 2) {
        if (wroteLetter == 1) {
            printf("Your letter isn't going so well. You scribble on out the words out of frustration.\n");
            sleep(four);
        }
        printf("Yeah, writing a letter is probably too much.\n");
        sleep(three);
        printf("Let's review your other options . . .\n");
        printf(">follow them\n");
        printf(">stay there\n");
        do {
            scanf("%s", &responseTwo);
            if (responseTwo != "follow them" && responseTwo != "stay there") {
            printf("Invalid response. Respond with the exact words for an option.\n");
            }
        } while (responseTwo != "follow them" && responseTwo != "stay there" && responseTwo);
        if (responseTwo == "follow them") {
            endFour();
        } if (responseTwo == "stay there") {
            endFive();
        }
    }
}

// end 6
void endSix() {
    printf("Success!\n= - = - = - = - = - = - = - = - = - = - = - = - = - = - = - =\n");
    sleep(two);
    printf("Amazing. Truly amazing.\n");
    sleep(two);
    printf("You stare at your masterpiece of literature; this will surely make him feel better.\n");
    sleep(four);
    printf("\nhi best friend,\nsorry for being mean.\nyou are super cool &\nhope we can stay friends yo\npeace out homie catch you on the flip side\n\n");
    sleep(five);
    printf("A masterpiece. You start running into the woods to show %s your amazing letter.\n", bestFriend);
    sleep(five);
    printf("After running around for a little bit, you see %s laying on a stump.\n", bestFriend);
    sleep(four);
    printf("You hand them the letter, and after a bit they read it and hug you as best as a dog can.\n");
    sleep(six);
    printf("%s:   ", bestFriend);
    sleep(one);
    printf("Bark! ");
    sleep(one);
    printf("Bark!\n");
    sleep(two);
    printf("You guys are back to being best friends.\n");
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("quack\n");
    sleep(two);
    printf(" - Best Friend Ending - \n");
    sleep(5);
    printf("Old Lady:   Psst . . .\n");
    sleep(two);
    printf("An old lady has appeared from the forest to talk to you. She seems wise.\n");
    sleep(five);
    printf("Old Lady:   You are very nice. I will bestow you great knowledge.\n");
    sleep(five);
    printf("Old Lady:   After calling on the dogs, wait 40 seconds for a special code. Then, say 'code'.\n");
    sleep(four);
    printf("The Old Lady ran away back into the woods . . .\n");
    sleep(three);
}

// option 3
void optionThree() {
    printf("Meh, you're too lazy to get the ball.\n");
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("Let's go find a new toy\n");
    sleep(two);
    printf("%s:   ", bestFriend);
    sleep(one);
    printf("Bark\n");
    sleep(two);
    printf("You and %s walk away from the pond, %s's spirits down at the loss of his ball best friend.\n", bestFriend, bestFriend);
    sleep(five);
    printf("You find yourself at a town.\n");
    sleep(two);
    printf("You also realize that this town only has three places open.\n");
    sleep(three);
    printf("There's a 'NO DOG' policy everywhere in town. You find only two stores that don't have it.\n");
    sleep(five);
    printf("There's a random ancient temple with gargoyles and statues and a Seven Eleven right next to it.\n");
    sleep(three);
    printf("Alternatively, there's also a LASER TAG place you could enter . . . by leaving behind %s.\n", bestFriend);
    sleep(five);
    printf("Do you . . .\n\n");
    sleep(one);
    printf(">enter temple\n");
    printf(">enter seven eleven\n");
    printf(">enter laser tag\n");
    do {
        scanf("%s", &responseTwo);
        if (responseTwo != "enter temple" && responseTwo != "enter seven eleven" && responseTwo != "enter laser tag") {
            printf("Invalid response. Respond with the exact words for an option.\n");
        }
    } while (responseTwo != "enter temple" && responseTwo != "enter seven eleven" && responseTwo != "enter laser tag");
}

// end 7
void endSeven() {
    printf("You and %s approach the old temple. It looks very scary. A statue is sitting there.\n", bestFriend);
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("what's up\n");
    sleep(two);
    printf("Suddenly, themenacing statue’s mouth opens. Its eyes flare with fire as it looks down upon you both.\n");
    sleep(five);
    printf("Statue:   WHAT IS THE CODE?\n");
    sleep(two);
    printf("??? what code\n");
    sleep(two);
    printf("You wrack your brain and try to think of what the code is. Hmmm . . .\n\n");
    printf(">WHAT IS THE CODE??\n");
    scanf("%s", &direction);
    if (direction != "billy" && direction != "Billy" && direction != "BILLY") {
        printf("Statue:   INCORRECTOMUNDO. YOU MUST PERISH.\n");
        sleep(two);
        printf("The statue opens its mouth and squirts out water. At first, you think it’s harmless.\n");
        sleep(three);
        printf("Wait! No! It’s not stopping! Mass floods are now happening around the world! Sea levels are rising by the second!\n");
        sleep(six);
        printf("Aaah! How will you survive?! You’re a duck, you can’t swim!!!!!\n");
        sleep(three);
        printf("You die because you guessed the code wrong :(\n");
        sleep(two);
        printf(" - Missed The Code Ending - \n");
    } else {
        printf("Statue:   AMAZING. YOU KNOW THE CODE.\n");
        sleep(three);
        printf("It closes its eyes and the door to the temple opens.\n");
        sleep(three);
        printf("You enter to see elaborately painted walls. This place looks ancient.\n");
        sleep(three);
        printf("You look at the pedestal in the center of the room. A curtain is hiding what sits on top of it.\n");
        sleep(four);
        printf("What could it be!?\n");
        sleep(three);
        printf("You walk towards the pedestal and rip down the curtains with your beak to see -\n");
        sleep(four);
        printf("A bone. A bone is on the pedestal.\n");
        sleep(two);
        printf("%s:   ", bestFriend);
        sleep(one);
        printf("Bark! Bark! Bark! Barjthieru98gjiirkogppo90y8qwgur\n");
        sleep(two);
        printf("Excitedly, %s jumps onto the pedestal and bites the bone.\n", bestFriend);
        sleep(three);
        printf("Wow, you are an amazing friend! This was only possible if you chose the best options across all three options.\n");
        sleep(four);
        printf("You are a really cool time travelling duck.\n");
        sleep(two);
        printf(" - = - = - = - = - = ~   GOOD   JOB   ENDING   ~ = - = - = - = - = -");
    }
}

// end 8
void endEight() {
    printf("You and %s enter the 7/11. You pull out your duck wallet and see one dollar.\n", bestFriend);
    sleep(three);
    printf("You confront the cashier and decide to ask where the dog toys are.\n");
    sleep(three);
    printf("%s:   ", player);
    sleep(one);
    printf("Quack?\n");
    sleep(one);
    printf("Cashier:   ");
    sleep(one);
    printf("Yeah this is below my paygrade.\n");
    sleep(two);
    printf("You look around the 7/11, wondering what you can buy with your one dollar. The choices are endless!\n");
    printf(">hot dogs\n>gatorade\n>chips\n>car\n>beer\n");
    sleep(2);
    printf("\nWait, you can’t buy anything. Everything is $1.01. You’re one cent off.\n");
    sleep(three);
    printf("Cashier:   ");
    sleep(one);
    printf("Sorry, we’re too lazy to serve customers cause that requires arrays. The only thing here that’s one dollar\nis the lottery ticket.\n");
    sleep(six);
    printf("You decide to buy the lottery ticket. Hmmm, what number do you try?\n");
    printf("The range is from 1 to 1000000.\n");
    scanf("%s", &lottery);
    notGonnaHappen = randint(1, 1000000);
    if (lottery == notGonnaHappen) {
        printf("WHAT.\n");
        sleep(one);
        printf("OKAY, this is not a joke. You actually had a 1 in 1000000 chance to win this. This is NOT A JOKE.\n");
        sleep(three);
        printf("CHECK THE CODE\n");
        sleep(two);
        printf("????? You are actually the luckiest person god what the hell dude what do the lottery irl not even joking\n");
        sleep(two);
        printf("okay getting back on topic\n= - = - = - = - = - = - = - = - = - = - =\n");
        printf("Wow! You won the lottery! You show the cashier and his eyes light up a tiny bit.\n");
        sleep(three);
        printf("Cashier:    Wow, that’s impressive. ");
        sleep(two);
        printf("Here’s your reward.\n");
        sleep(two);
        printf("He hands you a penny.\n");
        sleep(two);
        printf("Wow! This is great! Now you can buy anything in the store that is conveniently costed $1.01 when you only had a dollar!\n");
        sleep(four);
        printf("Ah, wait. You spent your dollar on the lottery ticket. Now you just have a penny.\n");
        sleep(three);
        printf("Wow! This is worthless!\n");
        sleep(two);
        printf("You swallow the penny out of disappointment and leave the store with %s\n", bestFriend);
    } else {
        printf("Unsurprisingly, you didn’t win. It was %d. Whatever, you can just check the code to see what happens - I MEAN,\nI guess you’ll never know what could’ve happened.\n", notGonnaHappen);
        sleep(six);
        printf("You leave the store with %s.\n", bestFriend);
    }
    sleep(three);
    printf("%s is a bit disappointed that they didn’t get a toy, but they appreciate you trying to get one for them anyway.\n", bestFriend);
    sleep(four);
    printf("You and %s waddle outside of the city and sit back down on the hill.\n", bestFriend);
    sleep(three);
    printf("Pretty boring day today.\n");
    sleep(two);
    printf(" - Boring Day Ending - \n");
}

// end 9
void endNine() {
    printf("YES. LASER TAG.\n");
    sleep(one);
    printf("While %s isn’t looking, you sneak past him and enter the LASER TAG BUILDING.\n", bestFriend);
    sleep(three);
    printf("You are pumped as you hold your gun in your wings, ready to commit some LASER TAG.\n");
    sleep(three);
    printf("You’re in the dark . . . playing LASER TAG. You see some people, you shoot them.\n");
    sleep(three);
    printf("Ah! You see someone!\n");
    sleep(one);
    printf("pew! ");
    sleep(one);
    printf("pew! ");
    sleep(one);
    printf("pew! ");
    sleep(one);
    printf("pew! ");
    sleep(one);
    printf("pew!\n");
    sleep(one);
    notGonnaHappen = randint(1, 3);
    if (notGonnaHappen == 1) {
        printf("Wow! You shot them! That was a 1 in 3 chance, and affects the story in no way whatsoever.\n");
        sleep(four);
    } else {
        printf("Ah shoot, you got shot with a laser. Whatever.\n");
        sleep(two);
    }
    printf("You walk back outside, your one dollar spent, and you see %s staring back at you.\n", bestFriend);
    sleep(four);
    printf("%s:   ", player);
    sleep(one);
    printf("In my defense, laser tag is fun.\n");
    sleep(two);
    printf("%s is in disbelief. They leave.\n", bestFriend);
    sleep(two);
    printf("You are heartbroken at his disappointment in you, and you feel angry at yourself.\n");
    sleep(four);
    printf("Wow, you’re a sucky friend.\n");
    sleep(two);
    printf(" - Sucky Friend Ending - \n");
}

// start function
int main() {
    intro();
    if (response == "grab the ball") {
        optionOne();
        if (responseTwo == "fight alligator") {
            endOne();
        } if (responseTwo == "fly away") {
            endTwo();
        } if (responseTwo == "call on the dogs") {
            endThree();
        }
    }
    if (response == "laugh in their face") {
        optionTwo();
        if (responseTwo == "follow them") {
            endFour();
        } if (responseTwo == "stay there") {
            endFive();
        } if (responseTwo == "write apology letter") {
            minigameSix();
            if (wroteLetter == 2) {
                endSix();
            }
        }
    }
    if (response == "find a new toy") {
        optionThree();
        if (responseTwo == "enter temple") {
            endSeven();
        } if (responseTwo == "enter seven eleven") {
            endEight();
        } if (responseTwo == "enter laser tag") {
            endNine();
        }
    }
    
    // ending credits
    clock_t difference = clock() - before;
    seconds = difference / CLOCKS_PER_SEC;
    printf("= - = - = - = - = - = - = - = - = - =\n");
    printf("Made by Tyler\n");
    printf("Sleep Enabled?: %s\n", sleepEnable);
    while (seconds > 59) {
        seconds = seconds - 60;
        minutes = minutes + 1;
    }
    printf("Time Taken: %d minute", minutes);
    if (minutes != 1) {
        printf("s");
    }
    printf(", %d second", seconds);
    if (seconds != 1) {
        printf("s");
    }
    printf("\nThanks for playing!\n");
}
