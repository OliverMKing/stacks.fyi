import React from "react";
import { useQuery, gql } from "@apollo/client";
import NavbarComponent from "../navbar/Navbar";
import { RouteComponentProps } from "react-router-dom";
import * as QueryString from "query-string";
import settings from "./settings.png";
import ReactEcharts from "echarts-for-react";
import { EChartOption } from "echarts";

interface Language {
  name: string;
  uniqueCompanies: number;
  jobListings: number;
}

interface Framework {
  name: string;
  uniqueCompanies: number;
  jobListings: number;
}

interface QueryResult {
  languageByLocation: Language[];
  frameworkByLocation: Framework[];
}

interface QueryVars {
  location: string;
}

const QUERY = gql`
  query LanguageByLocation($location: String!) {
    languageByLocation(location: $location) {
      name
      uniqueCompanies
      jobListings
    }
    frameworkByLocation(location: $location) {
      name
      uniqueCompanies
      jobListings
    }
  }
`;

const App: React.FunctionComponent<RouteComponentProps> = (props) => {
  const params = QueryString.parse(props.location.search);

  // Calls GraphQL
  const { loading, error, data } = useQuery<QueryResult, QueryVars>(QUERY, {
    variables: { location: params.q as string },
  });

  // While GraphQL is being called
  if (loading || !data?.languageByLocation || !data?.frameworkByLocation)
    return <div></div>;

  // Handles error. TODO: Handle different errors better
  if (error) {
    return (
      <div className="bg-gray-100 min-h-screen pb-3">
        <div className="w-full container mx-auto">
          <NavbarComponent />
          <div className="container max-w-5xl mx-auto m-8 pt-8">
            <h1 className="w-full my-2 text-4xl font-bold leading-tight text-center text-gray-800">
              There was an error
            </h1>
            <h3 className="break-normal font-normal text-gray-800 text-center text-xl">
              We are sorry about that!
            </h3>
            <div className="w-full md:w-3/4 lg:w-3/5 mx-auto">
              <img src={settings}></img>
            </div>
          </div>
        </div>
        <div className="container max-w-5xl text-center mx-auto mt-4 py-4 sm:border-t">
          <p className="text-gray-600">
            © Stacks.fyi 2020. All Rights Reserved.
          </p>
        </div>
      </div>
    );
  }

  // Get top 3 information
  const languages = data?.languageByLocation;
  const topLanguages = languages
    ?.slice()
    .sort((a, b) => (a.jobListings < b.jobListings ? 1 : -1))
    .slice(0, 3);

  const frameworks = data?.frameworkByLocation;
  const topFrameworks = frameworks
    ?.slice()
    .sort((a, b) => (a.jobListings < b.jobListings ? 1 : -1))
    .slice(0, 3);

  const ranking = (first: string, second: string, third: string) => (
    <div className="flex flex-col sm:flex-row justify-center sm:pt-12 my-8 sm:my-4 ">
      <div className="sm:hidden flex flex-col w-5/6 lg:w-1/3 mx-auto lg:mx-0 rounded-lg bg-white mt-4 sm:-mt-6 shadow-lg z-10">
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

      <div className="hidden sm:flex flex-col w-5/6 lg:w-1/3 mx-auto lg:mx-0 rounded-lg bg-white mt-4 sm:-mt-6 shadow-lg z-10">
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

  const getOption = (
    labels: string[],
    values: number[],
    color: string
  ): EChartOption => {
    return {
      xAxis: {
        type: "category",
        data: labels,
      },
      yAxis: {
        type: "value",
      },
      series: [
        {
          data: values,
          type: "bar",
        },
      ],
      color: [color],
    };
  };

  return (
    <div className="bg-gray-100 min-h-screen pb-3">
      <div className="w-full container mx-auto">
        <NavbarComponent />
        <div className="container max-w-5xl mx-auto m-7 pt-8">
          <section className="py-8">
            <div className="container mx-auto px-2 pt-4 pb-12 text-gray-800">
              <h1 className="w-full my-2 text-5xl font-bold leading-tight text-center text-gray-800">
                {params.q}
              </h1>
            </div>

            <h1 className="w-full my-2 text-4xl font-bold leading-tight text-center text-gray-800">
              Languages
            </h1>
            {ranking(
              topLanguages[0].name,
              topLanguages[1].name,
              topLanguages[2].name
            )}
            <ReactEcharts
              option={getOption(
                (languages as Language[]).map((x) => x.name),
                (languages as Language[]).map((x) => x.uniqueCompanies),
                "#3182ce"
              )}
            />

            <h1 className="w-full my-2 pt-16 text-4xl font-bold leading-tight text-center text-gray-800">
              Frameworks and tools
            </h1>
            {ranking(
              topFrameworks[0].name,
              topFrameworks[1].name,
              topFrameworks[2].name
            )}
            <ReactEcharts
              option={getOption(
                (frameworks as Framework[]).map((x) => x.name),
                (frameworks as Framework[]).map((x) => x.uniqueCompanies),
                "#fc8181"
              )}
            />
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
