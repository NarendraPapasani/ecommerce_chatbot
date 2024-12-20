import React from "react";
import { FaSearch, FaHistory, FaRedo, FaArrowRight } from "react-icons/fa";

const Bottom = () => {
  return (
    <div className="fixed bottom-0 left-0 right-0 flex flex-col md:flex-row justify-between items-center p-4 bg-blue-500 m-5 rounded-lg text-white border-t border-gray-700">
      <div className="flex justify-start space-x-4 w-full md:w-1/4 mb-4 md:mb-0">
        <button className="p-3 md:p-5 bg-white rounded-full hover:bg-blue-600 transition duration-300">
          <FaRedo className="text-black hover:text-white size-5" />
        </button>
        <button className="p-3 md:p-5 bg-white rounded-full hover:bg-blue-600 transition duration-300">
          <FaHistory className="text-black hover:text-white size-5" />
        </button>
      </div>
      <div className="flex items-center justify-end w-full md:w-3/4">
        <div className="flex items-center bg-white border rounded-xl p-2 w-full">
          <FaSearch className="text-gray-400" />
          <input
            type="text"
            placeholder="Search..."
            className="ml-2 p-2 w-full text-black focus:outline-none focus:border-blue-500"
          />
          <button className="ml-2 p-2 bg-orange-500 text-white rounded-full hover:bg-orange-600 transition duration-300">
            <FaArrowRight />
          </button>
        </div>
      </div>
    </div>
  );
};

export default Bottom;
