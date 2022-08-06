from flask import Flask
from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView

app=Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:123@127.0.0.1:3306/products_db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS']=True
app.config['SECRET_KEY'] = 'my_project'

from controller import *
from extensions import *
from models import *

app.config['SECRET_KEY'] = 'Yelo Bank'
app.config['FLASK_ADMIN_SWATCH'] = 'flatly'


admin = Admin(app, name='Yelo Bank', template_mode='bootstrap3')

admin.add_view(ModelView(Cards, db.session))
admin.add_view(ModelView(Deposits, db.session))
admin.add_view(ModelView(News, db.session))
admin.add_view(ModelView(creditsifarisdb, db.session))
admin.add_view(ModelView(yelolightcardsifaris, db.session))
admin.add_view(ModelView(yelopremiumcardsifaris, db.session))
admin.add_view(ModelView(yelocreditcardsifaris, db.session))




if __name__=='__main__':
    app.init_app(db)
    app.init_app(migrate)
    app.run(port=5000,debug=True)   

