import React, { Props } from "react";
import NavbarComponent from "../navbar/Navbar";
import { RouteComponentProps } from "react-router-dom";
import * as QueryString from "query-string"

const styles = {
    background_image: {

        backgroundRepeat: "no-repeat",
        height: "3000px",
    } as React.CSSProperties,
};
const styles2 = {
    background_image: {

        backgroundRepeat: "no-repeat",
        height: "3000px",
    } as React.CSSProperties,
};

const App: React.FunctionComponent<RouteComponentProps> = props => {
    const params = QueryString.parse(props.location.search);
    console.log(params.q); // "shoes"
    console.log(params.clearance); // true
    return (
        <div><h1>
            we out here
       {params.q}

        </h1></div>
    )
}

export default App;
