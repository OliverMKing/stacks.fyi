import React from "react";
import blob from "./blob.svg";
import working from "./working.svg";
import NavbarComponent from "../navbar/Navbar";

const styles = {
  background_image: {
    backgroundImage: "url(" + blob + ")",
    backgroundRepeat: "no-repeat",
    height: "3000px",
  } as React.CSSProperties,
};
const styles2 = {
  background_image: {
    backgroundImage: "url(" + working + ")",
    backgroundRepeat: "no-repeat",
    height: "3000px",
  } as React.CSSProperties,
};
const LocationSearchComponent: React.FC = () => {
  return (
    <div className="w-full container mx-auto">
      <NavbarComponent />

      <div style={styles.background_image}>
        <div className="grid grid-cols-3 gap-4">
          <div className="col-span-1 ml-20">
            <div className="m-auto">
              <div className="flex">
                <div className="w-full  h-20"></div>
              </div>
              <div className="text-gray-900 font-bold text-4xl mb-2">
                Search popular technology stacks by city
              </div>
              <div className="w-full text-center pt-4">
                <form action="#">
                  <div className="max-w-xs md:max-w-sm mx-auto p-1 bg-white rounded shadow flex flex-wrap items-center">
                    <input
                      type="text"
                      placeholder="Location (Ex: Raleigh, NC)"
                      className="flex-1 appearance-none p-3 text-gray-600 mr-2"
                    />
                    <button
                      type="submit"
                      className="flex-2 block md:inline-block appearance-none text-white text-base font-semibold tracking-wider p-3 rounded bg-red-400 hover:bg-red-500"
                    >
                      Search
                </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div className="col-span-2">
            <div style={styles2.background_image}></div>
            <h1>test</h1>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LocationSearchComponent;
