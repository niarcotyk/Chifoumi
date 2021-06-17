package fr.eni.servlets;

import fr.eni.bo.Choix;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "JeuServlet", value = "/JeuServlet")
public class jeuServlet extends HttpServlet {
    private int valeurMax;
    String choixServeur;
    int choixOrdi;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd; // déclaration d'une rd
        rd = request.getRequestDispatcher("WEB-INF/accueil.jsp"); //définition de l'URL de destination
        rd.forward(request, response); //renvoie vers JSP
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        valeurMax = Integer.parseInt(getInitParameter("BORNE_SERVEUR"));
        //Choix
        choixOrdi = new Random().nextInt(valeurMax);
        choixServeur = Choix.values()[choixOrdi].toString();
        System.out.println(choixServeur);

        //récupérer le choix du joueur a cliqué
        String choixJoueur = request.getParameter("chifoumi");
        request.setAttribute("choixServeur", choixServeur);
        request.setAttribute("choixJoueur", choixJoueur);
        String winOrLoose; //Message à afficher

        if (choixJoueur.equals(choixServeur)) {
            winOrLoose = "Égalité !";
        }
        else if (choixJoueur.equals("mi") && choixServeur.equals("fou") ||
                choixJoueur.equals("fou") && choixServeur.equals("chi") ||
                choixJoueur.equals("chi") && choixServeur.equals("mi")) {
            init();
            winOrLoose = "Victoire !";
            this.doGet(request, response);
        }
        else {
            winOrLoose = "Défaite !";
        }

        //Envoi vers la page Resultat
        request.setAttribute("Resultat", winOrLoose);
        //définition de l'URL de destination
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/resultat.jsp");
        rd.forward(request, response);//renvoie vers JSP
    }
}
