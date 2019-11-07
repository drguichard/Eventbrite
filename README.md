# Readme


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     						    EVENTBRITE
     						 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Made for Ruby 2.5.1 Rails 5.2.3

    PRESENTATION
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

L'application sera une sorte d'Eventbrite appliqué à ta ville : les utilisateurs pourront créer des événements, fixer un prix, mettre en ligne une photo de profil, puis les visiteurs de l'application pourront rejoindre les événements en payant le prix. Bien entendu, il y aura une gestion d'utilisateurs avec login / logout, et on a même prévu une interface administrateur pour valider les événements de l'application.


	SET-UP
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
You can access to the app online : 

else you can download it locally :

$ git clone https://github.com/drguichard/Eventbrite

Go to the folder's root and run $ bundle install

Then on your Terminal, type: 
$ rails db:create
$ rails db:migrate
$ rails db:seed

	RUNNING
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Launch your local server :

$ rails server

(you can also use $ shotgun -p 3000 - but it appears to be slower)


Open a browser and go to

    http://localhost:3000/
   


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------