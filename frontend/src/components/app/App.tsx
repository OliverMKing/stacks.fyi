import React from "react";
import "../../assets/main.css";
import LocationSearchComponent from "../locationSearch/LocationSearch";
import IndexComponent from "../index/Index";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <Router>
        <div>
          <nav className="flex items-center justify-between flex-wrap bg-white-500 p-6">
            <div className="flex items-center flex-shrink-0 text-black mr-6">
              <span className="font-semibold text-xl tracking-tight">
                Stacks.fyi
              </span>
            </div>
            <div className="block lg:hidden">
              <button className="flex items-center px-3 py-2 border rounded text-blue-200 border-blue-400 hover:text-white hover:border-white">
                <svg
                  className="fill-current h-3 w-3"
                  viewBox="0 0 20 20"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <title>Menu</title>
                  <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
                </svg>
              </button>
            </div>
            <div className="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
              <div className="text-sm lg:flex-grow">
                <a
                  href="#responsive-header"
                  className="block mt-4 lg:inline-block lg:mt-0 text-blue-200 hover:text-white mr-4"
                >
                  Docs
                </a>
                <a
                  href="#responsive-header"
                  className="block mt-4 lg:inline-block lg:mt-0 text-blue-200 hover:text-white mr-4"
                >
                  Examples
                </a>
                <a
                  href="#responsive-header"
                  className="block mt-4 lg:inline-block lg:mt-0 text-blue-200 hover:text-white"
                >
                  Blog
                </a>
              </div>
              <div>
                <a
                  href="#"
                  className="inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-transparent hover:text-blue-500 hover:bg-white mt-4 lg:mt-0"
                >
                  Download
                </a>
              </div>
            </div>
          </nav>

          <hr />

          <Switch>
            <Route exact path="/location-search">
              <LocationSearchComponent />
            </Route>
            <Route exact path="/">
              <IndexComponent />
            </Route>
          </Switch>
        </div>
      </Router>
    </div>
  );
}

export default App;
