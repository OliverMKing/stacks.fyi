import React from "react";
import { Link } from "react-router-dom";

const NavbarComponent: React.FC = () => {
  return (
    <nav className="flex items-center justify-between bg-white-500 py-8 md:px-5 px-8">
      <span className="font-semibold text-3xl tracking-tight">
        <a href="/">Stacks.fyi</a>
      </span>
      <div className="block sm:hidden block flex items-center w-auto">
        <div className="flex-grow">
          <Link to="/location-search">
            <button className="mx-auto bg-red-400 hover:bg-red-500 text-white text-sm rounded py-2 px-4 shadow">
              By Location
            </button>
          </Link>
        </div>
      </div>
      <div className="hidden sm:block block flex items-center w-auto">
        <div className="flex-grow">
          <Link to="/location-search">
            <button
              id="navAction"
              className="mx-auto bg-red-400 hover:bg-red-500 text-white text-sm rounded py-2 px-8 shadow"
              onClick={() => (window.location.href = "/location-search")}
            >
              Stacks By Location
            </button>
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default NavbarComponent;
