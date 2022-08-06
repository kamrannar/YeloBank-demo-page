import requests
import xml.etree.ElementTree as ET 
from datetime import datetime

r=requests.get(f'https://www.cbar.az/currencies/{datetime.now().strftime("%d.%m.%Y")}.xml')
root = ET.fromstring(r.content)

for child in root.iter('Valute'):  
    for grand_child in child:
        if child.attrib['Code']=='USD' and grand_child.tag=='Value':
           USD_value=grand_child.text
        elif child.attrib['Code']=='EUR' and grand_child.tag=='Value':
            EUR_value=grand_child.text

            