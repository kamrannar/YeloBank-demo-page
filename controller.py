from crypt import methods
from flask import render_template,request
from app import app
from main import *
from models import *
from forms import *

@app.route('/') 
def home():
    return render_template('index.html',USD_value=USD_value,EUR_value=EUR_value,heading=News.query.get(1).headings,heading2=News.query.get(2).headings,heading3=News.query.get(3).headings,date1=News.query.get(1).date,date2=News.query.get(2).date,date3=News.query.get(3).date,image1=News.query.get(1).image_url,image2=News.query.get(2).image_url,image3=News.query.get(3).image_url)

@app.route('/all_news') 
def all_news():
    news = News.query
    return render_template('news.html',news=news)

@app.route('/<string:news_slug>') 
def newss(news_slug):
    news = News.query.filter_by(slug=news_slug).first()
    return render_template('news_detailed.html',news=news )

# muzaffar pages below

@app.route('/cards') 
def cards():
    card = Cards.query.all()
    return render_template('cards.html',card=card)


@app.route('/creditpurchase',methods=['GET','POST']) 
def credit():
    post_data=request.form
    form = creditsifaris()
    if request.method=='POST':
        form=creditsifaris(data=post_data)
        if form.validate_on_submit():
            creditsifarisbaza=creditsifarisdb(salary=form.salary.data,amount=form.amount.data,name=form.name.data,surname=form.surname.data,work=form.work.data,prefix=form.prefix.data,number=form.number.data)
            creditsifarisbaza.save()
    return render_template('cp.html',form=form)



@app.route('/deposits') 
def deposit():
    deposit=Deposits.query.all()
    return render_template('deposits.html',deposit=deposit)

@app.route('/yelolight',methods=['GET','POST']) 
def yelolight():
    cardextra=CardExtra.query.all()
    post_data=request.form
    form = yelolightcardf()
    if request.method=='POST':
        form=yelolightcardf(data=post_data)
        if form.validate_on_submit():
            yelolight=yelolightcardsifaris(cardtype=form.cardtype.data,valyuta=form.valyuta.data,name=form.name.data,surname=form.surname.data,prefix=form.prefix.data,number=form.number.data,keyword=form.keyword.data,branch=form.branch.data,idcardfront=form.idcardfront.data,idcardback=form.idcardback.data)
            yelolight.save()
    return render_template('yelolight.html',cardextra=cardextra,form=form)



@app.route('/yelopremium',methods=['GET','POST']) 
def yelopremium():
    cardextra=CardExtra.query.all()
    post_data=request.form
    form = yelopremiumcardf()
    if request.method=='POST':
        form=yelopremiumcardf(data=post_data)
        if form.validate_on_submit():
            yelopremium=yelopremiumcardsifaris(cardtype=form.cardtype.data,valyuta=form.valyuta.data,name=form.name.data,surname=form.surname.data,prefix=form.prefix.data,number=form.number.data,keyword=form.keyword.data,branch=form.branch.data,idcardfront=form.idcardfront.data,idcardback=form.idcardback.data)
            yelopremium.save()
    return render_template('yelopremium.html',cardextra=cardextra,form=form)

@app.route('/yelokreditkart',methods=['GET','POST']) 
def yelokreditkart():
    cardextra=CardExtra.query.all()
    post_data=request.form
    form = yelocreditcardf()
    if request.method=='POST':
        form=yelocreditcardf(data=post_data)
        if form.validate_on_submit():
            yelocredit=yelocreditcardsifaris(cardtype=form.cardtype.data,salary=form.salary.data,amount=form.amount.data,name=form.name.data,surname=form.surname.data,work=form.work.data,prefix=form.prefix.data,number=form.number.data,idcardfront=form.idcardfront.data,idcardback=form.idcardback.data)
            yelocredit.save()
    return render_template('yelokreditkart.html',cardextra=cardextra,form=form)