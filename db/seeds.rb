# Les trops belles et biens faites seeds

# USERS seeds
alfred = User.create([
        { last_name: "Gaudin" },
        { first_name: "Alfred" },
        { email: "alfred.gaudin@gmail.com" },
        { password: "jaimelespoissons" },
        { description: "Fan de pêche, j'adore prendre soin de mes poissons et passer du temps devant mon aquarium à les regarder. J'aime la nature et encore plus les océans donc je trouve ça super de pouvoir apporter un petit bout d'océan chez moi" },
       ])

marin = User.create([
        { last_name: "Dodousse" },
        { first_name: "Marin" },
        { email: "marin.dodousse@gmail.com" },
        { password: "vivelapeche" },
        { description: "J'aime sentir l'odeur de poisson, les brises marines sont revigorantes et m'apporte un très beau teint" },
        ])

james = User.create([
        { last_name: "Cook" },
        { first_name: "James" },
        { email: "james.cook@newfoundland.com" },
        { password: "ouicapitaine" },
        { description: "J'adore la mer et les poissons" },
        ])

edward = User.create([
        { last_name: "Teach" },
        { first_name: "Edward" },
        { email: "barbenoire@gmail.com" },
        { password: "tuertoutlemonde" },
        { description: "J'adore tuer des gens mais les poissons ça va parce que c'est pas vraiment des humains donc j'accepte de les laisser en vie! Et d'ailleurs je m'en occupe super bien" },
        ])

smith = User.create([
        { last_name: "Smith" },
        { first_name: "James" },
        { email: "j.smith@titanic.com" },
        { password: "titanic" },
        { description: "Fan de navigation, après quelques soucis avec mon bateau j'ai décidé de m'intérésser à le faune et la flore marine de manière à mieux appréhender l'environnement qui m'entoure pour ne pas casser mon futur bateau (pas comme le précédent)" },
        ])

christophe = User.create([
        { last_name: "Colomb" },
        { first_name: "Christophe" },
        { email: "tof.colomb@bateau.us" },
        { password: "godbless" },
        { description: "Comme j'ai découvert l'amérique, j'ai découvert aussi toutes les sortes de poissons que vous connaissez et c'est grace à moi que vous êtes ici aujourd'hui! Je mets toutes mes découvertes dans des aquariums et des bocaux pour me souvenir de tout ce que j'ai accomplis" },
        ])

hook = User.create([
        { last_name: "Crochet" },
        { first_name: "Capitaine" },
        { email: "capitaine-crochet@gmail.com" },
        { password: "tuerpeterpan" },
        { description: "Mon seul but, c'est de tuer Peter Pan. Et quand j'ai le temps en dehors de ça je collectionne et observe les poissons" },
        ])

morgan = User.create([
        { last_name: "Morgan" },
        { first_name: "Junior" },
        { email: "captainmorgan@gmail.com" },
        { password: "avecducocacestmieux" },
        { description: "Fan de bon whisky, j'aime me prélasser devant mon aquarium autour d'un bon verre et discuter avec tout mes amis (qui ont tous des nageoires)" },
       ])
=======
Fish.destroy_all
User.destroy_all

alfred = User.create!(last_name: "Gaudin",
                      first_name: "Alfred",
                      email: "alfred.gaudin@gmail.com",
                      password: "jaimelespoissons",
                      description: "Fan de pêche, j'adore prendre soin de mes poissons et passer du temps devant mon aquarium à les regarder. J'aime la nature et encore plus les océans donc je trouve ça super de pouvoir apporter un petit bout d'océan chez moi")

marin = User.create!(last_name: "Dodousse",
                     first_name: "Marin",
                     email: "marin.dodousse@gmail.com",
                     password: "vivelapeche",
                     description: "J'aime sentir l'odeur de poisson, les brises marines sont revigorantes et m'apporte un très beau teint")

james = User.create!(last_name: "Cook",
                     first_name: "James",
                     email: "james.cook@newfoundland.com",
                     password: "ouicapitaine",
                     description: "J'adore la mer et les poissons")

edward = User.create!(last_name: "Teach",
                      first_name: "Edward",
                      email: "barbenoire@gmail.com",
                      password: "tuertoutlemonde",
                      description: "J'adore tuer des gens mais les poissons ça va parce que c'est pas vraiment des humains donc j'accepte de les laisser en vie! Et d'ailleurs je m'en occupe super bien")

smith = User.create!(last_name: "Smith",
                     first_name: "James",
                     email: "j.smith@titanic.com",
                     password: "titanic",
                     description: "Fan de navigation, après quelques soucis avec mon bateau j'ai décidé de m'intérésser à le faune et la flore marine de manière à mieux appréhender l'environnement qui m'entoure pour ne pas casser mon futur bateau (pas comme le précédent)")

christophe = User.create!(last_name: "Colomb",
                          first_name: "Christophe",
                          email: "tof.colomb@bateau.us",
                          password: "godbless",
                          description: "Comme j'ai découvert l'amérique, j'ai découvert aussi toutes les sortes de poissons que vous connaissez et c'est grace à moi que vous êtes ici aujourd'hui! Je mets toutes mes découvertes dans des aquariums et des bocaux pour me souvenir de tout ce que j'ai accomplis")

hook = User.create!(last_name: "Crochet",
                    first_name: "Capitaine",
                    email: "capitaine-crochet@gmail.com",
                    password: "tuerpeterpan",
                    description: "Mon seul but, c'est de tuer Peter Pan. Et quand j'ai le temps en dehors de ça je collectionne et observe les poissons")

morgan = User.create!(last_name: "Morgan",
                      first_name: "Junior",
                      email: "captainmorgan@gmail.com",
                      password: "avecducocacestmieux",
                      description: "Fan de bon whisky, j'aime me prélasser devant mon aquarium autour d'un bon verre et discuter avec tout mes amis (qui ont tous des nageoires)")
>>>>>>> 312cb1e7af19b8e49c6af865aa8e478669a4b9d8



# FISHES seeds:
bernard = Fish.create!(title: "Bernard",
                       specie: "Blodfish",
                       location: "Angers",
                       daily_price: 1,
                       description: "Bernard est un gentil petit pardon gros poisson qui pèse bientot 58kg. Il a pas l’air comme ça mais il est très doux et gentil! Aidez moi a partir en vacances sans devoir l’abandonner",
                       picture_url: "app/assets/images/avatars/fishes/bernard_avatar.jpg",
                       owner: james)

benoit = Fish.create!(title: "Benoit" ,
                      specie: "Poisson volant",
                      location: "Suisse",
                      daily_price: 15,
                      description: "Benoit est le meilleur des poissons, il est fort à l'école et au travail, il fait bien la cuisine et le ménage,... Il est vraiment exceptionnel!",
                      picture_url: "app/assets/images/avatars/fishes/benoit_avatar.jpg",
                      owner: morgan)

bubble = Fish.create!(title: "Bubble",
                      specie: "Poisson rouge",
                      location: "Bordeaux",
                      daily_price: 3,
                      description: "Bubble aime bien manger à la cantine, c'est pour ça qu'il a de grosses joues donc ne le jugez pas trop!" ,
                      picture_url: "app/assets/images/avatars/fishes/bubble_avatar.jpg",
                      owner: james)

croquette = Fish.create!(title: "Croquette",
                         specie: "Poisson rouge",
                         location: "Nantes",
                         daily_price: 2,
                         description: "Je l'ai gagné à la fête foraine il y a 24 ans et depuis on ne se quitte plus! Bubble et moi on est les meilleurs amis du monde! Je l'aime trop! Best friend forever!",
                         picture_url: "app/assets/images/avatars/fishes/croquette_avatar.jpg",
                         owner: smith)

bouba = Fish.create!(title: "Bouba",
                     specie: "Grosse carpe",
                     location: "Floride",
                     daily_price: 2,
                     description: "Je vous présente le Duc de tous les poissons! Il est trop fort mais peut s'avérer assez violent envers ses congénères! Il ne s'endort qu'en écoutant Sexion d'assault...",
                     picture_url: "app/assets/images/avatars/fishes/bouba_avatar.jpg",
                     owner: smith)

jean = Fish.create!(title: "Jean",
                    specie: "Grosse carpe",
                    location: "Paris",
                    daily_price: 5,
                    description: "Jean est un super poisson! Il fait que de faire le petit train avec ses buddies d'aquarium, c'est assez rigolo! Je pense qu'il est vraiment très fan des wagons!" ,
                    picture_url: "app/assets/images/avatars/fishes/jean_avatar.jpg",
                    owner: christophe)

nemo = Fish.create!(title: "Nemo",
                    specie: "Poisson à dents",
                    location: "Floride",
                    daily_price: 4,
                    description: "Je l'ai trouvé dans le courant est australien puis l'ai ramené chez moi, il a une nageoire attrofiée mais c'est ok il arrive quand même a bien nager!",
                    picture_url: "app/assets/images/avatars/fishes/nemo_avatar.jpg",
                    owner: marin)

marguerite = Fish.create!(title: "Marguerite",
                          specie: "Sirène",
                          location: "Nantes",
                          daily_price: 8,
                          description: "C'est le plus beau, le plus intelligent et le plus gentil des poissons que j'ai jamais vu! Surement parce qu'elle s'appelle Marguerite!",
                          picture_url: "app/assets/images/avatars/fishes/marguerite_avatar.jpg",
                          owner: hook)

maurice = Fish.create!(title: "Maurice",
                       specie: "Poisson à dents",
                       location: "La Rochelle",
                       daily_price: 2,
                       description: "Attention Maurice mord! Il est pas très gentil et fait que de manger toutes mes Danettes au chocolat... Il pousse vraiment le bouchon un peu trop loin!",
                       picture_url: "app/assets/images/avatars/fishes/maurice_avatar.jpg",
                       owner: marin)


# BOOKINGS seeds:
# variable = Booking.create(
#          status: "" ,
#          start_time: "" ,
#          end_time: "" ,
#          total_price:  ,
#          owner_rating: "" ,
#          user_rating: "")
