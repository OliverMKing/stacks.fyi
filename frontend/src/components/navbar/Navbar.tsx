import React from "react";

const NavbarComponent: React.FC = () => {
  return (
    <nav className="flex items-center justify-between bg-white-500 py-8">
      <span className="font-semibold text-3xl tracking-tight">
        <a href="/">Stacks.fyi</a>
      </span>
      <div className="block flex items-center w-auto">
        <div className="flex-grow">
          <button
            id="navAction"
            className="mx-auto bg-purple-800 hover:bg-purple-900 text-white text-sm rounded py-2 px-8 shadow"
            onClick={() => (window.location.href = "/location-search")}
          >
            Stacks By Location
          </button>
        </div>
      </div>
    </nav>
  );
};

export default NavbarComponent;
