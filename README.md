# THP Final Project Schoolink
The Hacking Project Final Project

## Lexique: 
Catégories/Mots-clés = Tags

Cours/Compétences = Skills

Liens à l’intérieur des cours = Links

# 1. Présentation

Aujourd’hui, le web joue un rôle majeur dans l’apprentissage d’une nouvelle compétence, que ce soit à l’école, en formation professionnelle, au travail, ou même chez soi. Il est cependant facile de s’y perdre au vu de la quantité et de la richesse des ressources disponibles…. Comment s’y retrouver ? Par où commencer ? 

Nous passons plus de temps à rechercher de l’information sur internet plutôt qu’à lire l'information elle-même. La surcharge cognitive et l’infobésité nous donne l’illusion d’une certaine productivité. 

C’est ainsi que nous est venu l’idée de **Schoolink** : une plateforme regroupant des ressources sélectionnées par des passionnés, pour des passionnés ayant la soif d’apprendre et de transmettre. Chacun et chacune peut ainsi partager ses bons plans tutoriels, livres, vidéos, etc. sur un sujet particulier.

Un créateur de skill fournit, à l’aide d’un formulaire, des links comme des liens vidéos, des noms de livres, des liens d’articles ou des tutos sur un sujet particulier. Il accompagne également son skill d'une description renseignant sur ses choix afin de transmettre sa méthode d’apprentissage. Il lui attribue aussi un niveau de difficulté, ce qui permettra à l'utilisateur chercheur de skill de s’y retrouver quand il voudra choisir entre deux skills d’espagnol, de choisir celui étant le plus adapté à son niveau. Le créateur pourra spécifier un niveau de difficulté pour chaque link.

Les utilisateurs chercheurs de skill pourront également noter chaque skill et chaque link du point de vue de leurs qualités.

Un utilisateur peut-être soit créateur, soit chercheur de skill ou bien encore les deux!

Pour chaque skill enregistré, le créateur saisi des tags, qui permettront de faciliter la recherche de skills ou de links du consommateur. Un consommateur pourra chercher des skills,  qui seront tout simplement un ensemble de links accompagnés de la fameuse description ou des links seuls.

Enfin, chaque utilisateurs aura un profil où pourra apparaître ses activités sur la plateforme (les skills actuellement suivis, ceux déjà suivis, ceux produits, etc.)

# 2. Parcours utilisateur

Step 1 : L’utilisateur non connecté arrive sur la landing page où il peut:
    • Lire des explications sur le concept du site en quelques lignes
    • Voir la barre de recherche du site
    • Voir une liste de quelques skills déjà mis en ligne sur la plateforme (titre du skills, nombre de commentaires, note de difficulté de la ressource, évaluation du skill)

L’utilisateur ne peut pas visualiser le contenu d’un skill, faire une recherche ou bien créer lui-même un skill s’il n’est pas inscrit et connecté sur la plateforme.

Step 2 : L’utilisateur clique sur le ‘Call To Action’ et atterri sur la page d’inscription.

Step 3: Une fois que l’utilisateur a accepté notre charte et validé son inscription, l’utilisateur est automatiquement connecté et redirigé vers la page principale du site. Il peut alors:
    • Visualiser sans limitation toutes les ressources du site (skills et links)
    • Utiliser la barre de recherche pour trouver un skill ou link particulier
    • Créer, modifier et évaluer ses skills. Pour créer un skill, l’utilisateur saisit du texte et ajoute des links (liens de pages webs, livres, vidéos, etc.). Pour finir, grâce à des tags il peut référencer son skill. Il doit également saisir un niveau de difficulté pour son skill.
    • Commenter et noter les skills d’autres utilisateurs.
      
Step 4: Tout au long de son expérience sur notre site, l’utilisateur connecté pourra:
    • Dialoguer en messagerie privée avec le créateur d’un skill
    • Visualiser sa page profil avec ses skills créés, ceux commencés, finis et également ceux misent en favoris

# 3. Concrètement et techniquement
## 3.1. Base de données
Notre base de données va évoluer au fil du projet et de nos réflexions mais voici une ébauche:   

![BDD Schoolink](https://app.genmymodel.com/api/projects/_R3eXsJkeEeqEM7mFKilpXw/diagrams/_R3eXspkeEeqEM7mFKilpXw/svg "bdd_thp_schoolink")

## 3.2. Front
    • La landing page contient un court texte qui explique le concept du site, une liste de quelques skills déjà mise en ligne sur la plateforme, une barre de recherche.
    • Les views de Devise pour la création de profils utilisateurs
    • Le dashboard du User avec ses contenus créés, ceux commencés, finis et ceux en favoris
    • Un index avec barre de recherche pour trouver les skills et links
    • Une page Show pour le contenu d’un skill
    • Création de contenu avec un éditeur de texte de type markdown (traitement du texte, des liens, image)
    • Notre charte de “bonne conduite et création de contenu” 


## 3.3. Backend
Services envisagés :
- Devise pour les formulaires signup/login
- Action Mailer pour envoi d’emails aux utilisateurs

Création d’une base de données (cf 3.1 Base de données)

## 3.4. Mes besoins techniques

Nous sommes au complet et prêt à tout donner ! 

# 4. La version minimaliste mais fonctionnelle qu'il faut avoir livré la première semaine

## MVP : 

Landing page pour utilisateur non connecté avec:
    • Explications sur le concept du site en quelques lignes
    • Une barre de recherche du site
    • Une liste de quelques skills déjà mis en ligne sur la plateforme (titre du skills, nombre de commentaires, note de difficulté de la ressource, évaluation du skill)

L’utilisateur ne peut pas visualiser le contenu d’un skill, ni faire une recherche ou bien créer lui-même un skill s’il n’est pas inscrit et connecté sur la plateforme.

Une fois que l’utilisateur a accepté notre charte et validé son inscription, l’utilisateur est automatiquement connecté et redirigé vers la page principale du site. Il peut alors:
    • Visualiser sans limitation toutes les ressources du site (skills et links)
    • Utiliser la barre de recherche pour trouver un skill ou link particulier
    • Créer, modifier et évaluer ses skills. Pour créer un skill, l’utilisateur saisit du texte et ajoute des links (liens de pages webs, livres, vidéos, etc.). Pour finir, grâce à des tags il peut référencer son skill. Il doit également saisir un niveau de difficulté pour son skill.
    • Commenter et noter les skills d’autres utilisateurs.

# 5. La version que l'on présentera aux jury
En plus de la MVP :
Un utilisateur peut:
    • Possibilité de proposer une modification du cours (faute de frappes, erreurs dans un texte/solution etc..) sous forme de pull request de GitHub ou de demande de modification à la THP
    • L’utilisateur peut dialoguer avec un autre utilisateur à propos de son skill à l’aide d’une messagerie privée

# 6. Le mentor
Toujours à la recherche de notre mentor ! 
On est dispos sur Slack !
@Jessica
@Julien Anceau
@Alex Frezoul
@Chris Blassiaux
@Lucas Illiano

