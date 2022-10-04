import psycopg2
import json
import os
from bottle import route, run



# Connect entrypoint
@route('/')
# this function will show a message and launch the transfer
def index():
    # Establishing the connection
    connection = psycopg2.connect(
        host="skanestas_db",
        database="skanestas",
        user="postgres",
        password="post123gre")

    cursor = connection.cursor()

    # Reading logfile

    with open('/var/tmp/logfile.json') as file:
        data = file.read()

    # Inserting data into database
    query_sql = """
        insert into trade select * from
        json_populate_record(NULL::trade, %s);
        """
    cursor.execute(query_sql, (data,))
    connection.commit()

    # closing connection
    cursor.close()
    connection.close()
    
    # message
    index_html = '''Transfer of data to PostgreSQL database is successful!'''
    return index_html

# server part
if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8000))
    run(host='0.0.0.0', port=port, debug=False)
