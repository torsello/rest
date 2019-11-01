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
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            #moneda. Para el caso de valor de compra, se establece un precio del 94% sobre el
            #valor de venta. Por ejemplo, si el valor del dolar es de $60, la casa de cambio le vende al usuario a $60 y se los
            #compra a $56,40.
            url = 'http://data.fixer.io/api/latest?access_key=ee59a049eaa5fee1eca9efdf3de71c9c&symbols='+some_json["currency"]+','+some_json["currencyTo"]
            response = requests.get(url)
            data = json.loads(response.text)
            currency= (data['rates'][some_json['currency']])
            currencyTo= (data['rates'][some_json["currencyTo"]])
            # $1 de moneda a comprar
            valorPorCadaPeso=(1*currency)/currencyTo
            args=[some_json["id"], some_json["currency"], some_json["currencyTo"], some_json["amountTo"], str(round(valorPorCadaPeso, 2)),]
            cursor.callproc("buy", args)
            connection.commit()

            for result in cursor.stored_results():
                tup=result.fetchone()
            
            str1=" ".join(map(str,tup))

            return jsonify({"Recibido:": str1}), 200
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
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            #moneda. Para el caso de valor de compra, se establece un precio del 94% sobre el
            #valor de venta. Por ejemplo, si el valor del dolar es de $60, la casa de cambio le vende al usuario a $60 y se los
            #compra a $56,40.
            url = 'http://data.fixer.io/api/latest?access_key=ee59a049eaa5fee1eca9efdf3de71c9c&symbols='+some_json["currency"]+','+some_json["currencyToBuy"]
            response = requests.get(url)
            data = json.loads(response.text)
            currency= (data['rates'][some_json['currency']])
            currencyTo= (data['rates'][some_json["currencyToBuy"]])
            # $1 de moneda a comprar
            valorPorCadaPeso=((1*currencyTo)/currency)*0.94
            
            args=[some_json["id"], some_json["currency"], some_json["amount"], str(round(valorPorCadaPeso, 2)),]
            cursor.callproc("sell", args)
            connection.commit()

            for result in cursor.stored_results():
                tup=result.fetchone()
            
            str1=" ".join(map(str,tup))

            return jsonify({"Recibido:": str1}), 200
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
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            args=[some_json["id"], some_json["currency"], some_json["amount"],]
            cursor.callproc("withdraw", args)

            for result in cursor.stored_results():
                tup=result.fetchone()
            
            str1="".join(tup)

            connection.commit()
            return jsonify({"Recibido:": str1}), 200
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
            some_json = request.get_json()
            connection = mysql.connector.connect(host='127.0.0.1',
                                            database='arbolito',
                                            user='root',
                                            password='lala123')
            cursor = connection.cursor()
            args=[some_json["id"], some_json["currency"], some_json["amount"],]
            cursor.callproc("deposit", args)

            for result in cursor.stored_results():
                tup=result.fetchone()
            
            str1="".join(tup)

            connection.commit()
            return jsonify({"Recibido:": str1}), 200
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


