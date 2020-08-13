import React from "react";
import analyse from "./analyse.svg";
import blob from "./blob.svg";
import NavbarComponent from "../navbar/Navbar";

const IndexComponent: React.FC = () => {
  return (
    <div
      className="bg-left-bottom bg-cover"
      style={{ backgroundImage: "url(" + blob + ")" }}
    >
      <div className="w-full container mx-auto">
        <NavbarComponent />
        <div className="container pt-6 md:pt-12 px-6 mx-auto flex flex-wrap flex-col md:flex-row items-center">
          <div className="flex flex-col w-full xl:w-2/5 justify-center lg:items-start overflow-y-hidden">
            <h1 className="my-4 text-3xl md:text-5xl text-purple-800 font-bold leading-tight text-center md:text-left">
              Technology moves fast
            </h1>
            <p className="leading-normal text-base md:text-2xl mb-8 text-center md:text-left">
              Efficiently research what skills are in demand
            </p>
          </div>
          <div className="w-full xl:w-3/5 py-6 overflow-y-hidden">
            <img className="w-full mx-auto lg:mr-0 " src={analyse}></img>
          </div>
        </div>
      </div>
    </div>
  );
};

export default IndexComponent;
