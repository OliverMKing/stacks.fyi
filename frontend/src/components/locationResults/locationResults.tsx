import React from "react";
import { useQuery, gql } from "@apollo/client";
import NavbarComponent from "../navbar/Navbar";
import { RouteComponentProps } from "react-router-dom";
import * as QueryString from "query-string";

interface Language {
  name: string;
  uniqueCompanies: number;
  jobListings: number;
}

interface LanguageQueryResult {
  languageByLocation: Language[];
}

interface LanguageQueryVars {
  location: string;
}

const LANGUAGE_QUERY = gql`
  query LanguageByLocation($location: String!) {
    languageByLocation(location: $location) {
      name
      uniqueCompanies
      jobListings
    }
  }
`;

const App: React.FunctionComponent<RouteComponentProps> = (props) => {
  const params = QueryString.parse(props.location.search);
  // Calls GraphQL
  const { loading, error, data } = useQuery<
    LanguageQueryResult,
    LanguageQueryVars
  >(LANGUAGE_QUERY, { variables: { location: params.q } });

  // TODO: Better loading screen and handle error
  if (loading || !data?.languageByLocation) return <div></div>;

  const languages = data?.languageByLocation;
  const topLanguages = languages
    ?.slice()
    .sort((a, b) => (a.jobListings < b.jobListings ? 1 : -1))
    .slice(0, 3);

  return (
    <div className="bg-gray-100 min-h-screen pb-3">
      <div className="w-full container mx-auto">
        <NavbarComponent />

        <div className="container max-w-5xl mx-auto m-7 pt-8">
          <section className="bg-gray-100 py-8">
            <div className="container mx-auto px-2 pt-4 pb-12 text-gray-800">
              <h1 className="w-full my-2 text-5xl font-bold leading-tight text-center text-gray-800">
                {params.q}
              </h1>
              <div className="w-full mb-4">
                <div className="h-1 mx-auto gradient w-64 opacity-25 my-0 py-0 rounded-t"></div>
              </div>

              <div className="flex flex-col sm:flex-row justify-center pt-12 my-12 sm:my-4">
                <div className="flex flex-col w-5/6 lg:w-1/4 mx-auto lg:mx-0 rounded-none lg:rounded-l-lg bg-white mt-4">
                  <div className="flex-1 bg-white text-gray-600 rounded-t rounded-b-none overflow-hidden shadow">
                    <div className="p-8 text-3xl font-bold text-center border-b-4">
                      {topLanguages[1].name}
                    </div>
                    <ul className="w-full text-center text-sm">
                      <li className="border-b py-4">
                        {topLanguages[1].jobListings} Job Postings
                      </li>
                      <li className="border-b py-4">
                        {topLanguages[1].uniqueCompanies} Unique Companies
                      </li>
                    </ul>
                  </div>
                  <div className="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                    <div className="w-full pt-6 text-3xl text-gray-600 font-bold text-center">
                      7,413<span className="text-base"> Job Postings</span>
                    </div>
                    <div className="flex items-center justify-center">
                      <button className="mx-auto lg:mx-0 hover:underline gradient text-black font-bold rounded-full my-6 py-4 px-8 shadow-lg">
                        2
                      </button>
                    </div>
                  </div>
                </div>

                <div className="flex flex-col w-5/6 lg:w-1/3 mx-auto lg:mx-0 rounded-lg bg-white mt-4 sm:-mt-6 shadow-lg z-10">
                  <div className="flex-1 bg-white rounded-t rounded-b-none overflow-hidden shadow">
                    <div className="w-full p-8 text-3xl font-bold text-center">
                      {topLanguages[0].name}
                    </div>
                    <div className="h-1 w-full gradient my-0 py-0 rounded-t"></div>
                    <ul className="w-full text-center text-base font-bold">
                      <li className="border-b py-4">
                        {topLanguages[0].jobListings} Job Postings
                      </li>
                      <li className="border-b py-4">
                        {topLanguages[0].uniqueCompanies} Unique Companies
                      </li>
                    </ul>
                  </div>
                  <div className="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                    <div className="w-full pt-6 text-4xl font-bold text-center">
                      10,241 <span className="text-base"> Job Postings</span>
                    </div>
                    <div className="flex items-center justify-center">
                      <button className="mx-auto lg:mx-0 hover:underline gradient text-black font-bold rounded-full my-6 py-4 px-8 shadow-lg">
                        1
                      </button>
                    </div>
                  </div>
                </div>

                <div className="flex flex-col w-5/6 lg:w-1/4 mx-auto lg:mx-0 rounded-none lg:rounded-l-lg bg-white mt-4">
                  <div className="flex-1 bg-white text-gray-600 rounded-t rounded-b-none overflow-hidden shadow">
                    <div className="p-8 text-3xl font-bold text-center border-b-4">
                      {topLanguages[2].name}
                    </div>
                    <ul className="w-full text-center text-sm">
                      <li className="border-b py-4">
                        {topLanguages[2].jobListings} Job Postings
                      </li>
                      <li className="border-b py-4">
                        {topLanguages[2].uniqueCompanies} Unique Companies
                      </li>
                    </ul>
                  </div>
                  <div className="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                    <div className="w-full pt-6 text-3xl text-gray-600 font-bold text-center">
                      7,413<span className="text-base"> Job Postings</span>
                    </div>
                    <div className="flex items-center justify-center">
                      <button className="mx-auto lg:mx-0 hover:underline  text-black font-bold rounded-full my-6 py-4 px-8 shadow-lg">
                        3
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
};

export default App;
