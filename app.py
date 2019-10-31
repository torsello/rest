import mysql.connector
import json
import requests
from mysql.connector import Error, MySQLConnection
from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/")
def hello():
    return jsonify({"about": "Hello world!"})

@app.route("/user", methods=['POST'])
def createUser():
    try:
        if (request.method == 'POST'):
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            args=[some_json["username"], some_json["password"], some_json["dni"], some_json["name"], some_json["surname"], some_json["currency"], some_json["amount"]]
            cursor.callproc("createUser", args)
            connection.commit()
            return jsonify({"Recibido:": some_json}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/user/<id>", methods=['DELETE'])
def deleteUser(id):
    try:
        if (request.method == 'DELETE'):
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            args=[id,]
            cursor.callproc("deleteUser", args)
            connection.commit()

            for result in cursor.stored_results():
                tup=result.fetchone()
            
            str1="".join(tup)
            
            if(str1=="deleted"):
                return jsonify({"User:": str1}), 200
            else:
                return jsonify({str1}), 404
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/buy", methods=['POST'])
def buy():
    try:
        if (request.method == 'POST'):
            url = 'http://data.fixer.io/api/latest?access_key=ee59a049eaa5fee1eca9efdf3de71c9c&format=1'
            response = requests.get(url)
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            #args=[some_json["code"], some_json["desc"], some_json["state"], some_json["state_code"], some_json["address"]]
            #cursor.callproc("altaUsuario", args)
            #connection.commit()
            return jsonify({"Recibido:": some_json}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/sell", methods=['POST'])
def sell():
    try:
        if (request.method == 'POST'):
            url = 'http://data.fixer.io/api/latest?access_key=ee59a049eaa5fee1eca9efdf3de71c9c&format=1'
            response = requests.get(url)
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            #args=[some_json["code"], some_json["desc"], some_json["state"], some_json["state_code"], some_json["address"]]
            #cursor.callproc("altaUsuario", args)
            #connection.commit()
            return jsonify({"Recibido:": some_json}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/withdraw", methods=['POST'])
def withdraw():
    try:
        if (request.method == 'POST'):
            url = 'http://data.fixer.io/api/latest?access_key=ee59a049eaa5fee1eca9efdf3de71c9c&format=1'
            response = requests.get(url)
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            #args=[some_json["code"], some_json["desc"], some_json["state"], some_json["state_code"], some_json["address"]]
            #cursor.callproc("altaUsuario", args)
            #connection.commit()
            return jsonify({"Recibido:": some_json}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/deposit", methods=['POST'])
def deposit():
    try:
        if (request.method == 'POST'):
            url = 'http://data.fixer.io/api/latest?access_key=ee59a049eaa5fee1eca9efdf3de71c9c&format=1'
            response = requests.get(url)
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            #args=[some_json["code"], some_json["desc"], some_json["state"], some_json["state_code"], some_json["address"]]
            #cursor.callproc("altaUsuario", args)
            #connection.commit()
            return jsonify({"Recibido:": some_json}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/balance/<id>", methods=['GET'])
def balance(id):
    try:
        if (request.method == 'GET'):
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            args=[id,]
            cursor.callproc("balance", args)
            
            for result in cursor.stored_results():
                tup=result.fetchall()
            
            str1=" ".join(map(str,tup))

            return jsonify({"Balance:": str1}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

@app.route("/balance/<currency>/<id>", methods=['GET'])
def balancePerCurrency(currency,id):
    try:
        if (request.method == 'GET'):
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            args=[id,currency,]
            cursor.callproc("balancePerCurrency", args)
            
            for result in cursor.stored_results():
                tup=result.fetchone()
            
            str1=" ".join(map(str,tup))

            return jsonify({"Balance:": str1}), 200
        else:
            return jsonify({"Recibido": "Error method"}), 405
    except mysql.connector.Error as error:
        print("Failed to execute stored procedure: {}".format(error))
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")


if __name__ == '__main__':
    app.run(debug=True)


