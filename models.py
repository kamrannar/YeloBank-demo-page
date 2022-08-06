from email.policy import default
from extensions import *
from datetime import datetime

class News(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    headings=db.Column(db.String(100),unique=True)
    slug=db.Column(db.String(100),unique=True)
    details=db.Column(db.Text(),nullable=False)
    date=db.Column(db.String(20))
    image_url=db.Column(db.String(400),nullable=True)
    created_at = db.Column(db.DateTime, server_default=db.func.now())
    updated_at = db.Column(db.DateTime, server_default=db.func.now(), server_onupdate=db.func.now())

    def save(self):
        db.session.add(self)
        db.session.commit() 



class Cards(db.Model):                                            
    id = db.Column(db.Integer,primary_key=True)
    cardname = db.Column(db.String(100))
    cardinfo = db.Column(db.Text(),nullable=False)
    cardimg = db.Column(db.Text(),nullable=False)
    cardmuddet=db.Column(db.Text(), default='Müddət')
    cardmuddet_m=db.Column(db.Text())
    cardvalyuta = db.Column(db.Text(), default='Valyuta')
    cardvalyuta_m = db.Column(db.Text())
    cardcashback = db.Column(db.Text(), default='Cashback')
    cardcashback_m = db.Column(db.Text())
    slug=db.Column(db.String(50),unique=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.cardname

    def __init__(self,cardname,cardinfo,cardimg,cardmuddet,cardmuddet_m,cardvalyuta,cardvalyuta_m,cardcashback,cardcashback_m,slug):
        self.cardname=cardname
        self.cardinfo=cardinfo
        self.cardimg=cardimg
        self.cardmuddet=cardmuddet
        self.cardmuddet_m=cardmuddet_m
        self.cardvalyuta=cardvalyuta
        self.cardvalyuta_m=cardvalyuta_m
        self.cardcashback=cardcashback
        self.cardcashback_m=cardcashback_m
        self.slug=slug

    def save(self):
        db.session.add(self)
        db.session.commit()



class CardExtra(db.Model):                                             
    id = db.Column(db.Integer,primary_key=True)
    cardname = db.Column(db.String(100))
    cardinfo = db.Column(db.Text(),nullable=False)
    cardimg = db.Column(db.Text(),nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.cardname

    def __init__(self,cardname,cardinfo,cardimg):
        self.cardname=cardname
        self.cardinfo=cardinfo
        self.cardimg=cardimg

    def save(self):
        db.session.add(self)
        db.session.commit()


class Deposits(db.Model):                                               
    id = db.Column(db.Integer,primary_key=True)
    depositname = db.Column(db.String(100))
    depositinfo = db.Column(db.Text(),nullable=False)
    depositimg = db.Column(db.Text(),nullable=False)
    depositmebleg = db.Column(db.Text(),nullable=False)
    depositmuddet = db.Column(db.Text(),nullable=False)
    depositfaiz = db.Column(db.Text(),nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.cardname

    def __init__(self,depositname,depositinfo,depositimg,depositmebleg,depositmuddet,depositfaiz):
        self.depositname=depositname
        self.depositinfo=depositinfo
        self.depositimg=depositimg
        self.depositmebleg=depositmebleg
        self.depositmuddet=depositmuddet
        self.depositfaiz=depositfaiz


    def save(self):
        db.session.add(self)
        db.session.commit()

class creditsifarisdb(db.Model):
    id = db.Column(db.Integer,primary_key=True)
    salary = db.Column(db.String(25),nullable=False)
    amount = db.Column(db.String(25),nullable=False)
    name = db.Column(db.String(25),nullable=False)
    surname = db.Column(db.String(25),nullable=False)
    work = db.Column(db.String(25),nullable=False)
    prefix = db.Column(db.String(25),nullable=False)
    number=db.Column(db.String(25),nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.salary

    def __init__(self,salary,amount,name,surname,work,prefix,number):
        self.salary=salary
        self.amount=amount
        self.name=name
        self.surname=surname
        self.work=work
        self.prefix=prefix
        self.number=number


    def save(self):
        db.session.add(self)
        db.session.commit()



class yelocreditcardsifaris(db.Model):
    id = db.Column(db.Integer,primary_key=True)
    cardtype = db.Column(db.String(25),nullable=False)
    salary = db.Column(db.String(25),nullable=True)
    amount = db.Column(db.String(25),nullable=False)
    name = db.Column(db.String(25),nullable=False)
    surname = db.Column(db.String(25),nullable=False)
    work = db.Column(db.String(25),nullable=False)
    prefix = db.Column(db.String(25),nullable=False)
    number=db.Column(db.String(25),nullable=False)
    idcardfront=db.Column(db.Text(),nullable=False)
    idcardback=db.Column(db.Text(),nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.salary

    def __init__(self,cardtype,salary,amount,name,surname,work,prefix,number,idcardfront,idcardback):
        self.salary=salary
        self.cardtype=cardtype
        self.amount=amount
        self.name=name
        self.surname=surname
        self.work=work
        self.prefix=prefix
        self.number=number
        self.idcardfront=idcardfront
        self.idcardback=idcardback


    def save(self):
        db.session.add(self)
        db.session.commit()


class yelopremiumcardsifaris(db.Model):
    id = db.Column(db.Integer,primary_key=True)
    cardtype = db.Column(db.String(25),nullable=False)
    valyuta = db.Column(db.String(25),nullable=False)
    name = db.Column(db.String(25),nullable=False)
    surname = db.Column(db.String(25),nullable=False)
    prefix = db.Column(db.String(25),nullable=False)
    number=db.Column(db.String(25),nullable=False)
    keyword = db.Column(db.String(25),nullable=False)
    branch = db.Column(db.String(80),nullable=False)
    idcardfront=db.Column(db.Text(),nullable=False)
    idcardback=db.Column(db.Text(),nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.cardtype

    def __init__(self,cardtype,valyuta,name,surname,prefix,number,keyword,branch,idcardfront,idcardback):
        self.cardtype=cardtype
        self.valyuta=valyuta
        self.name=name
        self.surname=surname
        self.prefix=prefix
        self.number=number
        self.keyword=keyword
        self.branch=branch
        self.idcardfront=idcardfront
        self.idcardback=idcardback


    def save(self):
        db.session.add(self)
        db.session.commit()


class yelolightcardsifaris(db.Model):
    id = db.Column(db.Integer,primary_key=True)
    cardtype = db.Column(db.String(25),nullable=False)
    valyuta = db.Column(db.String(25),nullable=False)
    name = db.Column(db.String(25),nullable=False)
    surname = db.Column(db.String(25),nullable=False)
    prefix = db.Column(db.String(25),nullable=False)
    number=db.Column(db.String(25),nullable=False)
    keyword = db.Column(db.String(25),nullable=False)
    branch = db.Column(db.String(80),nullable=False)
    idcardfront=db.Column(db.Text(),nullable=False)
    idcardback=db.Column(db.Text(),nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return self.cardtype

    def __init__(self,cardtype,valyuta,name,surname,prefix,number,keyword,branch,idcardfront,idcardback):
        self.cardtype=cardtype
        self.valyuta=valyuta
        self.name=name
        self.surname=surname
        self.prefix=prefix
        self.number=number
        self.keyword=keyword
        self.branch=branch
        self.idcardfront=idcardfront
        self.idcardback=idcardback


    def save(self):
        db.session.add(self)
        db.session.commit()