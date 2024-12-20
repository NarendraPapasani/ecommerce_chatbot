from flask import Flask, jsonify, request
from flask_cors import CORS
import sqlite3

app = Flask(__name__)
CORS(app)

# Database connection
def get_db_connection():
    conn = sqlite3.connect('ecommerce.db')
    conn.row_factory = sqlite3.Row
    return conn

# Endpoint to fetch products based on search query
@app.route('/api/products', methods=['GET'])
def get_products():
    price_min = request.args.get('price_min', 0)
    price_max = request.args.get('price_max', float('inf'))
    category = request.args.get('category', '')
    availability = request.args.get('availability', '')

    conn = get_db_connection()
    sql_query = 'SELECT * FROM products WHERE price >= ? AND price <= ?'
    params = [price_min, price_max]

    if category:
        sql_query += ' AND category = ?'
        params.append(category)

    products = conn.execute(sql_query, params).fetchall()
    conn.close()
    
    return jsonify([dict(product) for product in products])

# Endpoint to reset conversation
@app.route('/api/reset', methods=['POST'])
def reset_conversation():
    # Logic to reset conversation can be implemented here
    return jsonify({"message": "Conversation reset successful."})

if __name__ == '__main__':
    app.run(debug=True)