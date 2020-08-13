import React from "react";
import "../../assets/main.css";
import LocationSearchComponent from "../locationSearch/LocationSearch";
import IndexComponent from "../index/Index";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <Router>
        <div className="w-full container mx-auto">
          <nav className="flex items-center justify-between bg-white-500 py-8">
            <span className="font-semibold text-3xl tracking-tight">
              <a href="/">Stacks.fyi</a>
            </span>
            <div className="block flex items-center w-auto">
              <div className="flex-grow">
                <button
                  id="navAction"
                  className="mx-auto bg-blue-700 hover:bg-blue-900 text-white text-sm rounded py-2 px-8 shadow"
                  onClick={() => (window.location.href = "/location-search")}
                >
                  Stacks By Location
                </button>
              </div>
            </div>
          </nav>

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
