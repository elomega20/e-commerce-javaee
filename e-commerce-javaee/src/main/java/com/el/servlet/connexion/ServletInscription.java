package com.el.servlet.connexion;

import java.io.IOException;

import com.el.beans.Client;
import com.el.database.clients.ClientDao;
import com.el.database.daofactory.DaoFactory;
import com.el.exceptions.DaoException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ServletInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ClientDao clientDao;

	public ServletInscription() {
		super();
	}
	
    // pour l'initialisation
    public void init() throws ServletException {
    	DaoFactory daoFactory = DaoFactory.getInstance();
		this.clientDao = daoFactory.getClientDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/inscription.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String motDePass = request.getParameter("motDePass");

		Client client = new Client();
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setEmail(email);
		client.setMotDePass(motDePass);

		try {
			if (clientDao.verifierEmail(email)) {
				request.setAttribute("erreurEmail", "cette email est déja utiliser par un autre client");
				this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/inscription.jsp").forward(request,
						response);
			} else {
				boolean ajoueReussie = clientDao.ajouterClient(client);
				if (ajoueReussie) {
					request.setAttribute("inscriptionReussie", "inscription reussie , connectez-vous svp!");
					this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/connexion.jsp").forward(request,
							response);
				}
			}
		} catch (DaoException e) {
			request.setAttribute("erreurTechnique", e.getMessage());
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/inscription.jsp").forward(request, response);
		}
	}

}
