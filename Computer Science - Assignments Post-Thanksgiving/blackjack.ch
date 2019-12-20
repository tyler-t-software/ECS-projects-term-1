/* File: blackjack.ch
 * Purpose: Play blackjack with unintelligent AI; only basic commands (Hit, Stay) implemented. */
 
 // declaration
int ace = 4, two = 4, three = 4, four = 4, five = 4, six = 4, seven = 4, eight = 4, nine = 4, ten = 16;
int deck, draw, card, turn, enemyTurn, hand[11] = { }, enemyHand[11] = { }, total, enemyTotal, i, timer = 1, repeat;
string_t response;


/* dealing(); at start of game
 * "Dealing . . ." for flow of game
 * uses sleeps for drama */
void dealing() {
    printf("Dealing .");
    for (i; i < 2; i++) {
        sleep(timer);
        printf(" .");
    }
    sleep(timer);
    printf("\n= - = - = - = - = - = - =\n");
}


/* playAgain(); ask user if they want to play again;
 * if no, program exits */
void playAgain() {
    printf("Do you want to play again?\n>yes\n>no\n");
    do {
        scanf("%s", &response);
        if (response != "yes" && response != "YES" && response != "Yes" && response != "y" && response != "Y" && response != "no" && response != "No" && response != "NO" && response != "n" && response != "N") {
            printf("Invalid response. Try again.\n");
        }
    } while (response != "yes" && response != "YES" && response != "Yes" && response != "y" && response != "Y" && response != "no" && response != "No" && response != "NO" && response != "n" && response != "N");
    if (response == "yes" || response == "YES" || response == "Yes" || response == "y" || response == "Y") {
        repeat = 1;
    } else {
        exit(1);
    }
}


/* hit(); adds card to player's hand
 * does a randint() depending on the deck size. Continues subtracting
 * values from the random number generated until it isn't higher than a certain
 * value, then assigns a card value and adds it to your hand. */
void hit() {
    deck = ace + two + three + four + five + six + seven + eight + nine + ten;
    draw = randint(1, deck);
    if (draw > ace) {
        draw = draw - ace;
        if (draw > two) {
            draw = draw - two;
            if (draw > three) {
                draw = draw - three;
                if (draw > four) {
                    draw = draw - four;
                    if (draw > five) {
                        draw = draw - five;
                        if (draw > six) {
                            draw = draw - six;
                            if (draw > seven) {
                                draw = draw - seven;
                                if (draw > eight) {
                                    draw = draw - eight;
                                    if (draw > nine) {
                                        card = 10;
                                        ten = ten - 1;
                                    } else {
                                        card = 9;
                                        nine = nine - 1;
                                    }
                                } else {
                                    card = 8;
                                    eight = eight - 1;
                                }
                            } else {
                                card = 7;
                                seven = seven - 1;
                            }
                        } else {
                            card = 6;
                            six = six - 1;
                        }
                    } else {
                        card = 5;
                        five = five - 1;
                    }
                } else {
                    card = 4;
                    four = four - 1;
                }
            } else {
                card = 3;
                three = three - 1;
            }
        } else {
            card = 2;
            two = two - 1;
        }
    } else {
        card = 1;
        ace = ace - 1;
    }
    hand[turn] = card;
    turn = turn + 1;
}


/* enemyHit(); exactly the same as hit() but for the dealer */
void enemyHit() {
    deck = ace + two + three + four + five + six + seven + eight + nine + ten;
    draw = randint(1, deck);
    if (draw > ace) {
        draw = draw - ace;
        if (draw > two) {
            draw = draw - two;
            if (draw > three) {
                draw = draw - three;
                if (draw > four) {
                    draw = draw - four;
                    if (draw > five) {
                        draw = draw - five;
                        if (draw > six) {
                            draw = draw - six;
                            if (draw > seven) {
                                draw = draw - seven;
                                if (draw > eight) {
                                    draw = draw - eight;
                                    if (draw > nine) {
                                        card = 10;
                                        ten = ten - 1;
                                    } else {
                                        card = 9;
                                        nine = nine - 1;
                                    }
                                } else {
                                    card = 8;
                                    eight = eight - 1;
                                }
                            } else {
                                card = 7;
                                seven = seven - 1;
                            }
                        } else {
                            card = 6;
                            six = six - 1;
                        }
                    } else {
                        card = 5;
                        five = five - 1;
                    }
                } else {
                    card = 4;
                    four = four - 1;
                }
            } else {
                card = 3;
                three = three - 1;
            }
        } else {
            card = 2;
            two = two - 1;
        }
    } else {
        card = 1;
        ace = ace - 1;
    }
    enemyHand[enemyTurn] = card;
    enemyTurn = enemyTurn + 1;
}


/* prompt(); tells user their cards and total card, then asks to hit or stay
 * prints out player card and totals using a number of if statements
 * then checks to see if you have an automatic 21, or if you've stepped over
 * either of above will end your turn
 * hitting makes you hit(); / staying makes the dealer try to beat you */
void prompt() {
    total = hand[0] + hand[1] + hand[2] + hand[3] + hand [4] + hand[5] + hand[6] + hand[7] + hand[8] + hand[9] + hand[10];
    if (turn > 2) {
        printf("= - = - = - = - = - = - =\n");
    }
    printf("Your Hand: ");
    if (turn == 2) {
        printf("%d, %d\n", hand[0], hand[1]);
    } if (turn == 3) {
        printf("%d, %d, %d\n", hand[0], hand[1], hand[2]);
    } if (turn == 4) {
        printf("%d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3]);
    } if (turn == 5) {
        printf("%d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4]);
    } if (turn == 6) {
        printf("%d, %d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4], hand[5]);
    } if (turn == 7) {
        printf("%d, %d, %d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4], hand[5], hand[6]);
    } if (turn == 8) {
        printf("%d, %d, %d, %d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4], hand[5], hand[6], hand[7]);
    } if (turn == 9) {
        printf("%d, %d, %d, %d, %d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4], hand[5], hand[6], hand[7], hand[8]);
    } if (turn == 10) {
        printf("%d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4], hand[5], hand[6], hand[7], hand[8], hand[9]);
    } if (turn == 11) {
        printf("%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", hand[0], hand[1], hand[2], hand[3], hand[4], hand[5], hand[6], hand[7], hand[8], hand[9], hand[10]);
    }
    
    printf("Card Total: %d\n", total);
    sleep(timer);
    
    if (total > 21) {
        printf("= - = - = - = - = - = - =\n");
        printf("Bust. Dealer wins.\n");
        printf("= - = - = - = - = - = - =\n");
        playAgain();
    } if (total < 21) {
        do {
            printf(">Hit\n>Stay\n");
            scanf("%s", &response);
            if (response != "Hit" && response != "Stay" && response != "hit" && response != "stay" && response != "h" && response != "s" && response != "H" && response != "S") {
                printf("Invalid response. Try again.\n");
            }
        } while (response != "Hit" && response != "Stay" && response != "hit" && response != "stay" && response != "h" && response != "s" && response != "H" && response != "S");
            
        if (response == "Hit" || response == "hit" || response == "h" || response == "H") {
            hit();
        }
        
        if (response == "Stay" || response == "stay" || response == "s" || response == "S") {
            printf("= - = - = - = - = - = - =\n");
            printf("Dealer's Turn.\n");
            printf("= - = - = - = - = - = - =\n");
        }
    }
}


/* enemyPrompt(); first reveals second card in their starting hand
 * continues to hit until they beat the player's hand or busts */
void enemyPrompt() {
    enemyTotal = enemyHand[0] + enemyHand[1] + enemyHand[2] + enemyHand[3] + enemyHand[4] + enemyHand[5] + enemyHand[6] + enemyHand[7] + enemyHand[8] + enemyHand[9] + enemyHand[10];
    if (enemyTurn == 2) {
        printf("Dealer's Hand: %d, %d\n", enemyHand[0], enemyHand[1]);
    }
    if (enemyTotal > 21) {
        printf("= - = - = - = - = - = - =\n");
        printf("Dealer busts at %d.\n", enemyTotal);
        sleep(timer);
        printf("You win!\n");
        printf("= - = - = - = - = - = - =\n");
        playAgain();
    } else if (enemyTotal > total && enemyTotal < 22) {
        printf("= - = - = - = - = - = - =\n");
        printf("Dealer's %d beats your %d.\n", enemyTotal, total);
        sleep(timer);
        printf("Dealer wins.\n");
        printf("= - = - = - = - = - = - =\n");
        playAgain();
    } else if (enemyTotal == 21 && total == 21) {
        printf("= - = - = - = - = - = - =\n");
        sleep(timer);
        printf("Tie. No one wins.\n");
        printf("= - = - = - = - = - = - =\n");
        playAgain();
    } else {
        printf("= - = - = - = - = - = - =\n");
        enemyHit();
        printf("Dealer draws a %d.\n", enemyHand[enemyTurn - 1]);
        sleep(timer);
        enemyTotal = enemyHand[0] + enemyHand[1] + enemyHand[2] + enemyHand[3] + enemyHand[4] + enemyHand[5] + enemyHand[6] + enemyHand[7] + enemyHand[8] + enemyHand[9] + enemyHand[10];
        printf("Their total is now %d.\n", enemyTotal);
        if (enemyTotal > total && enemyTotal < 22) {
            printf("= - = - = - = - = - = - =\n");
            printf("Dealer's %d beats your %d.\n", enemyTotal, total);
            sleep(timer);
            printf("Dealer wins.\n");
            printf("= - = - = - = - = - = - =\n");
            playAgain();
        }
    }
}


// start of game process
void startOfGame() {
    dealing();
    hit();
    hit();
    enemyHit();
    enemyHit();
    printf("Dealer's First Card: %d\n", enemyHand[0]);
    printf("Dealer's Second Card: Unknown\n");
    prompt();
}


// reset process
void reset() {
    ace = 4;
    two = 4;
    three = 4;
    four = 4;
    five = 4;
    six = 4;
    seven = 4;
    eight = 4;
    nine = 4;
    ten = 16;
    turn = 0;
    enemyTurn = 0;
    hand[0] = 0;
    hand[1] = 0;
    hand[2] = 0;
    hand[3] = 0;
    hand[4] = 0;
    hand[5] = 0;
    hand[6] = 0;
    hand[7] = 0;
    hand[8] = 0;
    hand[9] = 0;
    hand[10] = 0;
    enemyHand[0] = 0;
    enemyHand[1] = 0;
    enemyHand[2] = 0;
    enemyHand[3] = 0;
    enemyHand[4] = 0;
    enemyHand[5] = 0;
    enemyHand[6] = 0;
    enemyHand[7] = 0;
    enemyHand[8] = 0;
    enemyHand[9] = 0;
    enemyHand[10] = 0;
    total = 0;
    enemyTotal = 0;
    i = 0;
    repeat = 0;
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
}


// start function
int main() {
    startOfGame();
    while (response == "Hit" || response == "hit" || response == "h" || response == "H") {
        prompt();
        if (total == 21) {
            response = "not hit";
            printf("= - = - = - = - = - = - =\n");
            printf("Blackjack. Dealer's Turn.\n");
            printf("= - = - = - = - = - = - =\n");
        }
    }
    sleep(timer);
    if (timer > 0) {
        sleep(1);
    }
    do {
        enemyPrompt();
        i = i + 1;
    } while (i < 100 && repeat != 1);
    if (repeat == 1) {
        reset();
        main();
    }
}
