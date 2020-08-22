import React from "react";
import NavbarComponent from "../navbar/Navbar";
import astronaut from "./astronaut.svg";

const NotFoundComponent: React.FC = () => {
  return (
    <div className="bg-gray-100 min-h-screen pb-3">
      <div className="w-full container mx-auto">
        <NavbarComponent />
        <div className="container max-w-5xl mx-auto m-8 pt-8">
          <h1 className="w-full my-2 text-4xl font-bold leading-tight text-center text-gray-800">
            Page not found
          </h1>
          <h3 className="break-normal font-normal text-gray-800 text-center text-xl">
            We are sorry about that!
          </h3>
          <div className="w-full md:w-3/4 lg:w-3/5 mx-auto">
            <img src={astronaut}></img>
          </div>
        </div>
      </div>
      <div className="container max-w-5xl text-center mx-auto mt-4 py-4 sm:border-t">
        <p className="text-gray-600">© Stacks.fyi 2020. All Rights Reserved.</p>
      </div>
    </div>
  );
};

export default NotFoundComponent;
