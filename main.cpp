/*
 
 
 Pix2pos.cpp
 
 
 Determination des coordonnées de boules de billards et gestion des éventuelles erreurs.
 
 
 Le code commence par lire le fichier d’entrée Pixmap.bin.
 
 Après avoir lu la taille de l’image et les couleurs des boules, il lit les
 
 pixels au format binaire. Il compare ensuite chaque pixel avec les 3 couleurs
 
 des boules. Dans le cas où il y a concordance, il mémorise les
 
 coordonnées du pixel et, à la fin, sauve les coordonnées des 3 boules dans le
 
 fichier Pos.txt.
 
 Entre temps, le programme gére les éventuels érreurs. En cas d’erreur, il affiche un message
 
 dans la console d’erreur cerr ou cout.
 
 
 
 Nicolas Lefebure, Timothy Haffner
 
 
 
 Version 1.0
 
 
 
 non - revisité.
 
 
 */



#include <iostream>
#include <fstream>
#include <vector>
#include <string>

using namespace std;




// Fonction permettant de tester si certaines couleurs sont identiques
void Meme_couleur (int couleur_a, int couleur_b, int couleur_c,int& test);

// Fonction permettant de tester si la largeur/logueur € [10,1000]
int Dimensionnement (int distance, int& test);

// Fonction verifiant le nombre de pixels
void Nombre_de_pixels (unsigned long size, int largeur, int longueur, int& test_a, int& test_b);

// Fonction testant si certains pixels sont manquant
void Couleur_manquante (vector<unsigned int> tab, unsigned long size, int couleur, int& test, int& compteur);

// Fontction determinant les coordonnées des boules
void Coordonnees (vector<unsigned int> tab, int largeur, int longueur, int couleur_1, int couleur_2, int couleur_3, int& x1, int& y1, int& x2, int& y2, int& x3, int& y3);


int main() {
    
    vector<unsigned int> tab1;
    
    ifstream f_in("Pixmap.bin", ios::binary); // ????
    
    unsigned int tmp;
    
    while (!f_in.eof()) {
        
        f_in.read((char*)&tmp,sizeof(tmp));
        
        if (!(f_in.fail())) {
            
            tab1.push_back(tmp);
        }
        
        else if (f_in.fail() && !f_in.eof()) {
            
            cerr<< "Erreur lors de l'ouverture du fichier pixmap.bin " <<endl;
            return 0;
            
        }
        
    }
    
    
    int largeur = tab1[0];
    
    int longueur = tab1[1];
    
    int couleur_1 = tab1[2];
    
    int couleur_2 = tab1[3];
    
    int couleur_3 = tab1[4];
    
    // Les variables suivantes font office de booléens. Elles sont retournées par les fonctions précédentes pour indiqué si une conditions est vraie ou pas.
    
    int test1(0);
    
    int test2(0);
    
    int test3(0);
    
    int test4(0);
    
    int test5(0);
    
    int test6(0);
    
    int test7(0);
    
    int test8(0);
    
    int compteur1;
    
    int compteur2;
    
    int compteur3;
    
    
    Meme_couleur(couleur_1, couleur_2, couleur_3, test1);
    
    test2 = Dimensionnement(largeur, test2);
    
    test3 = Dimensionnement(longueur, test3);
    
    Nombre_de_pixels(tab1.size(), largeur, longueur, test4, test5);
    
    Couleur_manquante(tab1, tab1.size(), couleur_1, test6, compteur1);
    
    Couleur_manquante(tab1, tab1.size(), couleur_2, test7, compteur2);
    
    Couleur_manquante(tab1, tab1.size(), couleur_3, test8, compteur3);
    
    int x1;
    
    int y1;
    
    int x2;
    
    int y2;
    
    int x3;
    
    int y3;
    
    
    Coordonnees(tab1, largeur, longueur, couleur_1, couleur_2, couleur_3, x1, y1, x2, y2, x3, y3);
    
    // Affichage des différents messages d'erreurs en fonction des valeurs des valeurs "test(n)" obtenues
    
    if (test1 == 1) {
        cerr << "Il y a une ou plusieurs couleurs identiques." << endl;
    }
    
    if (test2 == 1) {
        
        cerr << "La largeur doit etre comprise entre 10 et 1000." << endl;
        
    }
    
    if (test3 == 1){
        
        cerr << "La longueur doit etre comprise entre 10 et 1000." << endl;
        
    }
    
    if (test4 == 1){
        
        cerr << "Le nombre de pixels est trop eleve." << endl;
        
    }
    
    if (test5 == 1){
        
        cerr << "Le nombre de pixels est trop bas." << endl;
        
    }
    
    if (test6 == 0) {
        
        cerr << "La couleur 1 est manquante." << endl;
        
    }
    
    if (test7 == 0) {
        
        cerr  << "La couleur 2 est manquante." << endl;
        
    }
    
    if (test8 == 0) {
        
        cerr << "La couleur 3 est manquante." << endl;
        
    }
    
    if (compteur1 > 1) {
        
        cerr << "Il y a plusieurs pixels de la couleur 1." << endl;
        
    }
    
    if (compteur2 > 1) {
        
        cerr << "Il y a plusieurs pixels de la couleur 2." << endl;
        
    }
    
    if (compteur3 > 1) {
        
        cerr << "Il y a plusieurs pixels de la couleur 3." << endl;
    }
    
    // la structure if suivante stoppe le programme si une des erreurs ci-dessus est survenue
    
    if (test1 == 1 or test2 == 1 or test3 == 1 or test4 == 1 or test5 == 1 or test6 == 0 or test7 == 0 or test8 == 0){
        
        cout << "Il y a une ou plusieurs erreurs qui sont survenues." << endl;
        
        cout << "Le programme est arrete tant que les erreurs n'ont pas ete supprimees." << endl;
        
        return 0;
        
    }
    
    if (compteur1 > 1 or compteur2 > 1 or compteur3 > 1) {
        
        cout << "Il y a plusieurs pixels de la meme couleur." << endl;
    }
    
    cout << "Les coordonnees de la boule 1 sont: ";
    
    cout << "x = " << x1 << " et y = " << y1 << endl;
    
    cout << "Les coordonnees de la boule 2 sont: ";
    
    cout << "x = " << x2 << " et y = " << y2 << endl;
    
    cout << "Les coordonnees de la boule 3 sont: ";
    
    cout << "x = " << x3 << " et y = " << y3 << endl;
    
    
    f_in.close();
    
    
    ofstream f_out("Pos.txt", ios::out);
    
    if (f_out.fail()) { // Teste si la création du fichier Pixpos.txt n'a pas fonctionné
        
        cerr << "Erreur lors de l'ecriture du fichier Pos.txt" << endl;
        
        return 0;
    }
    
    
    
    else {  // écris les coordonnées des boules dans le fichier Pos.txt si le teste précédent a fonctionné
        
        f_out << x1 << "," << y1 << " coordonnee de la boule 1"<< endl;
        
        f_out << x2 << "," << y2 << " coordonnee de la boule 2"<< endl;
        
        f_out << x3 << "," << y3 << " coordonnee de la boule 3"<< endl;
        
    }
    
    
    
    f_out.close();
    
    
}

// la fonction affecte 1 à "test" si certaines couleurs sont identiques sinon elle garde la velaur passée en parametre

void Meme_couleur (int couleur_a, int couleur_b, int couleur_c,int& test) {
    
    test = 0;
    
    if (couleur_a == couleur_b or couleur_a == couleur_c or couleur_b == couleur_c) {
        
        test = 1;
    }
}

// la fonction retourne 1 si la dimension en paramètre n'appartient pas à [10,1000], sinon elle retourne 0

int Dimensionnement (int distance, int& test){
    
    test = 0;
    
    if (distance < 10 or distance > 1000) {
        
        test = 1;
        
    }
    
    return test;
    
}

// la fonction affecte 1 à test_a si la taille du tableau en paramètre est supérieure au nombre de pixels
// Si cette taille est inférieure alors la fonction affecte 1 à test_b

void Nombre_de_pixels (unsigned long size, int largeur, int longueur, int& test_a, int& test_b){
    
    test_a = 0;
    test_b = 0;
    
    if ((size) > (largeur * longueur + 5)) { // largeur * longueur --> nombre de pixels donné par le produit des deux
        // premiers éléments du tableau (tab1 dans notre programme)
        test_a = 1;                          // (largeur * longueur + 5) --> correspond normalement au nombre d'elements
        // du tableau (tab1)
    }
    
    if ((size) < (largeur * longueur + 5)) {
        
        test_b = 1;
        
    }
    
}

// La fonction itére sur tous les éléments du tableau passés en paramètre et les compare avec la couleur en paramètre. Si (au moins) un élément du tableau est égale à la couleur en parametre, test prend la valeur 1, sinon test garde la valeur 0

void Couleur_manquante (vector<unsigned int> tab, unsigned long size, int couleur, int& test, int& compteur){
    
    test = 0;
    
    for (int i(5); i < size; i++) {
        
        if (tab[i] == couleur) {
            
            // "compteur" est incremente a chaque fois qu'un pixel correspond a la couleur en parametre.
            // en comparant "compteur" à 1 on peut determiner si plusieurs pixels ont la meme couleur
            
            ++compteur;
            
            test = 1;
            
        }
        
    }
    
}


// Fonction determinant les coordonnees

void Coordonnees (vector<unsigned int> tab, int largeur, int longueur, int couleur_1, int couleur_2, int couleur_3, int& x1, int& y1, int& x2, int& y2, int& x3, int& y3){
    
    int n(5);
    int compteur1(0);
    int compteur2(0);
    int compteur3(0);
    
    
    if ((tab.size()) == (largeur * longueur + 5)){ // Cette condition permet d'eviter que le tableau (tab) tente d'acceder
        // a des indexes pour lequel il n'y a pas d'element
        for (int l(0); l < longueur; l++) {
            // On itere sur tous les elements du tableau. Cette iteration se fait sur "l" rangées de "m" groupes.
            for (int m(0); m < largeur; m++) {   // m correspond donc a l'abscisse de la boule tandis que l correspond a l'ordonnee.
                // Comme, le haut et le bas sont inverses, on soustrait la l'ordonnee trouvee à la hauteur de l'image.
                if (tab[n] == tab[2]) {
                    
                    ++compteur1;
                    
                    if (compteur1 == 1) {
                        
                        x1 = m;
                        
                        y1 = longueur - l - 1;
                        
                    }
                }
                
                else if (tab[n] == tab[3]) {
                    
                    ++compteur2;
                    
                    if (compteur2 == 1) {
                        
                        x2 = m;
                        
                        y2 = longueur - l - 1;
                        
                    }
                }
                
                else if (tab[n] == tab[4]) {
                    
                    ++compteur3;
                    
                    if (compteur3 == 1) {
                        
                        x3 = m;
                        
                        y3 = longueur - l - 1;
                        
                    }
                }
                
                n++;
                
            }
            
        }
        
    }
    
}