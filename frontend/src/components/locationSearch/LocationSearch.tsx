import React, { useState } from "react";
import NavbarComponent from "../navbar/Navbar";
import { useHistory } from "react-router-dom";

interface Search {
  name: string;
}

const LocationSearchComponent: React.FC = () => {
  const history = useHistory();

  // Describes common searches, add new ones here
  const commonSearches: Search[] = [
    { name: "United States" },
    { name: "San Francisco, CA" },
    { name: "Irvine, CA" },
    { name: "New York, NY" },
    { name: "Washington, D.C." },
    { name: "Chicago, IL" },
    { name: "Austin, TX" },
    { name: "Dallas, TX" },
    { name: "Raleigh, NC" },
    { name: "Atlanta, GA" },
    { name: "Boston, MA" },
    { name: "Seattle, WA" },
  ];
  const [searchparam, setsearchparam] = useState("test");
  const changeSearch = ({ target }: { target: any }) => {
    setsearchparam(target.value);
    console.log(searchparam);
  };
  const submitform = () => {
    history.push("/location-results/:?q=" + searchparam);
  };
  return (
    <div className="bg-gray-100 min-h-screen pb-3">
      <div className="w-full container mx-auto">
        <NavbarComponent />
        <div className="container max-w-5xl mx-auto m-8 pt-8">
          <h1 className="w-full my-2 text-4xl font-bold leading-tight text-center text-gray-800">
            Search stacks by location
          </h1>
          <h3 className="break-normal font-normal text-gray-800 text-center text-xl">
            Search by City, State, or Country
          </h3>
          <div className="w-full pt-8">
            <form onSubmit={submitform}>
              <div className="max-w-xs md:max-w-xl mx-auto p-1 bg-white rounded shadow flex flex-wrap items-center">
                <input
                  onChange={changeSearch}
                  type="text"
                  placeholder="Location (Ex: Raleigh, NC)"
                  className="flex-1 appearance-none p-3 text-gray-600 mr-2"
                />
                <button
                  type="submit"
                  className="flex-2 block md:inline-block appearance-none bg-blue-600 text-white text-base font-semibold tracking-wider p-3 rounded hover:bg-blue-500"
                  onClick={() =>
                    (window.location.href =
                      "/location-results/:?q=" + searchparam)
                  }
                >
                  Search
                </button>
              </div>
            </form>
          </div>
          <div className="w-full pt-24">
            <h1
              className="w-full my-2 text-4xl font-bold leading-tight text-center text-gray-800"
              id="common-searches"
            >
              Common searches
            </h1>
            <div className="flex flex-wrap pt-4 content-center">
              {commonSearches.map((search) => {
                return (
                  <div className="w-1/2 md:w-1/3 p-3">
                    <button
                      className="w-full bg-gray-200 hover:bg-gray-300 p-4 rounded"
                      onClick={() =>
                        (window.location.href =
                          "/location-results/:?q=" + search.name)
                      }
                    >
                      {search.name}
                    </button>
                  </div>
                );
              })}
            </div>
          </div>
          <div className="max-w-5xl text-center mt-4 pt-4 sm:border-t">
            <p className="text-gray-600">
              © Stacks.fyi 2020. All Rights Reserved.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LocationSearchComponent;
