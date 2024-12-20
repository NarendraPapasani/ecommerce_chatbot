import { FiLogOut } from "react-icons/fi";

const Header = () => {
  return (
    <div className="bg-blue-500 h-14 md:h-20 flex m-5 rounded-xl items-center justify-between px-6 lg:px-10 shadow-md">
      <div className="flex items-center gap-4 md:gap-6">
        <img
          src="https://e7.pngegg.com/pngimages/733/376/png-clipart-chatbot-online-chat-internet-bot-instant-messaging-conversation-others-miscellaneous-personal-web-page.png"
          alt="Profile"
          className="w-12 h-12 md:w-16 md:h-16 rounded-full object-cover border-2 border-white shadow-sm"
        />
        <div className="space-y-1">
          <h3 className="font-bold text-lg md:text-2xl font-comfortaa text-rose-100 italic">
            Aira - Product Finding Agent
          </h3>
          <div className="flex items-center gap-2">
            <div className="w-2 h-2 rounded-full bg-green-500"></div>
            <span className="text-base md:text-base italic text-green-500 font-semibold font-opensans tracking-wide">
              Online
            </span>
          </div>
        </div>
      </div>
      <button
        className="p-2.5 md:p-3.5 text-red-400 hover:text-red-600 hover:bg-red-50 rounded-full transition-all duration-300"
        aria-label="Logout"
      >
        <FiLogOut className="w-6 h-6 md:w-7 md:h-7" />
      </button>
    </div>
  );
};

export default Header;
