X1=[ 686 686 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 685 686 686 686 686 686 686 686 686 686 686 686 686 686 685 685 686 685 685 684 684 685 685 685 685 685 685 685 683 681 679 678 677 675 673 672 669 670 668 667 666 665 665 663 663 662 661 661 661 661 ];
 Y1=[ 293 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 294 293 293 293 293 293 293 293 294 296 298 300 302 304 306 307 308 310 311 315 315 315 316 317 317 318 318 318 319 319 320 320 321 321 321 321 321 321 321 321 321 321 321 321 321 321 ];
 X2=[ 164 164 163 164 164 164 164 192 235 291 344 393 440 485 532 581 630 680 730 710 671 634 601 571 546 522 497 473 448 424 400 376 353 329 307 282 260 237 213 191 167 144 142 159 172 185 197 210 223 235 247 260 272 284 295 307 319 330 342 354 365 376 386 398 409 419 429 440 450 460 471 481 491 500 511 520 530 540 549 558 568 577 586 595 604 613 621 631 640 648 657 665 673 682 690 699 707 715 724 732 736 731 726 722 717 713 709 705 701 697 695 694 693 692 691 689 688 687 686 686 684 683 683 682 681 680 680 679 679 677 676 675 ];
 Y2=[ 286 287 286 286 286 287 286 220 150 139 128 116 104 91 84 93 99 104 110 127 147 167 185 204 221 239 255 273 289 307 324 341 358 374 366 355 346 337 329 319 309 301 290 277 264 251 239 226 214 202 189 177 166 154 141 130 118 105 94 85 91 97 104 111 116 123 129 135 142 148 153 159 165 171 177 183 188 193 200 205 211 216 221 227 232 237 242 247 253 258 263 268 273 277 281 284 286 289 291 294 296 299 302 306 308 311 314 316 319 321 324 326 329 332 334 337 339 341 344 346 348 349 351 353 354 355 358 359 361 362 365 365 ];
 X3=[ 218 218 217 217 217 217 217 217 213 200 189 178 167 156 155 152 151 148 146 144 140 139 138 139 138 138 138 138 138 139 140 141 139 139 139 140 140 140 140 140 140 140 140 140 140 140 140 140 140 140 140 139 139 139 139 139 139 138 138 138 138 138 138 137 137 137 137 137 137 136 136 136 136 136 136 136 136 136 136 136 136 136 137 137 137 137 137 137 136 137 137 137 137 136 137 136 136 136 136 136 136 136 136 135 136 136 135 135 135 135 135 136 136 136 136 136 136 136 135 135 136 136 136 136 136 136 136 136 136 136 136 136 ];
 Y3=[ 140 140 140 140 140 140 140 140 114 127 194 260 320 375 335 292 254 220 187 156 125 92 99 122 142 161 179 196 214 231 248 264 281 298 315 331 347 363 375 363 353 344 335 326 317 308 300 291 283 274 266 257 249 241 233 226 218 210 202 195 188 180 173 166 159 152 145 138 132 125 119 112 106 100 94 88 84 86 91 94 97 100 102 105 108 111 114 116 119 120 123 125 127 130 132 133 134 136 138 139 141 142 144 145 146 147 149 149 149 149 151 152 152 152 152 152 152 152 153 153 153 153 153 153 153 153 153 153 153 153 153 153 ];
 FigHandle = figure('Position', [100, 100, 700, 795]);
 
xlabel('longueur x');
ylabel('largeur y');
 
title('ScoreSheet F2')
 
 
X = [X1, X2, X3];
Max_X = max(X); 
Min_X = min(X); 
 
Y = [Y1, Y2, Y3];
Max_Y = max(Y);
Min_Y = min(Y);
 
 
 
hold on;
plot(X1,Y1,'Color', [1 0 0]);
plot(X2,Y2,'Color', [1 1 0]);
plot(X3,Y3,'Color', [0 1 1]);
axis([Min_X Max_X 0 Max_Y]);
 
 
plot([Min_X Min_X],[Min_Y Max_Y],'b-');
plot([Max_X Max_X],[Min_Y Max_Y],'b-' );
plot([Min_X Max_X], [Min_Y Min_Y],'b-');
plot([Min_X Max_X], [Max_Y Max_Y],'b-');
 
mouvement_boule1 = find(sqrt(((X1 - X1(1)).^2) + ((Y1 - Y1(1)).^2)) > 2);
mouvement_boule2 = find(sqrt(((X2 - X2(1)).^2) + ((Y2 - Y2(1)).^2)) > 2);
mouvement_boule3 = find(sqrt(((X3 - X3(1)).^2) + ((Y3 - Y3(1)).^2)) > 2);

 
 
Trois_boules_bougent = 0;
Aucune_boule_bouge = 0;
Une_boule_bouge = 0;
Deux_boules_bougent = 0;
 
 
if (length(mouvement_boule1) > 1 && length(mouvement_boule3) > 1 && length(mouvement_boule2) > 1)
 text(200, 35, 'Nombre de boules touchees: 2');
 Trois_boules_bougent = 1;
elseif (isempty(mouvement_boule1) && isempty(mouvement_boule2) && isempty(mouvement_boule1))
 text(200, 35, 'Aucune boule n a bouge');
 Aucune_boule_bouge = 1;
elseif ((length(mouvement_boule1) > 1 && length(mouvement_boule2) > 1) || (length(mouvement_boule1) > 1 && length(mouvement_boule3) > 1) || (length(mouvement_boule2) > 1 && length(mouvement_boule3) > 1)) 
 text(200, 35, 'Nombre de boules touchees: 1');
 Deux_boules_bougent = 1;
else
 text(200, 35, 'Nombre de boules touchees: 0');
 Une_boule_bouge = 1;
end
 
 
 
Boule1_1 = 0;
Boule1_2 = 0;
Boule1_3 = 0;
Boule2_1 = 0;
Boule2_2 = 0;
Boule2_3 = 0;
Boule3_1 = 0;
Boule3_2 = 0;
Boule3_3 = 0;
 
if (Trois_boules_bougent)
 
 if (mouvement_boule1(1) < mouvement_boule2(1) && mouvement_boule1(1) < mouvement_boule3(1))
 Boule1_1 = 1;
 if (mouvement_boule2(1) < mouvement_boule3(1))
 Boule2_2 = 1;
 Boule3_3 = 1;
 else
Boule3_2 = 1;
 Boule2_3 = 1;
 end
 elseif (mouvement_boule2(1) < mouvement_boule1(1) && mouvement_boule2(1) < mouvement_boule3(1))
 Boule2_1 = 1;
 if (mouvement_boule1(1) < mouvement_boule3(1))
 Boule1_2 = 1;
 Boule3_3 = 1;
 else
 Boule3_2 = 1;
 Boule1_3 = 1;
 end
 elseif (mouvement_boule3(1) < mouvement_boule1(1) && mouvement_boule3(1) < mouvement_boule2(1))
 Boule3_1 = 1;
 if (mouvement_boule1(1) < mouvement_boule2(1))
 Boule1_2 = 1;
 Boule2_3 = 1;
 else
 Boule2_3 = 1;
 Boule1_3 = 1;
 end
 end
elseif (Deux_boules_bougent)
  if (isempty(mouvement_boule1))
 if (mouvement_boule2(1) < mouvement_boule3(1))
 Boule2_1 = 1;
 Boule3_2 = 1;
 else
 Boule3_1 = 1;
 Boule2_2 = 1;
 end
 elseif (isempty(mouvement_boule2))
 if (mouvement_boule1(1) < mouvement_boule3(1))
 Boule1_1 = 1;
 Boule3_2 = 1;
 else
 Boule3_1 = 1;
 Boule1_2 = 1;
 end
 elseif (isempty(mouvement_boule3))
 if (mouvement_boule1(1) < mouvement_boule2(1))
 Boule1_1 = 1;
 Boule2_2 = 1;
 else
 Boule2_1 = 1;
 Boule1_2 = 1;
 end
 end 
elseif (Une_boule_bouge)
 if (length(mouvement_boule1))
 text(400, 60, 'la boule 1 a bouge');
 elseif (length(mouvement_boule2))
 text(400, 60, 'la boule 2 a bouge');
 elseif (length(mouvement_boule3))
 text(400, 60, 'la boule 3 a bouge');
 end
end
 
if (Boule1_1)
if (length(mouvement_boule2))
     plot(X2(mouvement_boule2(1)), Y3(mouvement_boule2(1)), 'bo','MarkerSize',15);
end
if (length(mouvement_boule3))
     plot(X3(mouvement_boule3(1)), Y3(mouvement_boule3(1)), 'bo','MarkerSize',15); 
end
elseif (Boule2_1)
if (length(mouvement_boule1)) 
     plot(X1(mouvement_boule1(1)), Y1(mouvement_boule1(1)), 'bo','MarkerSize',15);
end
if (length(mouvement_boule3))
     plot(X3(mouvement_boule3(1)), Y3(mouvement_boule3(1)), 'bo','MarkerSize',15); 
end
elseif(Boule3_1)
if (length(mouvement_boule1)) 
     plot(X1(mouvement_boule1(1)), Y1(mouvement_boule1(1)), 'bo','MarkerSize',15);
end
if (length(mouvement_boule2))
     plot(X2(mouvement_boule2(1)), Y3(mouvement_boule2(1)), 'bo','MarkerSize',15);
end
end

 
Z = 2;
rayon_boule = 6;
Trois_bandes_touchees = [];
 
 if (Boule1_1)
 
X1_bis = X1(mouvement_boule1(1):end);
 Y1_bis = Y1(mouvement_boule1(1):end);
 
 Bande_droite_boule1 = find((X1_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule1 = find((X1_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule1 = find((Y1_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule1 = find((Y1_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch1 = sort([Bande_droite_boule1, Bande_gauche_boule1, Bande_basse_boule1, Bande_haute_boule1]);
 Contact_bande_boule1 = idxTouch1([1, 1 + find(diff(idxTouch1) > 1)]);
 plot(X1_bis(Contact_bande_boule1), Y1_bis(Contact_bande_boule1), 'ro','MarkerSize',15);
 
 Trois_bandes_touchees = Contact_bande_boule1;
 
 elseif (Boule2_1)
 
X2_bis = X2(mouvement_boule2(1):end);
Y2_bis = Y2(mouvement_boule2(1):end);
 
 Bande_droite_boule2 = find((X2_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule2 = find((X2_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule2 = find((Y2_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule2 = find((Y2_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch2 = sort([Bande_droite_boule2, Bande_gauche_boule2, Bande_basse_boule2, Bande_haute_boule2]);
 Contact_bande_boule2 = idxTouch2([1, 1 + find(diff(idxTouch2) > 1)]);
 plot(X2_bis(Contact_bande_boule2), Y2_bis(Contact_bande_boule2), 'ro','MarkerSize',15);
 
 Trois_bandes_touchees = Contact_bande_boule2;
 
 elseif (Boule3_1)
 
 X3_bis = X3(mouvement_boule3(1):end);
 Y3_bis = Y3(mouvement_boule3(1):end);
 
 Bande_droite_boule3 = find((X3_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule3 = find((X3_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule3 = find((Y3_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule3 = find((Y3_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch3 = sort([Bande_droite_boule3, Bande_gauche_boule3, Bande_basse_boule3, Bande_haute_boule3]);
 Contact_bande_boule3 = idxTouch3([1, 1 + find(diff(idxTouch3) > 1)]);
 plot(X3_bis(Contact_bande_boule3), Y3_bis(Contact_bande_boule3), 'ro','MarkerSize',15);
 
 Trois_bandes_touchees = Contact_bande_boule3;
 end 
 
Trois_bandes_touchees_bis = [];
 
if (Trois_boules_bougent)
 if (Boule1_1)
 if (Boule2_2)
 X1_bis = X1(mouvement_boule2(1):mouvement_boule3(1));
 Y1_bis = Y1(mouvement_boule2(1):mouvement_boule3(1));
 
 Bande_droite_boule1 = find((X1_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule1 = find((X1_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule1 = find((Y1_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule1 = find((Y1_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch1 = sort([Bande_droite_boule1, Bande_gauche_boule1, Bande_basse_boule1, Bande_haute_boule1]);
 Contact_bande_boule1 = idxTouch1([1, 1 + find(diff(idxTouch1) > 1)]);
 
 Trois_bandes_touchees_bis = Contact_bande_boule1;
 
 elseif (Boule3_2)
 
 X1_bis = X1(mouvement_boule3(1):mouvement_boule2(1));
 Y1_bis = Y1(mouvement_boule3(1):mouvement_boule2(1));
 
 Bande_droite_boule1 = find((X1_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule1 = find((X1_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule1 = find((Y1_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule1 = find((Y1_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch1 = sort([Bande_droite_boule1, Bande_gauche_boule1, Bande_basse_boule1, Bande_haute_boule1]);
Contact_bande_boule1 = idxTouch1([1, 1 + find(diff(idxTouch1) > 1)]);
 
 Trois_bandes_touchees_bis = Contact_bande_boule1;
 
 end
 elseif (Boule2_1)
 if (Boule1_2)
 
X2_bis = X2(mouvement_boule1(1):mouvement_boule3(1));
 Y2_bis = Y2(mouvement_boule1(1):mouvement_boule3(1));
 
 Bande_droite_boule2 = find((X2_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule2 = find((X2_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule2 = find((Y2_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule2 = find((Y2_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch2 = sort([Bande_droite_boule2, Bande_gauche_boule2, Bande_basse_boule2, Bande_haute_boule2]);
 Contact_bande_boule2 = idxTouch2([1, 1 + find(diff(idxTouch2) > 1)]);
 
 Trois_bandes_touchees_bis = Contact_bande_boule2;
 
 elseif(Boule3_2)
 
 X2_bis = X2(mouvement_boule3(1):mouvement_boule1(1));
 Y2_bis = Y2(mouvement_boule3(1):mouvement_boule1(1));
 
 Bande_droite_boule2 = find((X2_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule2 = find((X2_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule2 = find((Y2_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule2 = find((Y2_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch2 = sort([Bande_droite_boule2, Bande_gauche_boule2, Bande_basse_boule2, Bande_haute_boule2]);
 Contact_bande_boule2 = idxTouch2([1, 1 + find(diff(idxTouch2) > 1)]);
 
 Trois_bandes_touchees_bis = Contact_bande_boule2;
 
 end
elseif (Boule3_1)
 if (Boule1_2)
 
 X3_bis = X3(mouvement_boule1(1):mouvement_boule2(1));
 Y3_bis = Y3(mouvement_boule1(1):mouvement_boule2(1));
 
 Bande_droite_boule3 = find((X3_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule3 = find((X3_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule3 = find((Y3_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule3 = find((Y3_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch3 = sort([Bande_droite_boule3, Bande_gauche_boule3, Bande_basse_boule3, Bande_haute_boule3]);
 Contact_bande_boule3 = idxTouch3([1, 1 + find(diff(idxTouch3) > 1)]);
 
 Trois_bandes_touchees_bis = Contact_bande_boule3;
 
 elseif (Boule2_2)
 
 X3_bis = X3(mouvement_boule2(1):mouvement_boule1(1));
 Y3_bis = Y3(mouvement_boule2(1):mouvement_boule1(1));
 
 Bande_droite_boule3 = find((X3_bis + rayon_boule + Z) >= Max_X);
 Bande_gauche_boule3 = find((X3_bis - rayon_boule - Z) <= Min_X);
 Bande_basse_boule3 = find((Y3_bis - rayon_boule - Z) <= Min_Y);
 Bande_haute_boule3 = find((Y3_bis + rayon_boule + Z) >= Max_Y);
 
 idxTouch3 = sort([Bande_droite_boule3, Bande_gauche_boule3, Bande_basse_boule3, Bande_haute_boule3]);
 Contact_bande_boule3 = idxTouch3([1, 1 + find(diff(idxTouch3) > 1)]);
 
 Trois_bandes_touchees_bis = Contact_bande_boule3;
 
end
end
end
 
 FormatSpec=['Number of band(s) touched:' num2str(length(Trois_bandes_touchees))'];
 str1=sprintf(FormatSpec, length(Trois_bandes_touchees));
 text(200,50,str1);
 
 
 if (Boule1_1)
 text(400, 65, 'Score sheet for "red"');
 elseif (Boule2_1)
 text(400, 65, 'Score sheet for "yellow"');
 elseif (Boule3_1)
 text(400, 65, 'Score sheet for "white"');
 end
 
 
if (length(Trois_bandes_touchees_bis) >= 3 && Trois_boules_bougent)
 text(200, 65, '--Win--')
else
 text(200, 65, '--Fail--')
end
 
legend('boule rouge','boule jaune','boule blanche','Location','SouthEast')
hold off;
pause(20);
print('-dpdf','ScoreSheet.pdf')
