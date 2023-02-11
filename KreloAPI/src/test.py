import main
from database import engine,get_db,Base,SessionLocal
from fastapi import Depends

Base.metadata.create_all(bind=engine)
db=SessionLocal()

class Test:
    def __init__(self):
        pass

    def Test_CréerUtilisateur(self,user:main.schemas.UtilisateurBase):
        User=main.create_user(user,db)
        resultat=main.get_user(user.email,db)
        if(User==resultat):
            print(f'L\'utilisateur {user.email} est crée avec succés')
        else:
            print(f'La création de l\'utilisateur {user.email} a échouée')

    def Test_CréerAnnonce(self,annonce:main.schemas.AnnonceBase):
        Annonce=main.create_annonce(annonce,db)
        resultat=main.get_Annonce_By_Id(Annonce.id,db)
        if(Annonce==resultat):
            print(f'Annonce Crée avec succés')
        else:
            print(f'La création de l\'annonce a échoué')

    def Test_SupprimerAnnone(self,annonce_id : int):
        error={"error": "items not found"}
        main.delete_annonce(annonce_id,db)
        annonce=main.get_Annonce_By_Id(annonce_id,db)
        if(annonce==error):
            print(f'Votre  Annonce {annonce_id} a été  supprimée')
        else:
            print(f'La suppression de l\'annonce {annonce_id} a échouée')
        
test=Test()
user=main.schemas.UtilisateurBase(email='IGLTPTEST@hotmail.fr',nom='TEST',prenom='TEST',tel='0505050505',is_admin=False,adresse='Alger')
#test.Test_CréerUtilisateur(user)
annonce=main.schemas.AnnonceBase(utilisateur_id=1,
    titre='Soyez les bienvenus',
    description='',
    categorie=1,
    type=1,
    surface='1.45',
    prix='5',
    wilaya=1,
    commune=1,
    adresse='Oued Essmar Algiers',
    photos='')

test.Test_CréerUtilisateur(user)














    
