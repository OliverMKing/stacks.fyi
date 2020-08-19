import React, { Props } from "react";
import NavbarComponent from "../navbar/Navbar";
import { RouteComponentProps } from "react-router-dom";
import * as QueryString from "query-string";
import blob from "./blob.svg";


const styles = {
    background_image: {

        backgroundRepeat: "no-repeat",
        height: "3000px",
    } as React.CSSProperties,
};
const styles2 = {
    background_image: {
        backgroundImage: "url(" + blob + ")",
        backgroundRepeat: "no-repeat",
        height: "3000px",
    } as React.CSSProperties,
};

const App: React.FunctionComponent<RouteComponentProps> = props => {
    const params = QueryString.parse(props.location.search);
    console.log(params.q); // "shoes"
    console.log(params.clearance); // true
    return (

        <div className="bg-gray-100 min-h-screen pb-3">


            <div className="w-full container mx-auto">

                <NavbarComponent />

                <div className="container max-w-5xl mx-auto m-7 pt-8">

                    <section className="bg-gray-100 py-8">



                        <div className="container mx-auto px-2 pt-4 pb-12 text-gray-800">

                            <h1 className="w-full my-2 text-5xl font-bold leading-tight text-center text-gray-800">{params.q}</h1>
                            <div className="w-full mb-4">
                                <div className="h-1 mx-auto gradient w-64 opacity-25 my-0 py-0 rounded-t"></div>
                            </div>



                            <div className="flex flex-col sm:flex-row justify-center pt-12 my-12 sm:my-4">

                                <div className="flex flex-col w-5/6 lg:w-1/4 mx-auto lg:mx-0 rounded-none lg:rounded-l-lg bg-white mt-4">
                                    <div className="flex-1 bg-white text-gray-600 rounded-t rounded-b-none overflow-hidden shadow">
                                        <div className="p-8 text-3xl font-bold text-center border-b-4">Node.js</div>
                                        <ul className="w-full text-center text-sm">
                                            <li className="border-b py-4">398 Job Postings</li>
                                            <li className="border-b py-4">29 Unique Companies</li>
                                            <li className="border-b py-4">70,000$ Average Salary</li>
                                        </ul>
                                    </div>
                                    <div className="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                                        <div className="w-full pt-6 text-3xl text-gray-600 font-bold text-center">7,413<span className="text-base"> Job Postings</span></div>
                                        <div className="flex items-center justify-center">
                                            <button className="mx-auto lg:mx-0 hover:underline gradient text-black font-bold rounded-full my-6 py-4 px-8 shadow-lg">2</button>
                                        </div>
                                    </div>
                                </div>



                                <div className="flex flex-col w-5/6 lg:w-1/3 mx-auto lg:mx-0 rounded-lg bg-white mt-4 sm:-mt-6 shadow-lg z-10">
                                    <div className="flex-1 bg-white rounded-t rounded-b-none overflow-hidden shadow">
                                        <div className="w-full p-8 text-3xl font-bold text-center">React.js</div>
                                        <div className="h-1 w-full gradient my-0 py-0 rounded-t"></div>
                                        <ul className="w-full text-center text-base font-bold">
                                            <li className="border-b py-4">4,694 Job Postings</li>
                                            <li className="border-b py-4">53 Unique Companies</li>
                                            <li className="border-b py-4">83,000$ Average Salary</li>
                                            <li className="border-b py-4">Thing</li>
                                        </ul>
                                    </div>
                                    <div className="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                                        <div className="w-full pt-6 text-4xl font-bold text-center">10,241 <span className="text-base"> Job Postings</span></div>
                                        <div className="flex items-center justify-center">
                                            <button className="mx-auto lg:mx-0 hover:underline gradient text-black font-bold rounded-full my-6 py-4 px-8 shadow-lg">1</button>
                                        </div>
                                    </div>
                                </div>



                                <div className="flex flex-col w-5/6 lg:w-1/4 mx-auto lg:mx-0 rounded-none lg:rounded-l-lg bg-white mt-4">
                                    <div className="flex-1 bg-white text-gray-600 rounded-t rounded-b-none overflow-hidden shadow">
                                        <div className="p-8 text-3xl font-bold text-center border-b-4">C++</div>
                                        <ul className="w-full text-center text-sm">
                                            <li className="border-b py-4">10,000 Job Postings</li>
                                            <li className="border-b py-4">400 Unique Companies</li>
                                            <li className="border-b py-4">70,000$ Average Salary</li>
                                        </ul>
                                    </div>
                                    <div className="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                                        <div className="w-full pt-6 text-3xl text-gray-600 font-bold text-center">7,413<span className="text-base"> Job Postings</span></div>
                                        <div className="flex items-center justify-center">
                                            <button className="mx-auto lg:mx-0 hover:underline  text-black font-bold rounded-full my-6 py-4 px-8 shadow-lg">3</button>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>


                    </section>


                </div>

            </div>
        </div>

    )
}

export default App;
