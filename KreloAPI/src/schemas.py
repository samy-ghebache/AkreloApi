import datetime

from pydantic import BaseModel 
class AnnonceBase(BaseModel):
    utilisateur_id: int
    titre: str
    description: str
    categorie: int
    type: int
    surface: float
    prix: float
    wilaya: int
    commune: str
    adresse: str
    photos: str
    isScraped : bool = False
    class Config:
        orm_mode = True



class UtilisateurBase(BaseModel):
    email: str
    is_admin: bool = False
    nom: str
    prenom: str
    tel: str
    adresse: str

    class Config:
        orm_mode = True


class MessageBase(BaseModel):
    body: str
    class Config:
        orm_mode = True
