# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JoinFavSubject.destroy_all
JoinReadSubject.destroy_all
JoinValidateSubject.destroy_all
User.destroy_all
Subject.destroy_all
Category.destroy_all


# User1
User.create(
  nickname: "JessL",
  description: "En manque d'inspiration ? Besoin d'un conseil design ? Je saurais vous répondre!",
  email: "whiteboard1@yopmail.com",
  password: "123456",
  is_admin: false
)
# Admin
User.create(
  nickname: "WhiteBoardAdmin",
  description: "Je suis le king",
  email: "whiteboard.thp@yopmail.com",
  password: "123456",
  is_admin: true
)
# User2
User.create(
  nickname: "LucasI",
  description: "Loup de mer qui essaie d'associer le code, l'eau salée et le sable chaud.",
  email: "whiteboard2@yopmail.com",
  password: "123456",
  is_admin: false
)
# User3
User.create(
  nickname: "ChrisB",
  description: "Je push et je pull de tous les côtés... Et en plus ? Je fais du front!",
  email: "whiteboard3@yopmail.com",
  password: "123456",
  is_admin: false
)
# User4
User.create(
  nickname: "AlexF",
  description: "Fifou du Sud-Ouest, des idées pleins la tête. N'y pensez même pas, je l'ai déjà fait...",
  email: "whiteboard4@yopmail.com",
  password: "123456",
  is_admin: false
)
User.create(
  nickname: "JulienA",
  description: "C'est moi le boss, une question ? Viendez!",
  email: "whiteboard5@yopmail.com",
  password: "123456",
  is_admin: false
)

Category.create(name: "Musique")
Category.create(name: "Développement Web")
Category.create(name: "Science")
Category.create(name: "Sport")
Category.create(name: "Langues")
Category.create(name: "Spiritualité")
Category.create(name: "Art")
Category.create(name: "Écologie")
Category.create(name: "Psychologie")
Category.create(name: "Philosophie")



Subject.create(title: "Commencer à apprendre l’espagnol", content: "
  
  Apprendre une langue n’est jamais facile. En quelques mois j’ai réussi à **apprendre les bases de l’espagnol**. Cela m’a permise d’échanger avec les gens lors de mon voyage en Argentine. J’aimerais vous partager ici les astuces qui m’ont permises d’apprendre rapidement les bases.

  - Les vidéos YouTube de la chaîne **¡Aprende español con Saby!** sont super. Voici la [première vidéo](https://www.youtube.com/watch?v=MRW2f_UMj)

  - J’ai beaucoup aimé les livres de la `méthode Assimil`, notamment le livre : « *[L’Espagnol](https://www.assimil.com/collection-sans-peine/1339-l-espagnol-9782700570892.html)* »
      Le livre est progressif et à raison d’*une demi-heure par jour*, j’ai trouvé un rythme confortable pour mon apprentissage.

  - En complément j’ai essayé *plusieurs application* et j’en ai trouvé deux qui m’ont beaucoup aidé : *[Duolingo](https://fr.duolingo.com/)* et *[Memrise](https://www.memrise.com/fr/)*.

  - Quand on apprend une langue, il y a des incontournables, comme par exemple regarder des *films ou des séries en version originale* ! Voici une liste de mes préférés :
    + **Films** : *Volver*, *Mujeres al borde de un ataque de nervios*, *Amores perros*, *La Mala Educación* 
    + **Séries** : *Narcos*, *La Casa de Papel*, *Un, dos tres*", user_id: User.find_by(nickname:"LucasI").id, difficulty: "Facile",category_id: Category.find_by(name:"Langues").id)
Subject.create(title: "Démarrer un potager en permaculture", content: "Ayant hérité d’un terrain familial dans le Vercors, j’ai décidé, il y’a quelques années maintenant, de m’aventurer sur la voie de `l’autosuffisance alimentaire`. Certes, mais par où commencer ? J’avais alors déjà entendu parlé de la permaculture et j’eu envie d’expérimenter cette technique d’agriculture sur ma parcelle d’un hectare environ.

  1. Pour la théorie, je recommande tout bonnement la *bible de la permaculture* ”*[Introduction à la Permaculture](https://www.permatheque.fr/PDF/Bill%20Mollison%20-%20Permaculture%201.pdf)*” de **Bill Mollison**.
  2. Bien que controversé, je recommande tout de même [le livre](https://livre.fnac.com/a12599380/Philippe-Duchaufour-Introduction-a-la-science-du-sol?oref=00000000-0000-0000-0000-000000000000&Origin=SEA_GOOGLE_PLA_BOOKS&esl-k=sem-google|ng|c294196405911|m|kpla374773846736|p|t|dc|a58200328279|g1553156614&gclsrc=aw.ds&&gclid=CjwKCAjw5vz2BRAtEiwAbcVIL4TiSmvyNwFu-u0U48sgRPG_OHrJj4CyQKgIdrCfRoBK5pDHsFOGpxoCTTsQAvD_BwE) de **Claude et Lydia Bougignon**.
  3. Pour ce qui est de la pratique, je recommande vivement les vidéos de la chaîne Youtube **[Permaculture Agroécologie](https://www.youtube.com/user/permacultureetc/videos)** qui ont fait guise d’une véritable initiation pour moi. Je recommande notamment [cette vidéo](https://www.youtube.com/watch?v=KI2bwOFnyCU), pour débuter à cultiver sur des buttes. 
  4. Enfin, en complément je recommande [cette vidéo](https://www.youtube.com/watch?v=lyLQYVJDerE&frags=pl%2Cwn) qui couvre à peu près tous les points et éléments à connaître pour *débuter son jardin de permaculture*.", user_id: User.find_by(nickname:"JessL").id, difficulty: "Intermédiaire",category_id: Category.find_by(name:"Écologie").id)
Subject.create(title: "Ukulélé en 5 étapes", content: "N’ayant aucune base en instrument à corde, j’ai voulu apprendre le ukulélé tout simplement parce que je me suis rappelé qu’une amie hawaienne m’en avait rapporté un en souvenir. J’ai donc parcouru le net à la recherche de tutoriels et cours gratuits qui existaient. Après environ 5 mois d’apprentissage où je pratiquais plus ou moins 30 minutes par jour, je suis arrivé à un niveau que je jugeais satisfaisant.

  Matériel recommandé: `un ukulélé` et `un tuner`. 
  
1. Je recommande de suivre les 3 premières vidéos de la **[chaîne YouTube d’Andy Guitar](https://www.youtube.com/user/andycrowley)** et de les *revoir toutes les semaines en faisant les exercices recommandés*. Ces vidéos simples et ludiques (dès la première vidéo de 20min, vous apprenez à jouer une chanson), m’ont permis de progresser pas à pas en apprenant toujours quelques accords de plus à chaque leçon.

2. La chaîne YouTube **[Ben au Ukulélé](https://www.youtube.com/watch?v=98dizc1ZNFw&t=339s)** est aussi pleine de *bons conseils* et *tutos* pour des chansons. Sa vidéo  est très explicite et facile à appréhender.

3. **[Ukulele Travel](https://www.ukuleletravel.com/category/debuter-le-ukulele)**: j’ai beaucoup apprécié les conseils gratuit sur le site [yukuleletravel.com](yukuleletravel.com). Des bonnes astuces et des entraînements tous niveaux bien adaptés.
  https://www.ukuleletravel.com/category/debuter-le-ukulele<br>".html_safe, user_id: User.find_by(nickname:"JessL").id, difficulty: "Facile",category_id: Category.find_by(name:"Musique").id)
Subject.create(title: "Une heure pour comprendre : le Yoga", content: "Passionné par les **philosophies orientales** et **la spiritualité** en général, je suis parti pendant six mois en Inde faire un tour des ashrams et monastères pour apprendre `le yoga` et `la méditation`. 

  Moi qui associait ça à des gens en legging qui font des acrobaties dans la salle de cours collectifs de la salle de sport, j’étais loin de me douter de **l’art de vivre** à part entière et de la puissance du yoga, quand on commence à l’implémenter dans sa vie.
  
    Je suis donc allé à la rencontre de ces “maîtres spirituels” indiens, discutés avec ces Saddhus qui vivent dans des grottes dans l’Himalaya, médité pendant des centaines d’heures, lu des dizaines de livres sur le sujet et côtoyé des yogis plus ou moins expérimentés des quatre coins du monde. Voici un ensemble de ressources que j’ai à partager avec vous.
  
    Il existe de nombreux types de yogas. **Swami Vivekananda**, un grand maître Indien du XIXè siècle en désignait quatre: le `Jnana Yoga`(voie de la connaissance), le `Raja Yoga` (voie de l’expérience physique (postures et pranayama) et des ascèses, dont fait parti l’Hatha), le `Bhakti Yoga` (voie de l’amour et de la dévotion), et le `Karma Yoga` (voie de l’action et du service).
  
    Voici donc plusieurs ressources (livres, textes sacrés et vidéos YouTube, pour comprendre ce qu’est le Yoga):
    
  1. Le classique du Yoga, l’un des pères fondateurs de `l’Ashtanga`, **Patanjali**, qui explique dans son livre “ [Les Yoga Sutras](https://www.amazon.fr/Yoga-Sutras-Patanjali-ebook/dp/B00GWMD0VG/ref=sr_1_1?__mk_fr_FR=ÅMÅŽÕÑ&dchild=1&keywords=patanjali+yoga+sutra&qid=1591709819&sr=8-1)”, ce que sont les **huit branches du yoga**. Il existe aussi des [versions gratuites](https://archive.org/details/yogasutrasofpata00pata/page/n9/mode/2up) en anglais.
  
  2. Vous pouvez aussi lire le “[Hatha Yoga Pradipika](https://archive.org/details/hathayogapradipikaswamimuktibodhananda_202003_329_Y)” qui est une **Bible du Hatha Yoga** (pour aller plus loin). 
   
  3. Si il y a bien une **série d’assanas** à apprendre, c’est la fameuse `“salutation au soleil” (Surya Namaskar)` qui est à mes yeux le meilleur ensemble de postures pour *balancer sa chimie intérieure et rééquilibrer ses chakras*. Tu pourras l’apprendre sur [cette vidéo](https://www.youtube.com/watch?v=BYzwYAl3yEQ).
  
  4. Les `Pranayamas` sont un autre moyen de nous libérer de l’emprise du mental à travers des exercices de respiration. Il existe énormément de méthodes que vous pourrez apprendre directement avec des Yogis. Mais certaines de ces méthodes mal faites, peuvent être dangereuses. C’est pourquoi je te recommande les exercices de la **“[Wim Hof Method](https://www.youtube.com/watch?v=tybOi4hjZFQ)”**, qui est à mes yeux *extra-ordinaire*. De rien! :)
  
  5. Si vous comprenez l’anglais, et que vous voulez vous atteindre des niveaux plus avancés de conscience, [cette chaîne Youtube](https://www.youtube.com/channel/UCz6X8QK9_JG49hJxnzAu-1w), est vraiment la **meilleure chaîne de spiritualité existante sur YouTube**. Tu pourras y trouver les enseignements des plus grands gurus et maîtres qui ont existés. Tu ne comprendra peut-être pas tout pour l’instant, mais plus ta conscience s’élèvera, plus tu comprendras.... 
    
  ", user_id: User.find_by(nickname:"AlexF").id, difficulty: "Facile",category_id: Category.find_by(name:"Spiritualité").id)
Subject.create(title: "Comprendre le slow cinema", content: "Cette ressource s’adresse à tous les cinéphiles amateurs comme moi ! Je suis étonnée par le manque de ressources disponibles sur le net sur tout ce qui touche au mouvement `slow cinema` ou `cinéma contemplatif`.

  Ce genre est un genre filmique qui met l'accent sur des *longues prises* et qui est souvent *minimaliste*, *observationnel* et avec peu ou pas de récit. Les progéniteurs du genre incluent **Andrei Tarkovsky**, **Ingmar Bergman**, **Michelangelo Antonioni**, **Robert Bresson**, **Aleksandr Sokurov**, **Béla Tarr**, **Chantal Akerman** et **Theo Angelopoulos**.
  
  > Tarkovsky avait soutenu que 'I think that what a person normally goes to cinema for is time'.
   
  1. Avant de se plonger au coeur du cinéma contemplatif, je recommande de suivre cette [vidéo ludique de l’émission Blow-Up](https://www.youtube.com/watch?v=00dQC2yCIJA)(Arte) qui survole, avec des exemples, les mouvements de caméra au cinéma.
  
  2. Et c’est en visionnant le superbe **Kaili Blues**(2016) de **Bi Gan** que j’ai décidé d’entreprendre des recherches sur ce genre qui m’était jusqu’à alors peu connu. [Cette vidéo](https://www.youtube.com/watch?v=tshaoIotNYI) du critique cinématographique **Ryan Swen** décrypte bien le genre et le film en se référant à plusieurs exemples.
  
  3. Cet [article de The Guardian](https://www.theguardian.com/film/2012/mar/09/slow-cinema-fights-bournes-supremacy) permet également de en quoi le slow cinema est un contrecoup au cinema mainstream qui enchaîne des plans séquences rapides.
  
  4. Mes slow films préférés : *Le Désert Rouge* (1964) de **Michelangelo Antonioni**, *Tropical Malady* (2004) de **Apichatpong Weerasethakul**, *La Captive *(2000) de **Chantal Ackerman** et *India Song* (1975) de **Marguerite Duras**. ".html_safe, user_id: User.find_by(nickname:"JessL").id, difficulty: "Intermédiaire",category_id: Category.find_by(name:"Art").id)
Subject.create(title: "Introduction à la Psychologie sociale du langage et de la communication", content: "Je souhaite partager avec vous mon processus d’apprentissage aux théories de la psychologie `psychologie du langage et de la communication`, et plus précisément aux `théories de Discrimination et Préjugés`.
 
  Étudiante en Communication, la **psychologie sociale** m’était alors une discipline inconnue et une professeure engageante m’a amenée à rédiger mon mémoire d’étude sur *l’impact des politiques d’intégration et de communautarisme sur la discrimination envers les populations immigrés* (n’hésitez pas commenter cette ressource si vous aimeriez le consulter).

  Malheureusement, pour ce qui touche à la recherche scientifique, la grande majorité des articles sont en anglais donc vous devez avoir des bases en cette langue pour comprendre. Je précise lorsqu’un article est en français.

1. Lorsqu’on débute dans la discipline, je recommande fortement de lire [cet article](https://www.tandfonline.com/doi/abs/10.1080/00224545.2012.711380) qui *introduit les les concepts de bases*.

2. Cet [article de **Beukeboom**](https://www.researchgate.net/publication/258290822_Mechanisms_of_linguistic_bias_How_words_reflect_and_maintain_stereotypic_expectancies), théoricien fortement cité en la matière, permet de comprendre **en quoi les biais linguistiques, inconscients, permettent de maintenir des stéréotypes**.
 
3. Cet [article](https://www.researchgate.net/publication/265966313_Bourhis_RY_Montreuil_A_2004_Les_assises_socio-psychologiques_du_racisme_et_de_la_discrimination_Dans_J_Renaud_A_Germain_X_Leloup_Eds_Racisme_et_discrimination_Permanence_et_resurgence_d%27un_phenomene_i) (en français) sur le *racisme et la discrimination* permet *d’établir le lien entre la psychologie de la communication et les discriminations, notamment au travers de la catégorisation* :

4. Enfin, [cet article de **Licata**](https://psychologiescientifique.org/wp-content/uploads/2018/02/Licata-2007-La-théorie-de-l’identité-sociale-et-la-théorie-de-.pdf) aborde la question de `l’autocatégorisation et de l’identité sociale`.
  ", user_id: rand(User.first.id..User.last.id), difficulty: "Débutant",category_id: Category.find_by(name:"Psychologie").id)
Subject.create(title: "Introduction à l’écoféminisme", content: "L’`écoféminisme` est un **courant politique et philosophique** qui a tardé à arriver en France mais grâce à la résurgence d’une `conscience écologique mêlée aux luttes féministes` en 2019-2020, j’en entends de plus en plus parler dans mon entourage français. Tout comme un `accroissement des théories de convergences des luttes`. 

### Mais qu’est-ce que l’écoféminisme, vous me demanderez ?
  
1. Je vous conseille de regarder [cette courte vidéo](https://www.arte.tv/fr/videos/094215-000-A/l-ecofeminisme-d-ou-ca-vient/) (2min), expliquant la **naissance du mouvement**. Et vous verra qu’une de ses initiatrices est bien française (merci **Françoise d’Eaubonne**).
  
2. Cette [interview](https://reporterre.net/Emilie-Hache-Pour-les-ecofeministes-destruction-de-la-nature-et-oppression-des-femmes) d’**Emilie Hache** permet également de comprendre les **fondements du mouvement**.
  
3. Je vous recommande également cet entretien podcast avec **Vandana Shiva** (en anglais), unes des grandes figures du mouvement.
  
4. Sans parler, ni citer l’écoféminisme, ce podcast avec **Pascale D’Erm** pour son livre '**Sœurs en écologie**' paru le 30 Mars 2017 aux Editions La mer salée, et **Anne Ribes**, infirmière et paysagiste [est également dans le coeur du sujet]( https://www.franceculture.fr/emissions/de-cause-effets-le-magazine-de-lenvironnement/lecologie-au-feminin).
  
> Théoriciennes éco-féministes : **Françoise d’Eaubonne**, **Vandana Shiva**, **Starhawk**, **Donna Haraway**, **Maria Mies**, et bien d'autres...
  ", user_id: User.find_by(nickname:"JessL").id, difficulty: "Difficile",category_id: Category.find_by(name:"Philosophie").id)

Subject.create(title: "La musculation - de débutant à plus trop trop débutant ! (la première année en programme)", content: "Ah!  Le  jour de l'an, les bonnes résolutions... 

  Chaque année, je vois à la salle des dizaines et des dizaines de personnes qui viennent pour la toute première fois, bien décidé à acquérir un `corps d'Appolon`, à la sueur de leur front ! 
  
  Un mois plus tard, la plupart ont disparus ! *Mais que s'est-il passé?*
  
  Ils ne savaient pas ou aller. Ils se sont rendus compte qu'ils perdaient pas 10 centimètre de tour de taille, ni pris 5kg de muscle en une semaine... Ou pire, ils se sont **blessés**? Déçus, ils ne remettront plus un pied à la salle une seule fois, avant le 1er Janvier prochain.
  
  Cela fait 10 ans que je vais entre trois et sept fois par semaine à la salle, depuis que j'ai 12 ans (oui, j'étais tout petit, aha), et mon papa avant moi y allait depuis trente ans. Il m'a donné quelques 'tips d'anciens', et je me suis très vite fasciné par ce sport, cette science du physique humain, et l'art de vivre qu'il implique, avec sa nutrition, et ses entraînements sanglants (on n'est pas là pour rigoler). C'est ces quelques années d'expérience et de passion que je vais essayer de vous partager ici, dans cette ressource.
  
  1. Les **premiers mois sont les plus importants de tous**. C'est là où une `transformation rapide` arrive, si tu fais les **choses bien**. 
  C'est pourquoi je te conseilles d'apprendre les mouvements BASIQUES (polyarticulaires), comme le `Squat`, le `Développé Couché`, le `Soulevé de Terre`, `le Rowing Barre` et `le Développé Militaire`. Avec ces 5 exercices, et **une bonne alimentation**, j'ai pris 20 kilogrammes, la première année de musculation. Par chance, il existe une méthode, qui utilises ces exercices qui sont les plus puissants, qu'importe ton objectif: *prise de force*, *prise de masse* ou *perte de poids*. C'est la `MÉTHODE STRONGLIFT 5X5` qui est juste incroyable. Et en plus d'être incroyable, il existe une [application drôlement bien faite](https://apps.apple.com/us/app/stronglifts-5x5-weight-lifting/id488580022) qui te suivra tout au long du chemin. Temps recommandé: **TROIS MOIS**, le temps d'acquérir une *base solide*.
  
  2. Pendant ce temps, au niveau de l'alimentation: il y a deux écoles qui se valent, en fonction de ta `morphologie`. On a défini trois grands types de morphologies:  les **ectomorphes** (ceux qui ne prennent pas de poids facilement, autant gras que muscle), les **mésomorphes** (ceux qui prennent du muscle facilement, mais pas trop de gras en général) et les **endomorphes** (ceux qui prennent du poids facilement). Selon ta morphologie, tu choisiras l'un de ces trois régimes alimentaires:
  - Si tu es `ectomorphe`: tu mangeras 6 repas par jour, séquencés tout au long de la journée, toutes les 2/3 heures. Dans ces repas, tu y inclura des glucides (féculents et sucres lents), ainsi qu'une bonne dose de protéines (viande, oeufs, whey, légumineuses, fromage blanc...) et des bonnes graisses. 
  - Si tu es `mésomorphe`: tu mangeras **3 repas par jour**, un le matin, un le midi, un le soir. Tu essaieras **d'entourer tes séances de glucides**, et **chaque repas sera composé d'un élément protéiné**. *Sucres rapides à bannir.*
  - Si tu es `endomorphe , c'est là que ça devient intéressant: les scientifiques ont récemment prouvés les bénéfices du `Jeune Intermittant`, en particulier la `[METHODE LEANGAINS](https://leangains.com/the-leangains-guide/)` qui consiste à jeuner 16 heures par jour, tout en ayant des fenêtres de 8 heure de période de **feeding**. Cette méthode à fait des miracles. J'ai perdu grâce à elle une quinzaine de kilos en trois mois. On essaiera également de diminuer les glucides petit à petit, en en gardant un petit peu avant l'entraînement.
  
  3. Les trois premiers mois vont être `intenses`. Tu vas avoir envie d'abandonner, c'est sûr. Mais si tu suis cela, tu mets toutes tes chances de ton côté. À la suite de ces trois mois de `STRONGLIFT`, tes performances, et ton physique seront déjà métamorphosés. Mais tu ne vas pas t'arrêter là:
  - Le mois qui va suive, tu vas faire du `Half-Body`, fameux programme de 4 jours par semaines, ou tu vas travailler un jour le haut du corps, un jour le bas du corps! Ce [programme de Fitness Park](https://www.fitnesspark.fr/actualites/entrainement/conseils-dentrainement/programme-musculation-half-body/) est pas trop mal! 
  - Les deux mois qui vont suivre, tu vas faire du `PPL: Push-Pull-Legs`, tu peux consulter [cet article](https://builtwithscience.com/push-pull-legs-routine/) qui explique en profondeur ton prochain programme adoré ! 
  - Puis ensuite, tu partiras pendant deux petits mois de plus sur **[un bon split des familles](https://www.muscleandstrength.com/articles/the-ultimate-muscle-building-split-reference-guide.html)**.
  - Et pour finir ta première année en beauté, un bon petit programme **1/muscle/jour**. À ce stade là, tu seras assez grand pour te faire **ton propre programme** !
    ", user_id: User.find_by(nickname:"AlexF").id, difficulty: "Débutant",category_id: Category.find_by(name:"Sport").id)
  
# Subject.all.each do |subject|
#   Comment.create(user_id: User.first.id, subject_id: subject.id, content: "#{subject.id}")
# end

# Comment.all.each do |comment|
#   CommentLike.create(user_id: User.first.id, comment_id: comment.id)
#   CommentDislike.create(user_id: User.last.id, comment_id: comment.id)
# end

