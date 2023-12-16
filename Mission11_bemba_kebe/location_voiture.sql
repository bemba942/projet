#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Pays
#------------------------------------------------------------

CREATE TABLE Pays(
        Id_Pays        Int  Auto_increment  NOT NULL ,
        Nom            Varchar (50) NOT NULL ,
        Nb_d_habitants Int NOT NULL ,
        Superficie     Int NOT NULL
	,CONSTRAINT Pays_PK PRIMARY KEY (Id_Pays)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Categorie
#------------------------------------------------------------

CREATE TABLE Categorie(
        Id_Categorie Int  Auto_increment  NOT NULL ,
        Libelle      Varchar (50) NOT NULL
	,CONSTRAINT Categorie_PK PRIMARY KEY (Id_Categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Agence
#------------------------------------------------------------

CREATE TABLE Agence(
        Id_Agence   Int  Auto_increment  NOT NULL ,
        Nom         Varchar (50) NOT NULL ,
        Nb_employes Int NOT NULL ,
        Id_Pays     Int NOT NULL
	,CONSTRAINT Agence_PK PRIMARY KEY (Id_Agence)

	,CONSTRAINT Agence_Pays_FK FOREIGN KEY (Id_Pays) REFERENCES Pays(Id_Pays)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        Id_Client    Int  Auto_increment  NOT NULL ,
        Nom          Varchar (50) NOT NULL ,
        Adresse      Varchar (50) NOT NULL ,
        Code_postale Int NOT NULL ,
        Ville        Varchar (50) NOT NULL
	,CONSTRAINT Client_PK PRIMARY KEY (Id_Client)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Type
#------------------------------------------------------------

CREATE TABLE Type(
        Id_Type Int  Auto_increment  NOT NULL ,
        Libelle Varchar (50) NOT NULL
	,CONSTRAINT Type_PK PRIMARY KEY (Id_Type)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Marque
#------------------------------------------------------------

CREATE TABLE Marque(
        Id_Marque Int  Auto_increment  NOT NULL ,
        Nom       Varchar (50) NOT NULL
	,CONSTRAINT Marque_PK PRIMARY KEY (Id_Marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Modele
#------------------------------------------------------------

CREATE TABLE Modele(
        Id_Modele    Int  Auto_increment  NOT NULL ,
        Denomination Varchar (50) NOT NULL ,
        Puissance    Int NOT NULL
	,CONSTRAINT Modele_PK PRIMARY KEY (Id_Modele)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Vehicule
#------------------------------------------------------------

CREATE TABLE Vehicule(
        Id_Vehicule     Int  Auto_increment  NOT NULL ,
        Immatriculation Varchar (50) NOT NULL ,
        Age             Int NOT NULL ,
        Etat            Varchar (50) NOT NULL ,
        Id_Modele       Int NOT NULL ,
        Id_Agence       Int NOT NULL ,
        Id_Type         Int NOT NULL ,
        Id_Categorie    Int NOT NULL ,
        Id_Marque       Int NOT NULL
	,CONSTRAINT Vehicule_PK PRIMARY KEY (Id_Vehicule)

	,CONSTRAINT Vehicule_Modele_FK FOREIGN KEY (Id_Modele) REFERENCES Modele(Id_Modele)
	,CONSTRAINT Vehicule_Agence0_FK FOREIGN KEY (Id_Agence) REFERENCES Agence(Id_Agence)
	,CONSTRAINT Vehicule_Type1_FK FOREIGN KEY (Id_Type) REFERENCES Type(Id_Type)
	,CONSTRAINT Vehicule_Categorie2_FK FOREIGN KEY (Id_Categorie) REFERENCES Categorie(Id_Categorie)
	,CONSTRAINT Vehicule_Marque3_FK FOREIGN KEY (Id_Marque) REFERENCES Marque(Id_Marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ... a loue ...
#------------------------------------------------------------

CREATE TABLE ..._a_loue_...(
        Id_Vehicule     Int NOT NULL ,
        Id_Client       Int NOT NULL ,
        Date_de_retrait Date NOT NULL ,
        Date_de_retour  Date NOT NULL
	,CONSTRAINT ..._a_loue_..._PK PRIMARY KEY (Id_Vehicule,Id_Client)

	,CONSTRAINT ..._a_loue_..._Vehicule_FK FOREIGN KEY (Id_Vehicule) REFERENCES Vehicule(Id_Vehicule)
	,CONSTRAINT ..._a_loue_..._Client0_FK FOREIGN KEY (Id_Client) REFERENCES Client(Id_Client)
)ENGINE=InnoDB;

