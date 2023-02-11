import schemas
import models
from database import get_db , Base ,engine , SessionLocal

Base.metadata.create_all(bind=engine)
db = SessionLocal()



def seedAll(nbUsers , anPerUser , msgPerListing):
    user = schemas.UtilisateurBase(
                    email = f"s_batata@esi.dz",
                    prenom = 'Sofiane',
                    nom = "Batata",
                    tel='0777777777',
                    adresse='This is an adress'
                )
    userDB = models.Utilisateur(**user.dict())
    userDB.is_admin=True
    db.add(userDB)
    db.commit()
    user = schemas.UtilisateurBase(
                    email = f"s_laoudi@esi.dz",
                    prenom = 'Soraya',
                    nom = "Laoudi",
                    tel='0777777777',
                    adresse='This is an adress'
                )
    userDB = models.Utilisateur(**user.dict())
    userDB.is_admin=True
    db.add(userDB)
    db.commit()
    user = schemas.UtilisateurBase(
                    email = f"l_yessad@esi.dz",
                    prenom = 'Lamia',
                    nom = "Yessad",
                    tel='0777777777',
                    adresse='This is an adress'
                )
    userDB = models.Utilisateur(**user.dict())
    userDB.is_admin=True
    db.add(userDB)
    db.commit()
    user = schemas.UtilisateurBase(
                    email = f"km_rezazi@esi.dz",
                    prenom = 'Abdessamed Mohammed',
                    nom = "Rezazi",
                    tel='0705698004',
                    adresse='This is an adress'
                )
    userDB = models.Utilisateur(**user.dict())
    userDB.is_admin=True
    db.add(userDB)
    db.commit()
    user = schemas.UtilisateurBase(
                    email = f"ka_dandani@esi.dz",
                    nom = 'Dandani',
                    prenom = "Abderraouf",
                    tel='0561806778',
                    adresse='Babezzouar,Alger'
                )
    userDB = models.Utilisateur(**user.dict())
    userDB.is_admin=True
    db.add(userDB)
    db.commit()
    for  u in range(nbUsers) : 
        #create user 
            try :
                user = schemas.UtilisateurBase(
                    email = f"user{u}@gmail.com",
                    nom = f"nom {u}",
                    prenom = f"prenom {u}",
                    tel='0659856856',
                    adresse='This is an adress'
                )

                userDB = models.Utilisateur(**user.dict())
              
                db.add(userDB)
                db.commit()
                db.refresh(userDB)

                addeduser = userDB.id

                for a in range(anPerUser) :
                    #create annonce
                    annonce  = schemas.AnnonceBase(
                    utilisateur_id= addeduser  ,
                    titre= "This is a title"    ,
                    description= "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum \nLorem ipsum Lorem ipsum ." ,
                    categorie= 1  , 
                    type= 1 , 
                    surface= 80 , 
                    commune= "This is a city" ,
                    adresse =  "This is an adresse",
                    prix = 700000 , 
                    wilaya= 18 , 
                    photos= "test1.jpeg;test2.jpeg;test3.jpeg", 
                    isScraped=False 
                    )
                    annonceDB = models.Annonce(**annonce.dict())
                    db.add(annonceDB)
                    db.commit()
                    db.refresh(annonceDB)

                    addedlisting = annonceDB.id
                    if ( u>0) :
                        for m in range(msgPerListing) :
                            #create message 
                            message = schemas.MessageBase(
                                body="Hello I want this item !\n"+"test"*15
                            )
                            messageDB = models.Messages(**message.dict())
            
                            messageDB.annonce_id = addedlisting
                            messageDB.utilisateur_id = addeduser -1 
                            db.add(messageDB)
                            db.commit()
            except Exception as e :
                 print(e)
                 




u = int(input("Enter number of Users : "))
a = int(input("Enter number of listings per user  : "))
m = int(input("Enter number of messages per listing : "))

seedAll(u,a,m)
db.close()