import React from "react";
import PropTypes from "prop-types";
import "tailwindcss/tailwind.css";

const ChatItem = (props) => {
  const { msg } = props;
  const { sender, timestamp, message, products } = msg;

  return (
    <div
      className={`flex ${
        sender === "user" ? "justify-end" : "justify-start"
      } items-end m-5`}
    >
      <div className="p-4 border-b border-gray-200 max-h-96 min-h-24 overflow-y-auto">
        <div className="flex justify-between items-center mb-2">
          <span className="font-bold text-blue-600 w-1/2">{sender}</span>
          <span className="text-sm text-gray-500 w-1/2 text-right">
            {timestamp}
          </span>
        </div>
        <div className="text-gray-800">{message}</div>
        {products && products.length > 0 && (
          <div className="mt-4 flex space-x-4 overflow-x-auto">
            {products.map((product) => (
              <a
                key={product.id}
                href="#"
                className="p-4 mb-4 bg-white rounded-lg shadow-md transform transition-transform hover:scale-105 hover:bg-blue-100"
              >
                <h3 className="font-bold text-lg text-blue-600">
                  {product.name}
                </h3>
                <p className="text-gray-600">{product.description}</p>
                <p className="text-gray-800 font-bold">${product.price}</p>
              </a>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};

ChatItem.propTypes = {
  msg: PropTypes.shape({
    message: PropTypes.string.isRequired,
    sender: PropTypes.string.isRequired,
    timestamp: PropTypes.string.isRequired,
    products: PropTypes.arrayOf(
      PropTypes.shape({
        id: PropTypes.number.isRequired,
        name: PropTypes.string.isRequired,
        description: PropTypes.string.isRequired,
        price: PropTypes.number.isRequired,
      })
    ),
  }).isRequired,
};

export default ChatItem;
