require "open-uri"

# Les trops belles et biens faites seeds

Booking.destroy_all
Fish.destroy_all
User.destroy_all

# USERS seeds

def attach_photo(instance, url, filename)
  file = URI.open(url)
  instance.photo.attach(io: file, filename:, content_type: "image/png")
  instance.save
end

def attach_avatar(instance, url, filename)
  file = URI.open(url)
  instance.avatar.attach(io: file, filename:, content_type: "image/png")
  instance.save
end

alfred = User.new(last_name: "Gaudin",
                  first_name: "Alfred",
                  email: "alfred.gaudin@gmail.com",
                  password: "jaimelespoissons",
                  description: "Fan de pêche, j'adore prendre soin de mes poissons et passer du temps devant mon aquarium à les regarder. J'aime la nature et encore plus les océans donc je trouve ça super de pouvoir apporter un petit bout d'océan chez moi")

attach_avatar(alfred, "https://kitt.lewagon.com/placeholder/users/alfred-gn", "alfred")

marin = User.new(last_name: "Dodousse",
                 first_name: "Marin",
                 email: "marin.dodousse@gmail.com",
                 password: "vivelapeche",
                 description: "J'aime sentir l'odeur de poisson, les brises marines sont revigorantes et m'apporte un très beau teint")

attach_avatar(marin, "https://kitt.lewagon.com/placeholder/users/JeanAvocat", "marin")

james = User.new(last_name: "Cook",
                 first_name: "James",
                 email: "james.cook@newfoundland.com",
                 password: "ouicapitaine",
                 description: "J'adore la mer et les poissons")

attach_avatar(james, "https://kitt.lewagon.com/placeholder/users/Paquerett", "james")

edward = User.new(last_name: "Teach",
                  first_name: "Edward",
                  email: "barbenoire@gmail.com",
                  password: "tuertoutlemonde",
                  description: "J'adore tuer des gens mais les poissons ça va parce que c'est pas vraiment des humains donc j'accepte de les laisser en vie! Et d'ailleurs je m'en occupe super bien")

attach_avatar(edward, "https://kitt.lewagon.com/placeholder/users/KenKaneki-42", "edward")

smith = User.new(last_name: "Smith",
                 first_name: "James",
                 email: "j.smith@titanic.com",
                 password: "titanic",
                 description: "Fan de navigation, après quelques soucis avec mon bateau j'ai décidé de m'intérésser à le faune et la flore marine de manière à mieux appréhender l'environnement qui m'entoure pour ne pas casser mon futur bateau (pas comme le précédent)")

attach_avatar(smith, "https://kitt.lewagon.com/placeholder/users/Larotka", "smith")

christophe = User.new(last_name: "Colomb",
                      first_name: "Christophe",
                      email: "tof.colomb@bateau.us",
                      password: "godbless",
                      description: "Comme j'ai découvert l'amérique, j'ai découvert aussi toutes les sortes de poissons que vous connaissez et c'est grace à moi que vous êtes ici aujourd'hui! Je mets toutes mes découvertes dans des aquariums et des bocaux pour me souvenir de tout ce que j'ai accomplis")

attach_avatar(christophe, "https://kitt.lewagon.com/placeholder/users/cveneziani", "christophe")

hook = User.new(last_name: "Crochet",
                first_name: "Capitaine",
                email: "capitaine-crochet@gmail.com",
                password: "tuerpeterpan",
                description: "Mon seul but, c'est de tuer Peter Pan. Et quand j'ai le temps en dehors de ça je collectionne et observe les poissons")

attach_avatar(hook, "https://kitt.lewagon.com/placeholder/users/codingrapha", "hook")

morgan = User.new(last_name: "Morgan",
                  first_name: "Junior",
                  email: "captainmorgan@gmail.com",
                  password: "avecducocacestmieux",
                  description: "Fan de bon whisky, j'aime me prélasser devant mon aquarium autour d'un bon verre et discuter avec tout mes amis (qui ont tous des nageoires)")

attach_avatar(morgan, "https://kitt.lewagon.com/placeholder/users/MaxGueyeMax", "morgan")

# FISHES seeds:

bernard = Fish.new(title: "Bernard",
                   specie: "Blodfish",
                   location: "Angers",
                   daily_price: 1,
                   description: "Bernard est un gentil petit pardon gros poisson qui pèse bientot 58kg. Il a pas l’air comme ça mais il est très doux et gentil! Aidez moi a partir en vacances sans devoir l’abandonner",
                   owner: james)

attach_photo(bernard, "https://img.freepik.com/photos-gratuite/beau-poisson-colore-betta-siamois_1150-9256.jpg", "bernard")

benoit = Fish.new(title: "Benoit" ,
                  specie: "Poisson volant",
                  location: "Suisse",
                  daily_price: 15,
                  description: "Benoit est le meilleur des poissons, il est fort à l'école et au travail, il fait bien la cuisine et le ménage,... Il est vraiment exceptionnel!",
                  owner: morgan)

attach_photo(benoit, "https://img.freepik.com/photos-premium/beau-poisson-betta-dore-rare-poisson-combattant-fond-noir_200339-55.jpg", "benoit")

bubble = Fish.new(title: "Bubble",
                  specie: "Poisson rouge",
                  location: "Bordeaux",
                  daily_price: 3,
                  description: "Bubble aime bien manger à la cantine, c'est pour ça qu'il a de grosses joues donc ne le jugez pas trop!" ,
                  owner: james)

attach_photo(bubble, "https://img.freepik.com/photos-premium/beau-poisson-nageant-fond-noir_208861-3162.jpg", "bubble")

croquette = Fish.new(title: "Croquette",
                     specie: "Poisson rouge",
                     location: "Nantes",
                     daily_price: 2,
                     description: "Je l'ai gagné à la fête foraine il y a 24 ans et depuis on ne se quitte plus! Bubble et moi on est les meilleurs amis du monde! Je l'aime trop! Best friend forever!",
                     owner: smith)

attach_photo(croquette, "https://media.istockphoto.com/photos/goldfish-isolated-on-black-background-picture-id923831268?k=20&m=923831268&s=612x612&w=0&h=kxofHb2mFRtkKC0x3J-NhagFkjBDMGGRg3hL2gClk_0=", "croquette")

bouba = Fish.new(title: "Bouba",
                 specie: "Grosse carpe",
                 location: "Floride",
                 daily_price: 2,
                 description: "Je vous présente le Duc de tous les poissons! Il est trop fort mais peut s'avérer assez violent envers ses congénères! Il ne s'endort qu'en écoutant Sexion d'assault...",
                 owner: smith)

attach_photo(bouba, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSheBSlL6Zol1cCRkzlzgOpnY1KtD7_RGQa9G1ou8d1vHJRLwudoun9DCltTP18s2TwOsg&usqp=CAU", "bouba")

jean = Fish.new(title: "Jean",
                specie: "Grosse carpe",
                location: "Paris",
                daily_price: 5,
                description: "Jean est un super poisson! Il fait que de faire le petit train avec ses buddies d'aquarium, c'est assez rigolo! Je pense qu'il est vraiment très fan des wagons!" ,
                owner: christophe)

attach_photo(jean, "https://st4.depositphotos.com/9800054/38711/i/450/depositphotos_387116524-stock-photo-goldfish-macro-white-head.jpg", "jean")

nemo = Fish.new(title: "Nemo",
                specie: "Poisson à dents",
                location: "Floride",
                daily_price: 4,
                description: "Je l'ai trouvé dans le courant est australien puis l'ai ramené chez moi, il a une nageoire attrofiée mais c'est ok il arrive quand même a bien nager!",
                owner: marin)

attach_photo(nemo, "https://img.freepik.com/photos-premium/gros-plan-beau-poisson-betta-halfmoon-action-poisson-combat-betta-siamois-thailande-fond-noir_51377-266.jpg", "nemo")

marguerite = Fish.new(title: "Marguerite",
                      specie: "Sirène",
                      location: "Nantes",
                      daily_price: 8,
                      description: "C'est le plus beau, le plus intelligent et le plus gentil des poissons que j'ai jamais vu! Surement parce qu'elle s'appelle Marguerite!",
                      owner: hook)

attach_photo(marguerite, "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Betta_splendens_male_crowntail.png/250px-Betta_splendens_male_crowntail.png", "marguerite")

maurice = Fish.new(title: "Maurice",
                   specie: "Poisson à dents",
                   location: "La Rochelle",
                   daily_price: 2,
                   description: "Attention Maurice mord! Il est pas très gentil et fait que de manger toutes mes Danettes au chocolat... Il pousse vraiment le bouchon un peu trop loin!",
                   owner: marin)

attach_photo(maurice, "https://img.freepik.com/photos-gratuite/beau-rouge-blanc-betta-splendens-poisson-combat-siamois-plakat-poisson-populaire-thailandais-dans-aquarium-est-animal-compagnie-humide-ornemental_1150-50671.jpg", "maurice")
# BOOKINGS seeds:

def total_price(start_time, end_time, fish)
  (end_time.yday - start_time.yday) * fish.daily_price
end

Booking.create(status: "En attente de validation",
               start_time: Date.new(2022, 8, 25),
               end_time: Date.new(2022, 8, 30),
               total_price: total_price(Date.new(2022, 8, 25), Date.new(2022, 8, 30), benoit),
               fish: benoit,
               keeper: hook)

Booking.create(status: "Refusé",
               start_time: Date.new(2022, 8, 25),
               end_time: Date.new(2022, 9, 3),
               total_price: total_price(Date.new(2022, 8, 25), Date.new(2022, 9, 3), bouba),
               fish: bouba,
               keeper: alfred)

Booking.create(status: "Validé",
               start_time: Date.new(2022, 8, 25),
               end_time: Date.new(2022, 8, 27),
               total_price: total_price(Date.new(2022, 8, 25), Date.new(2022, 8, 27), nemo),
               fish: nemo,
               keeper: james)

Booking.create(status: "En attente de validation",
               start_time: Date.new(2022, 8, 25),
               end_time: Date.new(2022, 8, 29),
               total_price: total_price(Date.new(2022, 8, 25), Date.new(2022, 8, 29), benoit),
               fish: bubble,
               keeper: smith)

Booking.create(status: "En attente de validation",
               start_time: Date.new(2022, 8, 25),
               end_time: Date.new(2022, 9, 25),
               total_price: total_price(Date.new(2022, 8, 25), Date.new(2022, 9, 25), benoit),
               fish: croquette,
               keeper: christophe)
