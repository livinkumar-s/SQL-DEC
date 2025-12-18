# mysql-connector-python 
# PIP 

#pip install pack

import mysql.connector

conn=mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="stackly_db",
)

if conn.is_connected():
    print("Connection Successfull!")

cursur=conn.cursor()


# cursur.execute("SELECT c.name,j.jerseyNum from cricketer c left join jersey j on j.cricketerId=c.id")
# rows=cursur.fetchall()
# print(rows)

# cursur.execute('insert into actress (name) values ("kajal"),("nayanthara"),("sowndharya")')
# conn.commit()

# cursur.execute("delete from actress where id=14")
# conn.commit()

while True:
    name=input("Enter your fav movie name: ")
    rating=input("Enter your rating: ")
    cursur.execute(f"insert into favmovies (name,rating) values (%s,%s)",(name,rating))
    conn.commit()
