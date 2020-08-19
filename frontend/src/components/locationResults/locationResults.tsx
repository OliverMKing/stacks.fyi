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

  const ranking = (first: string, second: string, third: string) => (
    <div className="flex flex-col sm:flex-row justify-center pt-12 my-12 sm:my-4 ">
      <div className="flex flex-col w-5/6 lg:w-1/4 mx-auto lg:mx-0 rounded-none lg:rounded-l-lg bg-white mt-4 shadow-md z-5">
        <div className="flex-1 bg-white text-gray-700 rounded-t rounded-b-none overflow-hidden shadow">
          <div className="flex items-center justify-center">
            <img
              src="https://img.icons8.com/emoji/96/000000/2nd-place-medal-emoji.png"
              alt="2nd place medal"
            />
          </div>
          <div className="p-8 text-3xl font-bold text-center">{second}</div>
        </div>
      </div>

      <div className="flex flex-col w-5/6 lg:w-1/3 mx-auto lg:mx-0 rounded-lg bg-white mt-4 sm:-mt-6 shadow-lg z-10">
        <div className="flex-1 bg-white rounded-t rounded-b-none overflow-hidden shadow">
          <div className="flex items-center justify-center">
            <img
              src="https://img.icons8.com/emoji/96/000000/1st-place-medal-emoji.png"
              alt="1st place medal"
            />
          </div>
          <div className="w-full p-8 text-3xl font-bold text-center">
            {first}
          </div>
          <div className="h-1 w-full gradient my-0 py-0 rounded-t"></div>
        </div>
      </div>

      <div className="flex flex-col w-5/6 lg:w-1/4 mx-auto lg:mx-0 rounded-none lg:rounded-l-lg bg-white mt-4 sm:mt-8">
        <div className="flex-1 bg-white text-gray-600 rounded-t rounded-b-none overflow-hidden shadow">
          <div className="flex items-center justify-center">
            <img
              src="https://img.icons8.com/emoji/96/000000/3rd-place-medal-emoji.png"
              alt="3rd place medal"
            />
          </div>
          <div className="p-8 text-3xl font-bold text-center">{third}</div>
        </div>
      </div>
    </div>
  );

  return (
    <div className="bg-gray-100 min-h-screen pb-3">
      <div className="w-full container mx-auto">
        <NavbarComponent />`
        <div className="container max-w-5xl mx-auto m-7 pt-8">
          <section className="py-8">
            <div className="container mx-auto px-2 pt-4 pb-12 text-gray-800">
              <h1 className="w-full my-2 text-5xl font-bold leading-tight text-center text-gray-800">
                {params.q}
              </h1>
            </div>

            {ranking(
              topLanguages[0].name,
              topLanguages[1].name,
              topLanguages[2].name
            )}
          </section>
        </div>
        <div className="container max-w-5xl text-center mx-auto mt-4 py-4 sm:border-t">
          <p className="text-gray-600">
            © Stacks.fyi 2020. All Rights Reserved.{" "}
            <a href="https://icons8.com/icon/X6CJMckcVrBj/1st-place-medal">
              Icons by Icons8
            </a>
          </p>
        </div>
      </div>
    </div>
  );
};

export default App;
