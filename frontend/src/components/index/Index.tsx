import React from "react";
import analyse from "./analyse.svg";
import blob from "./blob.svg";
import support from "./support.svg";
import settings from "./settings.svg";
import NavbarComponent from "../navbar/Navbar";

const IndexComponent: React.FC = () => {
  return (
    <div
      className="bg-cover bg-gray-100"
      style={{ backgroundImage: "url(" + blob + ")" }}
    >
      <div className="w-full container mx-auto">
        <NavbarComponent />

        <div className="container pt-6 md:pt-8 px-6 mx-auto flex flex-wrap flex-col md:flex-row items-center">
          <div className="flex flex-col w-full xl:w-2/5 justify-center lg:items-start overflow-y-hidden">
            <h1 className="my-4 text-3xl md:text-6xl font-bold leading-tight text-gray-800 leading-tight text-center md:text-left">
              Tech moves fast
            </h1>
            <p className="leading-normal text-gray-800 md:text-4xl mb-8 text-center md:text-left">
              Efficiently research which skills are most in demand
            </p>
          </div>
          <div className="w-full xl:w-3/5 py-6 overflow-y-hidden">
            <img className="w-full mx-auto lg:mr-0 " src={analyse}></img>
          </div>
        </div>

        <div className="container max-w-5xl mx-auto m-8 pt-8">
          <h1 className="w-full my-2 text-4xl font-bold leading-tight text-center text-gray-800">
            Stay in the loop
          </h1>

          <div className="flex flex-wrap">
            <div className="w-5/6 sm:w-1/2 p-6">
              <h3 className="text-3xl text-gray-800 leading-none mb-3">
                Search by location
              </h3>
              <p className="text-gray-600 mb-8">
                View popular languages, tools, and frameworks based on City,
                State, and Country. Keep up-to-date with the trends in your
                area.
              </p>
            </div>
            <div className="w-full sm:w-1/2">
              <img src={support} />
            </div>
          </div>

          <div className="flex flex-wrap flex-col-reverse sm:flex-row">
            <div className="w-full sm:w-1/2">
              <img src={settings} />
            </div>
            <div className="w-full sm:w-1/2 p-6 mt-6">
              <div className="align-middle">
                <h3 className="text-3xl text-gray-800 leading-none mb-3">
                  Filter results
                </h3>
                <p className="text-gray-600 mb-8">
                  Adjust settings to personalize searches based on your
                  demographics. Breaking down data can help you make more
                  informed decisions.
                </p>
              </div>
            </div>
          </div>
        </div>

        <div className="container bg-red-400 rounded mx-8 py-8 mb-8 text-center">
          <h2 className="font-bold break-normal text-white text-4xl">
            Get started with Stacks.fyi
          </h2>
          <h3 className="break-normal font-normal text-white text-base md:text-xl">
            Search by location
          </h3>
          <div className="w-full text-center pt-4">
            <form action="#">
              <div className="max-w-sm mx-auto p-1 bg-white rounded shadow flex flex-wrap items-center">
                <input
                  type="text"
                  placeholder="Location (Ex: Raleigh, NC)"
                  className="flex-1 appearance-none p-3 text-gray-600 mr-2"
                />
                <button
                  type="submit"
                  className="flex-2 block md:inline-block appearance-none bg-blue-600 text-white text-base font-semibold tracking-wider p-3 rounded hover:bg-blue-500"
                >
                  Search
                </button>
              </div>
            </form>
          </div>
        </div>

        <div className="container max-w-5xl mx-auto pt-8"></div>
      </div>
    </div>
  );
};

export default IndexComponent;
