import React from "react";
import "../../assets/main.css";
import LocationSearchComponent from "../locationSearch/LocationSearch";
import IndexComponent from "../index/Index";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <Router>
        <Switch>
          <Route exact path="/location-search">
            <LocationSearchComponent />
          </Route>
          <Route exact path="/">
            <IndexComponent />
          </Route>
        </Switch>
      </Router>
    </div>
  );
}

export default App;
