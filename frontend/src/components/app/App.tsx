import React from "react";
import { ApolloProvider, InMemoryCache, ApolloClient } from "@apollo/client";
import "../../assets/main.css";
import LocationSearchComponent from "../locationSearch/LocationSearch";
import LocationResultsComponent from "../locationResults/locationResults";
import IndexComponent from "../index/Index";
import NotFoundComponent from "../notFound/NotFound";
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  Redirect,
} from "react-router-dom";

const client = new ApolloClient({
  uri: "http://localhost:3001/graphql",
  cache: new InMemoryCache(),
});

function App() {
  return (
    <div className="App">
      <ApolloProvider client={client}>
        <Router>
          <Switch>
            <Route exact path="/location-search">
              <LocationSearchComponent />
            </Route>
            <Route
              path="/location-results/:redirectParam"
              component={LocationResultsComponent}
            ></Route>
            <Route exact path="/">
              <IndexComponent />
            </Route>
            <Route path="*">
              <NotFoundComponent />
            </Route>
          </Switch>
        </Router>
      </ApolloProvider>
    </div>
  );
}

export default App;
