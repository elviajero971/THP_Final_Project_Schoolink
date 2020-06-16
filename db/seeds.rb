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
Subject.create(title: "Démarrer un potager en permaculture", content: "<h3><strong>Mon int&eacute;r&ecirc;t pour la mati&egrave;re</strong></h3><p>Ayant h&eacute;rit&eacute; d&rsquo;un terrain familial dans le Vercors, j&rsquo;ai d&eacute;cid&eacute;, il y&rsquo;a quelques ann&eacute;es maintenant, de m&rsquo;aventurer sur la voie de <em>l&rsquo;autosuffisance alimentaire</em>. Certes, mais par o&ugrave; commencer ? J&rsquo;avais alors d&eacute;j&agrave; entendu parl&eacute; de la permaculture et j&rsquo;eu envie d&rsquo;exp&eacute;rimenter cette technique d&rsquo;agriculture sur ma parcelle d&rsquo;un hectare environ.&nbsp;</p><h3><strong>Liens</strong></h3><p><strong>1.</strong> Pour la th&eacute;orie, je recommande tout bonnement la <strong>bible de la permaculture.&nbsp;</strong><a href=\"https://www.permatheque.fr/PDF/Bill%20Mollison%20-%20Permaculture%201.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Introduction &agrave; la Permaculture</a> de <em>Bill Mollison</em>.&nbsp;</p><p><strong>2.</strong> Bien que controvers&eacute;, je recommande tout de m&ecirc;me le <a href=\"https://livre.fnac.com/a12599380/Philippe-Duchaufour-Introduction-a-la-science-du-sol?oref=00000000-0000-0000-0000-000000000000&Origin=SEA_GOOGLE_PLA_BOOKS&esl-k=sem-google|ng|c294196405911|m|kpla374773846736|p|t|dc|a58200328279|g1553156614&gclsrc=aw.ds&&gclid=CjwKCAjw5vz2BRAtEiwAbcVIL4TiSmvyNwFu-u0U48sgRPG_OHrJj4CyQKgIdrCfRoBK5pDHsFOGpxoCTTsQAvD_BwE\" rel=\"noopener noreferrer\" target=\"_blank\">livre</a> de<em>&nbsp;Claude et Lydia Bougignon</em>.&nbsp;</p><p><strong>3.</strong> Pour ce qui est de la pratique, je recommande vivement les vid&eacute;os de la cha&icirc;ne Youtube <a href=\"https://www.youtube.com/user/permacultureetc/videos\" rel=\"noopener noreferrer\" target=\"_blank\">Permaculture Agro&eacute;cologie</a> qui ont fait guise d&rsquo;une v&eacute;ritable initiation pour moi. Je recommande notamment la vid&eacute;o ci-dessous, pour d&eacute;buter &agrave; cultiver sur des buttes.&nbsp;</p><p><span class=\"fr-jiv fr-video fr-deletable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/KI2bwOFnyCU?&wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span><br></p><p><strong>4.</strong> Enfin, en compl&eacute;ment je recommande cette <a href=\"https://www.youtube.com/watch?v=lyLQYVJDerE&frags=pl%2Cwn\" rel=\"noopener noreferrer\" target=\"_blank\">vid&eacute;o</a> qui couvre &agrave; peu pr&egrave;s tous les points et &eacute;l&eacute;ments &agrave; conna&icirc;tre pour <em>d&eacute;buter son jardin de permaculture</em>.</p>", user_id: User.find_by(nickname:"JessL").id, difficulty: "Intermédiaire",category_id: Category.find_by(name:"Écologie").id)
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
Subject.create(title: "Comprendre le slow cinema", content: "<h3><strong>Pr&eacute;ambule</strong></h3><p>Cette ressource s&rsquo;adresse &agrave; tous les cin&eacute;philes amateurs comme moi ! Je suis &eacute;tonn&eacute;e par le manque de ressources disponibles sur le net sur tout ce qui touche au mouvement `slow cinema` ou `cin&eacute;ma contemplatif`. Ce genre est un genre filmique qui met l&#39;accent sur des <em>longues prises</em> et qui est souvent <em>minimaliste</em>, <em>observationnel</em> et avec peu ou pas de r&eacute;cit. Les prog&eacute;niteurs du genre incluent <em>Andrei Tarkovsky</em>, <em>Ingmar Bergman</em>, <em>Michelangelo Antonioni</em>, <em>Robert Bresson</em>, <em>Aleksandr Sokurov</em>, <em>B&eacute;la Tarr</em>, <em>Chantal Akerman</em> et <em>Theo Angelopoulos</em>.&nbsp;</p><p>Tarkovsky avait soutenu que &#39;<em>I think that what a person normally goes to cinema for is time</em>&#39;.&nbsp;</p><h3><strong>Liens</strong></h3><p><strong>1.&nbsp;</strong>Avant de se plonger au coeur du cin&eacute;ma contemplatif, je recommande de suivre cette vid&eacute;o ludique de l&rsquo;&eacute;mission <strong>Blow-Up&nbsp;</strong>(Arte) qui survole, avec des exemples, les mouvements de cam&eacute;ra au cin&eacute;ma.&nbsp;</p><p><span class=\"fr-jiv fr-video fr-deletable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/00dQC2yCIJA?&wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span><br></p><p><strong>2</strong>. Et c&rsquo;est en visionnant le superbe<strong>&nbsp;Kaili Blues</strong> (2016) de<em>&nbsp;Bi Gan</em> que j&rsquo;ai d&eacute;cid&eacute; d&rsquo;entreprendre des recherches sur ce genre qui m&rsquo;&eacute;tait jusqu&rsquo;&agrave; alors peu connu. Cette vid&eacute;o du critique cin&eacute;matographique <em>Ryan Swen</em> d&eacute;crypte bien le genre et le film en se r&eacute;f&eacute;rant &agrave; plusieurs exemples.</p><p><span class=\"fr-jiv fr-video fr-deletable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/tshaoIotNYI?&wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span><br></p><p><br></p><p><strong>3.</strong> Cet <a href=\"https://www.theguardian.com/film/2012/mar/09/slow-cinema-fights-bournes-supremacy\" rel=\"noopener noreferrer\" target=\"_blank\">article</a> de The Guardian permet &eacute;galement de en quoi le slow cinema est un contrecoup au cinema mainstream qui encha&icirc;ne des plans s&eacute;quences rapides.&nbsp;</p><h3><strong>Mes slow films pr&eacute;f&eacute;r&eacute;s :&nbsp;</strong></h3><p><strong>Le D&eacute;sert Rouge</strong> (1964) de <em>Michelangelo Antonioni</em>, <strong>Tropical Malady</strong> (2004) de <em>Apichatpong Weerasethakul</em>,<strong>&nbsp;La Captive&nbsp;</strong>(2000) de <em>Chantal Ackerman</em> et <strong>India Song</strong> (1975) de <em>Marguerite Duras</em>.</p>".html_safe, user_id: User.find_by(nickname:"JessL").id, difficulty: "Intermédiaire",category_id: Category.find_by(name:"Art").id)
Subject.create(title: "Introduction à la Psychologie sociale du langage et de la communication", content: "<h3><strong>&Agrave; l&#39;origine</strong></h3><p>Je souhaite partager avec vous mon processus d&rsquo;apprentissage aux th&eacute;ories de la psychologie <em>psychologie du langage et de la communication</em>, et plus pr&eacute;cis&eacute;ment aux th&eacute;ories de <em>Discrimination et Pr&eacute;jug&eacute;s</em>. &Eacute;tudiante en Communication, la <strong>psychologie sociale</strong> m&rsquo;&eacute;tait alors une discipline inconnue et une professeure engageante m&rsquo;a amen&eacute;e &agrave; r&eacute;diger mon m&eacute;moire d&rsquo;&eacute;tude sur l&rsquo;<em>impact des politiques d&rsquo;intégration et de communautarisme sur la discrimination envers les populations immigrés</em> (<u>n&rsquo;h&eacute;sitez pas commenter cette ressource si vous aimeriez le consulter</u>). Malheureusement, pour ce qui touche &agrave; la recherche scientifique, la grande majorit&eacute; des articles sont <strong><u>en anglais</u></strong> donc vous devez avoir des bases en cette langue pour comprendre. Je pr&eacute;cise lorsqu&rsquo;un article est en fran&ccedil;ais.</p><h3><strong>Articles</strong></h3><p><strong>1.</strong> Lorsqu&rsquo;on d&eacute;bute dans la discipline, je recommande fortement de lire cet <a href=\"https://www.tandfonline.com/doi/abs/10.1080/00224545.2012.711380\" rel=\"noopener noreferrer\" target=\"_blank\">article</a> qui<em>&nbsp;introduit les les concepts de bases</em>.&nbsp;</p><p><strong>2.</strong> Cet article de <a href=\"https://www.researchgate.net/publication/258290822_Mechanisms_of_linguistic_bias_How_words_reflect_and_maintain_stereotypic_expectancies\" rel=\"noopener noreferrer\" target=\"_blank\">Beukeboom</a>, th&eacute;oricien fortement cit&eacute; en la mati&egrave;re, permet de comprendre <em>en quoi les biais linguistiques, inconscients, permettent de maintenir des st&eacute;r&eacute;otypes</em>.&nbsp;</p><p><strong>3.</strong> Cet <a href=\"https://www.researchgate.net/publication/265966313_Bourhis_RY_Montreuil_A_2004_Les_assises_socio-psychologiques_du_racisme_et_de_la_discrimination_Dans_J_Renaud_A_Germain_X_Leloup_Eds_Racisme_et_discrimination_Permanence_et_resurgence_d%27un_phenomene_i\" rel=\"noopener noreferrer\" target=\"_blank\">article</a> (en fran&ccedil;ais) sur le <em>racisme et la discrimination</em> permet d&rsquo;&eacute;tablir le lien entre la psychologie de la communication et les discriminations, notamment au travers de la cat&eacute;gorisation.</p><p><strong>4.</strong> Enfin, cet article de <a href=\"https://psychologiescientifique.org/wp-content/uploads/2018/02/Licata-2007-La-théorie-de-l’identité-sociale-et-la-théorie-de-.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Licata</a> aborde la question de l<em>&rsquo;autocat&eacute;gorisation et de l&rsquo;identit&eacute; sociale</em>.</p>", user_id: User.find_by(nickname:"JessL").id, difficulty: "Débutant",category_id: Category.find_by(name:"Psychologie").id)
Subject.create(title: "Introduction à l’écoféminisme", content: "<h3><strong>D&eacute;finition</strong></h3><p><em>L&rsquo;&eacute;cof&eacute;minisme</em> est un <strong>courant politique et philosophique</strong> qui a tard&eacute; &agrave; arriver en France mais gr&acirc;ce &agrave; la r&eacute;surgence d&rsquo;une conscience &eacute;cologique m&ecirc;l&eacute;e aux luttes f&eacute;ministes en 2019-2020, j&rsquo;en entends de plus en plus parler dans mon entourage fran&ccedil;ais. Tout comme un accroissement des th&eacute;ories de convergences des luttes.&nbsp;</p><p><strong>Mais qu&rsquo;est-ce que l&rsquo;&eacute;cof&eacute;minisme, vous me demanderez ?</strong></p><h3><strong>Liens&nbsp;</strong></h3><p>1. Je vous conseille de regarder cette courte <a href=\"https://www.arte.tv/fr/videos/094215-000-A/l-ecofeminisme-d-ou-ca-vient/\" rel=\"noopener noreferrer\" target=\"_blank\">vid&eacute;o</a> (2min), expliquant la <strong>naissance du mouvement</strong>. Et vous verra qu&rsquo;une de ses initiatrices est bien fran&ccedil;aise (merci <em>Fran&ccedil;oise d&rsquo;Eaubonne</em>).&nbsp;</p><p>2. Cette <a href=\"https://reporterre.net/Emilie-Hache-Pour-les-ecofeministes-destruction-de-la-nature-et-oppression-des-femmes\" rel=\"noopener noreferrer\" target=\"_blank\">interview</a> d&rsquo;<em>Emilie Hache</em> permet &eacute;galement de comprendre les <em>fondements du mouvement</em>.&nbsp;</p><p>3. Je vous recommande &eacute;galement cet entretien podcast avec <em>Vandana Shiva</em> (en anglais), unes des grandes figures du mouvement.&nbsp;</p><p>4. Sans parler, ni citer l&rsquo;&eacute;cof&eacute;minisme, ce <a href=\"https://www.franceculture.fr/emissions/de-cause-effets-le-magazine-de-lenvironnement/lecologie-au-feminin\" rel=\"noopener noreferrer\" target=\"_blank\">podcast</a> avec <em>Pascale D&rsquo;Erm</em> pour son livre <strong>S&oelig;urs en &eacute;cologie</strong> paru le 30 Mars 2017 aux Editions La mer sal&eacute;e, et <em>Anne Ribes</em>, infirmi&egrave;re et paysagiste est &eacute;galement dans le coeur du sujet.</p><h3><strong>Th&eacute;oriciennes &eacute;co-f&eacute;ministes :&nbsp;</strong></h3><p><em>Fran&ccedil;oise d&rsquo;Eaubonne, Vandana Shiva, Starhawk, Donna Haraway, Maria Mies</em>, et bien d&#39;autres...</p>", user_id: User.find_by(nickname:"JessL").id, difficulty: "Difficile",category_id: Category.find_by(name:"Philosophie").id)

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

