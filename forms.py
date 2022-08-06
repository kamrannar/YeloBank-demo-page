from flask_wtf import FlaskForm
from wtforms import StringField,TextAreaField,SelectField,validators,BooleanField,EmailField,FileField,RadioField
from email_validator import *
from wtforms.validators import DataRequired,Length




class creditsifaris(FlaskForm):
    salary = StringField(label='Maaş', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Maaş'})
    amount = StringField(label='Kredit Məbləği', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Kredit Məbləği'})
    name = StringField(label='Ad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Ad'})
    surname = StringField(label='Soyad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Soyad'})
    work =  StringField(label='İş yeri', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'İş yeri'})
    prefix = SelectField(u'Prefiks',name='Prefiks',choices=[(' ','Prefiks'),('050','050'),('051','051'),('055','055'),('070','070'),('077','077'),('099','099'),('010','010')])
    number = StringField(label='Mobil nömrə', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Mobil nömrə'})


    


class yelocreditcardf(FlaskForm):
    cardtype=SelectField(u'Kartın növünü seçin',name='Kartın növünü seçin',choices=[(' ',' Kartın növünü seçin'),("Visa","Visa"),('MasterCard','MasterCard')])
    salary = StringField(label='Maaş', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Maaş'})
    amount = StringField(label='Kredit Məbləği', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Kredit Məbləği'})
    name = StringField(label='Ad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Ad'})
    surname = StringField(label='Soyad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Soyad'})
    work =  StringField(label='İş yeri', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'İş yeri'})
    prefix = SelectField(u'Prefiks',name='Prefiks',choices=[(' ','Prefiks'),('050','050'),('051','051'),('055','055'),('070','070'),('077','077'),('099','099'),('010','010')])
    number = StringField(label='Mobil nömrə', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Mobil nömrə'})
    idcardfront=FileField(u'Ş.V-in ön tərəfi',validators=[DataRequired()])
    idcardback=FileField(u'Ş.V-in arxa tərəfi',validators=[DataRequired()])


class yelopremiumcardf(FlaskForm):
    cardtype=SelectField(u'Kartın növünü seçin',name='Kartın növünü seçin',choices=[(' ',' Kartın növünü seçin'),("Visa","Visa"),('MasterCard','MasterCard')])
    valyuta = RadioField(validators=[DataRequired()],choices=['Dollar','Manat','Avro'])
    name = StringField(label='Ad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Ad'})
    surname = StringField(label='Soyad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Soyad'})
    prefix = SelectField(u'Prefiks',name='Prefiks',choices=[(' ','Prefiks'),('050','050'),('051','051'),('055','055'),('070','070'),('077','077'),('099','099'),('010','010')])
    number = StringField(label='Mobil nömrə', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Mobil nömrə'})
    keyword = StringField(label='Kod sözü', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Kod sözü'})
    branch = SelectField(u'Filialı seç',name='Filialı seç',choices=[(' ','Filialı seç'),('Baş ofis / MXM (20 yanvar m/s)','Baş ofis / MXM (20 yanvar m/s)'),('28 May filialı (Qış parkı)','28 May filialı (Qış parkı)'),('Filial № 5 (Sahil m/s)','Filial № 5 (Sahil m/s)'),('Mərkəz filialı','Mərkəz filialı'),('Ağcabədi filialı','Ağcabədi filialı'),('Filial № 11 (Elmlər Akademiyası m/s)','Filial № 11 (Elmlər Akademiyası m/s)'),('Filial Nərimanov','Filial Nərimanov'),('Filial № 4 (Xalqlar Dostluğu m/s)','Filial № 4 (Xalqlar Dostluğu m/s)'),('Mərdəkan filialı','Mərdəkan filialı'),('Filial Sədərək TM','Filial Sədərək TM'),('Filial Sumqayıt','Filial Sumqayıt'),('Filial Gəncə','Filial Gəncə'),('Filial Bərdə','Filial Bərdə'),('Filial Lənkaran','Filial Lənkaran')])
    idcardfront=FileField(u'Ş.V-in ön tərəfi',validators=[DataRequired()])
    idcardback=FileField(u'Ş.V-in arxa tərəfi',validators=[DataRequired()])



class yelolightcardf(FlaskForm):
    cardtype=SelectField(u'Kartın növünü seçin',name='Kartın növünü seçin',choices=[(' ',' Kartın növünü seçin'),("Visa","Visa"),('MasterCard','MasterCard')])
    valyuta = RadioField(validators=[DataRequired()],choices=['Dollar','Manat','Avro'])
    name = StringField(label='Ad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Ad'})
    surname = StringField(label='Soyad', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Soyad'})
    prefix = SelectField(u'Prefiks',name='Prefiks',choices=[(' ','Prefiks'),('050','050'),('051','051'),('055','055'),('070','070'),('077','077'),('099','099'),('010','010')])
    number = StringField(label='Mobil nömrə', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Mobil nömrə'})
    keyword =  StringField(label='Kod sözü', validators=[DataRequired(),Length(min=2,max=25)],render_kw={"placeholder":'Kod sözü'})
    branch = SelectField(u'Filialı seç',name='Filialı seç',choices=[(' ','Filialı seç'),('Baş ofis / MXM (20 yanvar m/s)','Baş ofis / MXM (20 yanvar m/s)'),('28 May filialı (Qış parkı)','28 May filialı (Qış parkı)'),('Filial № 5 (Sahil m/s)','Filial № 5 (Sahil m/s)'),('Mərkəz filialı','Mərkəz filialı'),('Ağcabədi filialı','Ağcabədi filialı'),('Filial № 11 (Elmlər Akademiyası m/s)','Filial № 11 (Elmlər Akademiyası m/s)'),('Filial Nərimanov','Filial Nərimanov'),('Filial № 4 (Xalqlar Dostluğu m/s)','Filial № 4 (Xalqlar Dostluğu m/s)'),('Mərdəkan filialı','Mərdəkan filialı'),('Filial Sədərək TM','Filial Sədərək TM'),('Filial Sumqayıt','Filial Sumqayıt'),('Filial Gəncə','Filial Gəncə'),('Filial Bərdə','Filial Bərdə'),('Filial Lənkaran','Filial Lənkaran')])
    idcardfront=FileField(u'Ş.V-in ön tərəfi',validators=[DataRequired()])
    idcardback=FileField(u'Ş.V-in arxa tərəfi',validators=[DataRequired()])