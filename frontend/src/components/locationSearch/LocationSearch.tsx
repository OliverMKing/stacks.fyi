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
              <form className="w-full max-w-lg">
                <div className="flex items-center space-x-2">
                  <input
                    className="bg-white focus:outline-none border border-gray-500 rounded-lg py-3 px-4 block w-full appearance-none leading-normal"
                    type="address"
                    placeholder="Charlotte, NC"
                  />
                  <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
                    Search
                  </button>
                </div>
              </form>
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
