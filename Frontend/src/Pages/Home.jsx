import { useState } from "react";
import Header from "../Components/Header";
import ChatItem from "../Components/ChatItem";
import {
  FaSearch,
  FaHistory,
  FaRedo,
  FaArrowRight,
  FaArrowUp,
  FaArrowDown,
} from "react-icons/fa";

const Home = () => {
  const [input, setInput] = useState("");
  const [messages, setMessages] = useState([]);
  const [chatHistory, setChatHistory] = useState([]);
  const [priceMin, setPriceMin] = useState(0);
  const [priceMax, setPriceMax] = useState(1000);
  const [showFilters, setShowFilters] = useState(true);
  const [showHistory, setShowHistory] = useState(false);

  const handleSendMessage = async () => {
    if (input.trim() === "") return;
    const msgData = {
      message: input,
      sender: "user",
      id: Date.now(),
      timestamp: new Date().toLocaleTimeString(),
    };
    const updatedMessage = [...messages, msgData];

    setMessages(updatedMessage);
    setChatHistory([...chatHistory, msgData]);

    const url = new URL("http://127.0.0.1:5000/api/products");

    const params = {
      price_min: priceMin,
      price_max: priceMax,
      category: input,
    };
    console.log(params);
    Object.keys(params).forEach((key) =>
      url.searchParams.append(key, params[key])
    );

    const opt = {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
      },
    };

    try {
      const resp = await fetch(url, opt);
      if (!resp.ok) {
        throw new Error(`HTTP error! status: ${resp.status}`);
      }
      const respData = await resp.json();
      console.log(respData);

      const botMsgData = {
        message: "Here are the products I found:",
        sender: "bot",
        id: Date.now() + 1,
        timestamp: new Date().toLocaleTimeString(),
        products: respData, 
      };
      const updatedBotMessage = [...updatedMessage, botMsgData];
      setMessages(updatedBotMessage);
      setChatHistory([...chatHistory, botMsgData]);
    } catch (error) {
      console.error("Fetch error: ", error);
    }
  };

  const handleResetConversation = () => {
    setMessages([]);
  };

  const handleShowHistory = () => {
    setShowHistory(!showHistory);
  };

  return (
    <div className="flex flex-col h-screen">
      <Header />
      <div className="flex-1 overflow-y-auto p-4 pb-20">
        {" "}
        {messages.map((msg) => (
          <ChatItem key={msg.id} msg={msg} />
        ))}
      </div>
      <div className="fixed bottom-0 left-0 right-0 flex flex-col md:flex-row justify-between items-center p-4 bg-blue-500 m-5 rounded-lg text-white border-t border-gray-700">
        <div
          className="absolute top-0 left-0 p-4 cursor-pointer"
          onClick={() => setShowFilters(!showFilters)}
        >
          {showFilters ? (
            <FaArrowDown className="text-white" />
          ) : (
            <FaArrowUp className="text-white" />
          )}
        </div>
        <div className="flex justify-start space-x-4 w-full md:w-1/4 mb-4 md:mb-0">
          <button
            className="p-3 md:p-5 bg-white rounded-full hover:bg-blue-600 transition duration-300"
            onClick={handleResetConversation}
          >
            <FaRedo className="text-black hover:text-white size-5" />
          </button>
          <button
            className="p-3 md:p-5 bg-white rounded-full hover:bg-blue-600 transition duration-300"
            onClick={handleShowHistory}
          >
            <FaHistory className="text-black hover:text-white size-5" />
          </button>
        </div>
        <div className="flex flex-col w-full md:w-3/4 space-y-4">
          <div className="flex items-center bg-white border rounded-xl p-2 w-full">
            <FaSearch className="text-gray-400" />
            <input
              type="text"
              placeholder="Search..."
              className="ml-2 p-2 w-full text-black focus:outline-none focus:border-blue-500"
              onChange={(e) => setInput(e.target.value)}
            />
            <button
              className="ml-2 p-2 bg-orange-500 text-white rounded-full hover:bg-orange-600 transition duration-300"
              onClick={handleSendMessage}
            >
              <FaArrowRight />
            </button>
          </div>
          {showFilters && (
            <div className="flex flex-col md:flex-row space-y-4 md:space-y-0 md:space-x-4">
              <div className="flex flex-col w-full md:w-1/2">
                <label className="text-white mb-1">Min Price</label>
                <input
                  type="number"
                  value={priceMin}
                  onChange={(e) => setPriceMin(e.target.value)}
                  className="p-2 rounded-lg text-black focus:outline-none focus:border-blue-500"
                />
              </div>
              <div className="flex flex-col w-full md:w-1/2">
                <label className="text-white mb-1">Max Price</label>
                <input
                  type="number"
                  value={priceMax}
                  onChange={(e) => setPriceMax(e.target.value)}
                  className="p-2 rounded-lg text-black focus:outline-none focus:border-blue-500"
                />
              </div>
            </div>
          )}
          <button
            className="p-2 bg-green-500 text-white rounded-full hover:bg-green-600 transition duration-300"
            onClick={handleSendMessage}
          >
            Submit
          </button>
        </div>
      </div>
      {showHistory && (
        <div className="fixed top-0 left-0 right-0 bottom-0 bg-black bg-opacity-50 flex justify-center items-center">
          <div className="bg-white p-4 rounded-lg max-w-lg w-full">
            <h2 className="text-xl font-bold mb-4">Chat History</h2>
            <div className="overflow-y-auto max-h-96">
              {chatHistory.map((msg) => (
                <ChatItem key={msg.id} msg={msg} />
              ))}
            </div>
            <button
              className="mt-4 p-2 bg-red-500 text-white rounded-full hover:bg-red-600 transition duration-300"
              onClick={handleShowHistory}
            >
              Close
            </button>
          </div>
        </div>
      )}
    </div>
  );
};

export default Home;
