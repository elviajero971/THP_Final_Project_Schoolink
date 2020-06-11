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
  nickname: "JeanMichel",
  description: "J'aime l'art et je voudrais apprendre le Yoga",
  email: "whiteboard1@yopmail.com",
  age: 32,
  password: "123456",
  is_admin: false
)
# Admin
User.create(
  nickname: "WhiteAdmin",
  description: "Je suis le king",
  email: "whiteboard.thp@yopmail.com",
  age: 40,
  password: "123456",
  is_admin: true
)
# User2
User.create(
  nickname: "ArianaGrande",
  description: "J'aimerais apprendre à chanter",
  email: "whiteboard2@yopmail.com",
  age: 12,
  password: "123456",
  is_admin: false
)
# User3
User.create(
  nickname: "EnzoLeCorbo",
  description: "Je suis un pro du frisbee",
  email: "whiteboard3@yopmail.com",
  age: 19,
  password: "123456",
  is_admin: false
)
# User4
User.create(
  nickname: "JackyLaChenille",
  description: "Je veux apprendre à lire",
  email: "whiteboard4@yopmail.com",
  age: 90,
  password: "123456",
  is_admin: false
)


Category.create(name: "Musique")
Category.create(name: "Développement Web")
Category.create(name: "Science")
Category.create(name: "Sport")
Category.create(name: "Langues")
Category.create(name: "Bien-Être")
Category.create(name: "Spiritualité")
Category.create(name: "Art")
Category.create(name: "Modes de vies alternatifs")
Category.create(name: "Psychologie")
Category.create(name: "Philosophie")



Subject.create(title: "Apprendre le Piano", content: "Pour apprendre le piano il faut aller sur ce lien", user_id: rand(User.first.id..User.last.id), difficulty: "Intermédiaire",category_id: Category.find_by(name:"Musique").id)
Subject.create(title: "HTML5 & Cie", content: "Pour apprendre le HTML5 il faut aller sur ce lien", user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Développement Web").id)
Subject.create(title: "La chimie ça déboite", content: "Pour apprendre la chimie il faut être crazy", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Science").id)
Subject.create(title: "Tout sur la coupe du monde 98", content: "Culture gééééénéraleee sur la coupe du monde 98", user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Sport").id)
Subject.create(title: "Apprendre à jouer au Ping Pong comme un chinois", content: "Tu veux être un dingue de Ping Pong ? Clique ici !", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Sport").id)
Subject.create(title: "Physique Quantique", content: "Les bases de la physique quantique !", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Science").id)
Subject.create(title: "Le violon comme si t'étais un pro", content: "Tout savoir sur le violon", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Musique").id)

Subject.create(title: "Commencer à apprendre l’espagnol", content: "Apprendre une langue n’est jamais facile. En quelques mois j’ai réussi à apprendre les bases de l’espagnol. Cela m’a permise d’échanger avec les gens lors de mon voyage en Argentine. J’aimerais vous partager ici les astuces qui m’ont permises d’apprendre rapidement les bases.<br>
  Les vidéos youtube de la chaîne ¡Aprende español con Saby! sont super.
  Lien de la première vidéo: https://www.youtube.com/watch?v=MRW2f_UMj<br>
  J’ai beaucoup aimé les livres de la méthode Assimil, notamment le livre : « L’espagnol »lien vers le livre: https://www.assimil.com/collection-sans-peine/1339-l-espagnol-9782700570892.html \n
  Le livre est progressif et à raison d’une demi-heure par jour, j’ai trouvé un rythme confortable pour mon apprentissage.</n>
  En complément j’ai essayé plusieurs application et j’en ai trouvé deux qui m’ont beaucoup aidé : Duolingo et Memrise.<br>Lien pour Duolingo: https://fr.duolingo.com/<br>
  Lien pour Memrise : https://www.memrise.com/fr/ <br>
  Quand on apprend une langue, il y a des incontournables, comme par exemple regarder des films ou des séries en version originale ! Voici une liste de mes préférés :
  Films : Volver, Mujeres al borde de un ataque de nervios, Amores perros, La Mala Educación <br>
  Séries : Narcos, La Casa de Papel, Un, dos tres".html_safe, user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Musique").id)
Subject.create(title: "Démarrer un potager en permaculture", content: "Ayant hérité d’un terrain familial dans le Vercors, j’ai décidé, il y’a quelques années maintenant, de m’aventurer sur la voie de l’autosuffisance alimentaire. Certes, mais par où commencer ? J’avais alors déjà entendu parlé de la permaculture et j’eu envie d’expérimenter cette technique d’agriculture sur ma parcelle d’un hectare environ. <br>
  Pour la théorie, je recommande tout bonnement la bible de la permaculture”Introduction À la Permaculture” de Bill Mollison. Le livre est disponible au lien suivant : shorturl.at/eTU78 <br>
  Bien que controversé, je recommande tout de même le livre de Claude et Lydia Bougignon : https://livre.fnac.com/a12599380/Philippe-Duchaufour-Introduction-a-la-science-du-sol?oref=00000000-0000-0000-0000-000000000000&Origin=SEA_GOOGLE_PLA_BOOKS&esl-k=sem-google|ng|c294196405911|m|kpla374773846736|p|t|dc|a58200328279|g1553156614&gclsrc=aw.ds&&gclid=CjwKCAjw5vz2BRAtEiwAbcVIL4TiSmvyNwFu-u0U48sgRPG_OHrJj4CyQKgIdrCfRoBK5pDHsFOGpxoCTTsQAvD_BwE <br>
  Pour ce qui est de la pratique, je recommande vivement les vidéos de la chaîne Youtube Permaculture Agroécologie etc : https://www.youtube.com/user/permacultureetc/videos qui ont fait guise d’une véritable initiation pour moi. Je recommande notamment cette vidéo : https://www.youtube.com/watch?v=KI2bwOFnyCU pour débuter à cultiver sur des buttes. <br>
  Enfin, en complément je recommande cette vidéo qui couvre à peu près tous les points et éléments à connaître pour débuter son jardin de permaculture : https://www.youtube.com/watch?v=lyLQYVJDerE&frags=pl%2Cwn".html_safe, user_id: rand(User.first.id..User.last.id), difficulty: "Intermédiaire",category_id: Category.find_by(name:"Langues").id)
Subject.create(title: "Ukulélé en 5 étapes", content: "N’ayant aucune base en instrument à corde, j’ai voulu apprendre le ukulélé tout simplement parce que je me suis rappelé qu’une amie hawaienne m’en avait rapporté un en souvenir. J’ai donc parcouru le net à la recherche de tutoriels et cours gratuits qui existaient. Après environ 5 mois d’apprentissage où je pratiquais plus ou moins 30 minutes par jour, je suis arrivé à un niveau que je jugeais satisfaisant. <br>
  Matériel recommandé: un ukulélé et un tuner. <br>
  <bold>Andy Guitar<bold>
  Je recommande de suivre les 3 premières vidéos de la chaîne YouTube d’Andy Guitar et de les revoirs toutes les semaines en faisant les exercices recommandés. Ces vidéos simples et ludiques (dès la première vidéo de 20min, vous apprenez à jouer une chanson), m’ont permis de progresser pas à pas en apprenant toujours quelques accords de plus à chaque leçon.<br>
  La chaîne YouTube Ben au Ukulélé est aussi pleine de bon conseil et tutos pour des chansons. Sa vidéo https://www.youtube.com/watch?v=98dizc1ZNFw&t=339s est très explicite et facile à appréhender. <br>
  <bold>Ukulele Travel:<bold>
  J’ai beaucoup apprécié les conseils gratuit sur le site yukuleletravel.com<br>
  Des bonnes astuces et des entraînements tous niveaux bien adaptés.<br>
  https://www.ukuleletravel.com/category/debuter-le-ukulele<br>".html_safe, user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Modes de vies alternatifs").id)
Subject.create(title: "Une heure pour comprendre : le Yoga", content: "Passionné par les philosophies orientales et la spiritualité en général, je suis parti pendant six mois en Inde faire un tour des ashrams et monastères pour apprendre le yoga et la méditation. Moi qui associait ça à des gens en legging qui font des acrobaties dans la salle de cours collectifs de la salle de sport, j’étais loin de me douter de l’art de vivre à part entière et de la puissance du yoga, quand on commence à l’implémenter dans sa vie.<br>
  Je suis donc allé à la rencontre de ces “maîtres spirituels” indiens, discutés avec ces Saddhus qui vivent dans des grottes dans l’Himalaya, médité pendant des centaines d’heures, lu des dizaines de livres sur le sujet et côtoyé des yogis plus ou moins expérimentés des quatres coins du monde. Voici un ensemble de ressources que j’ai à partager avec vous.<br>
  Il existe de nombreux types de yogas. Swami Vivekananda, un grand maître Indien du XIXè siècle en désignait quatre: le Jnana Yoga (voie de la connaissance), le Raja Yoga (voie de l’expérience physique (postures et pranayama) et des ascèses, dont fait parti l’Hatha), le Bhakti Yoga (voie de l’amour et de la dévotion), et le Karma Yoga (voie de l’action et du service).<bre>
  Voici donc plusieurs ressources (livres, textes sacrés et vidéos YouTube, pour comprendre ce qu’est le Yoga):<br>
  Le classique du Yoga, l’un des pères fondateurs de l’Ashtanga, Patanjali, qui explique dans son livre “ Les Yoga Sutras”, ce que sont les huit branches du yoga. https://www.amazon.fr/Yoga-Sutras-Patanjali-ebook/dp/B00GWMD0VG/ref=sr_1_1?__mk_fr_FR=ÅMÅŽÕÑ&dchild=1&keywords=patanjali+yoga+sutra&qid=1591709819&sr=8-1 
  Il existe aussi des versions gratuites en anglais. https://archive.org/details/yogasutrasofpata00pata/page/n9/mode/2up <br>
  Vous pouvez aussi lire le “Hatha Yoga Pradipika” qui est une Bible du Hatha Yoga (pour aller plus loin). https://archive.org/details/hathayogapradipikaswamimuktibodhananda_202003_329_Y <br>
  Si il y a bien une série d’assanas à apprendre, c’est la fameuse “salutation au soleil” (Surya Namaskar) qui est à mes yeux le meilleur ensemble de postures pour balancer sa chimie intérieure. Tu pourras l’apprendre sur cette vidéo. https://www.youtube.com/watch?v=BYzwYAl3yEQ <br>
  Les Pranayamas sont un autre moyen de nous libérer de l’emprise du mental à travers des exercices de respiration. Il existe énormément de méthodes que vous pourrez apprendre directement avec des Yogis. Mais certaines de ces méthodes mal faites, peuvent être dangereuses. C’est pourquoi je te recommande les exercices de la “Wim Hof Method”, qui est à mes yeux extra-ordinaire. De rien! :) https://www.youtube.com/watch?v=tybOi4hjZFQ <br>
  Si vous comprenez l’anglais, et que vous voulez vous atteindre des niveaux plus avancés de conscience, cette chaîne Youtube, est vraiment la meilleure chaîne de spiritualité existante sur YouTube. Tu pourras y trouver les enseignements des plus grands gurus et maîtres qui ont existés. Tu ne comprendra peut-être pas tout pour l’instant, mais plus ta conscience s’élèvera, plus tu comprendras.... https://www.youtube.com/channel/UCz6X8QK9_JG49hJxnzAu-1w <br>
  ", user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Spiritualité").id)
Subject.create(title: "Comprendre le slow cinema", content: "Cette ressource s’adresse à tous.tes les cinéphiles amateurs comme moi ! Je suis étonnée par le manque de ressources disponibles sur le net sur tout ce qui touche au mouvement slow cinema ou cinéma contemplatif. <br>
  Ce genre est un genre filmique qui met l'accent sur des longues prises et qui est souvent minimaliste, observationnel et avec peu ou pas de récit. Les progéniteurs du genre incluent Andrei Tarkovsky, Ingmar Bergman, Michelangelo Antonioni, Robert Bresson, Aleksandr Sokurov, Béla Tarr, Chantal Akerman et Theo Angelopoulos. Tarkovsky avait soutenu que 'I think that what a person normally goes to cinema for is time'. <br>
  Avant de se plonger au coeur du cinéma contemplatif, je recommande de suivre cette vidéo ludique de l’émission Blow-Up (Arte) qui survole, avec des exemples, les mouvements de caméra au cinéma : https://www.youtube.com/watch?v=00dQC2yCIJA <br>
  Et c’est en visionnant le superbe Kaili Blues (2016) de Bi Gan que j’ai décidé d’entreprendre des recherches sur ce genre qui m’était jusqu’à alors peu connu. Cette vidéo du critique cinématographique Ryan Swen décrypte bien le genre et le film en se référant à plusieurs exemples : https://www.youtube.com/watch?v=tshaoIotNYI <br>
  Cet article de The Guardian permet également de en quoi le slow cinema est un contrecoup au cinema mainstream qui enchaîne des plans séquences rapides : https://www.theguardian.com/film/2012/mar/09/slow-cinema-fights-bournes-supremacy <br>
  Mes slow films préférés : Le Désert Rouge (1964) de Michelangelo Antonioni, Tropical Malady (2004) de Apichatpong Weerasethakul, La Captive (2000) de Chantal Ackerman et India Song (1975) de Marguerite Duras. ".html_safe, user_id: rand(User.first.id..User.last.id), difficulty: "Intermédiaire",category_id: Category.find_by(name:"Art").id)
Subject.create(title: "Introduction à la Psychologie sociale du langage et de la communication", content: "Je souhaite partager avec vous mon processus d’apprentissage aux théories de la psychologie Psychologie du langage et de la communication, et plus précisément aux théories de Discrimination et Préjugés. <br>
  Étudiante en Communication, la psychologie sociale m’était alors une discipline inconnue et une professeure engageante m’a amenée à rédiger mon mémoire d’étude sur L’impact des politiques d’intégration et de communautarisme sur la discrimination envers les populations immigrés (n’hésitez pas commenter cette ressource si vous aimeriez le consulter).<br>
  Malheureusement, pour ce qui touche à la recherche scientifique, la grande majorité des articles sont en anglais donc vous devez avoir des bases en cette langue pour comprendre. Je précise lorsqu’un article est en français. <br>
  Lorsqu’on débute dans la discipline, je recommande fortement de lire cet article qui introduit les les concepts de bases : https://www.tandfonline.com/doi/abs/10.1080/00224545.2012.711380<br>
  Cet article de Beukeboom, théoricien fortement cité en la matière, permet de comprendre en quoi les biais linguistiques, inconscients, permettent de maintenir des stéréotypes : https://www.researchgate.net/publication/258290822_Mechanisms_of_linguistic_bias_How_words_reflect_and_maintain_stereotypic_expectancies <br>
  Cet article (en français) sur le racisme et la discrimination permet d’établir le lien entre la psychologie de la communication et les discriminations, notamment au travers de la catégorisation :
  https://www.researchgate.net/publication/265966313_Bourhis_RY_Montreuil_A_2004_Les_assises_socio-psychologiques_du_racisme_et_de_la_discrimination_Dans_J_Renaud_A_Germain_X_Leloup_Eds_Racisme_et_discrimination_Permanence_et_resurgence_d%27un_phenomene_i <br>
  Enfin, cet article de Licata aborde la question de l’autocatégorisation et de l’identité sociale : https://psychologiescientifique.org/wp-content/uploads/2018/02/Licata-2007-La-théorie-de-l’identité-sociale-et-la-théorie-de-.pdf <br>
  ", user_id: rand(User.first.id..User.last.id), difficulty: "Débutant",category_id: Category.find_by(name:"Psychologie").id)
Subject.create(title: "Introduction à l’écoféminisme", content: "L’écoféminisme est un courant politique et philosophique qui a tardé à arriver en France mais grâce à la résurgence d’une conscience écologique mêlée à aux luttes féministes en 2019-2020, j’en entends de plus en plus parler dans mon entourage français. Tout comme un accroissement des théories de convergences des luttes. Mais qu’est-ce que l’écoféminisme, vous me demanderez ? <br>
  Je vous conseille de regarder cette courte vidéo (2min), expliquant la naissance du mouvement. Et vous verra qu’une de ses initiatrices est bien française (merci Françoise d’Eaubonne) : 
  https://www.arte.tv/fr/videos/094215-000-A/l-ecofeminisme-d-ou-ca-vient/ <br>
  Cet interview d’Emilie Hache permet également de comprendre les fondements du mouvement : 
  https://reporterre.net/Emilie-Hache-Pour-les-ecofeministes-destruction-de-la-nature-et-oppression-des-femmes <br>
  Je vous recommande également cet entretien podcast avec Vandana Shiva (en anglais), unes des grandes figures du mouvement : https://soundcloud.com/nouvelles-ecoutes/la-poudre-episode-68-vandana-shiva-double-en-francais <br>
  Sans parler, ni citer l’écoféminisme, ce podcast avec Pascale D’Erm pour son livre 'Sœurs en écologie' paru le 30 Mars 2017 aux Editions La mer salée, et Anne Ribes, infirmière et paysagiste est également dans le coeur du sujet : 
  https://www.franceculture.fr/emissions/de-cause-effets-le-magazine-de-lenvironnement/lecologie-au-feminin <br>
  Théoriciennes éco-féministes : Françoise d’Eaubonne, Vandana Shiva, Starhawk, Donna Haraway, Maria Mies, ...
  ", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Philosophie").id)
