import { createConnection, ConnectionOptions } from 'typeorm';
import { configService } from '../config/config.service';
import { Location, Type } from '../model/location.entity';
import { Languages } from 'src/model/languages.entity';
import { Frameworks } from 'src/model/frameworks.entity';
import { createInferTypeNode } from 'typescript';
import { UseFilters } from '@nestjs/common';
import { Console } from 'console';
var unirest = require('unirest');
const indeed = require('indeed-scraper');
const cities = require('all-the-cities');
const countrycitystate = require('countrycitystatejson');

// Create a map of states and abbreviations
let statemap = new Map();
statemap.set('Alaska', 'AK');
statemap.set('Alabama', 'AL');
statemap.set('Arkansas', 'AR');
statemap.set('California', 'CA');
statemap.set('Colorado', 'CO');
statemap.set('Arizona', 'AZ');
statemap.set('Connecticut', 'CT');
statemap.set('Delaware', 'DE');
statemap.set('Florida', 'FL');
statemap.set('Georgia', 'GA');
statemap.set('Hawaii', 'HI');
statemap.set('Idaho', 'ID');
statemap.set('Illinois', 'IL');
statemap.set('Indiana', 'IN');
statemap.set('Iowa', 'IA');
statemap.set('Kansas', 'KS');
statemap.set('Kentucky', 'KY');
statemap.set('Louisiana', 'LA');
statemap.set('Maine', 'ME');
statemap.set('Maryland', 'MD');
statemap.set('Massachusetts', 'MA');
statemap.set('Michigan', 'MI');
statemap.set('Minnesota', 'MN');
statemap.set('Mississippi', 'MS');
statemap.set('Missouri', 'MO');
statemap.set('Montana', 'MT');
statemap.set('Nebraska', 'NE');
statemap.set('Nevada', 'NV');
statemap.set('New Hampshire', 'NH');
statemap.set('New Jersey', 'NJ');
statemap.set('New Mexico', 'NM');
statemap.set('New York', 'NY');
statemap.set('North Carolina', 'NC');
statemap.set('North Dakota', 'ND');
statemap.set('Ohio', 'OH');
statemap.set('Oklahoma', 'OK');
statemap.set('Oregon', 'OR');
statemap.set('Pennsylvania', 'PA');
statemap.set('Rhode Island', 'RI');
statemap.set('South Carolina', 'SC');
statemap.set('South Dakota', 'SD');
statemap.set('Tennessee', 'TN');
statemap.set('Texas', 'TX');
statemap.set('Utah', 'UT');
statemap.set('Vermont', 'VT');
statemap.set('Virginia', 'VA');
statemap.set('Washington', 'WA');
statemap.set('Wisconsin', 'WI');
statemap.set('Wyoming', 'WY');
statemap.set('West Virginia', 'WV');

var languages = [
  'Java',
  'JavaScript',
  'Ruby',
  'Python',
  'Cpp',
  'Csharp',
  'Golang',
  'TypeScript',
  'Dart',
  'Haskell',
  'PHP',
  'Swift',
  'Perl',
  'Kotlin',
  'Rust',
  'Scala',
  'ObjectiveC',
];
var frameworks = [
  'Nodejs',
  'React',
  'Rails',
  'Angular',
  'Django',
  'Symfony',
  'Laravel',
  'Spring',
  'Vue',
  'Flask',
  'jQuery',
  'ASPNET',
];

async function run() {
  const opt = {
    ...configService.getTypeOrmConfig(true),
    debug: true,
  };
  const connection = await createConnection(opt as ConnectionOptions);
  const repo = connection.getRepository(Location);

  // Push all db actions to work so we can return a promise
  let work = [];

  const US = new Location();
  US.name = 'United States';
  US.languages = new Languages();
  US.type = Type.Country;
  US.frameworks = new Frameworks();

  let states = countrycitystate.getCountryByShort('US').states;
  // Loops through states
  for (let state in states) {
    let cities2 = countrycitystate.getCities('US', state);

    // Create state
    const stateLoc = new Location();
    stateLoc.name = state;
    stateLoc.languages = new Languages();
    stateLoc.frameworks = new Frameworks();
    stateLoc.type = Type.State;

    console.log('Adding state', stateLoc.name, '------------');

    for (let city in cities2) {
      let varry = cities2[city];
      let citiesInState = cities.filter(city => city.name.match(varry));
      try {
        for (let eachcity in citiesInState) {
          let cityabrev = statemap.get(state);

          if (
            citiesInState[eachcity].population > 100000 &&
            citiesInState[eachcity].country == 'US' &&
            citiesInState[eachcity].adminCode == cityabrev
          ) {
            // TODO: Add city to db
            const city = new Location();
            city.name =
              citiesInState[eachcity].name +
              ', ' +
              citiesInState[eachcity].adminCode;
            city.languages = new Languages();
            city.type = Type.City;
            city.frameworks = new Frameworks();

            console.log('Adding city', city.name);

            for (let lang of languages) {
              const total:string = await (callApi(lang, city.name));
             let total1:string[] = total.split(" ");
		let total2 = parseInt(total1[23].replace(/,/g, ""),10);
		
		 //const total = 1;
              city.languages[lang] = total2;

              // Update State and US
              stateLoc.languages[lang] += total2;
              US.languages[lang] += total2;
            }
            for (let frame of frameworks) {
             const total:string = await (callApi(frame, city.name));
              let total1:string[] = total.split(" ");
		let total2 = parseInt(total1[23].replace(/,/g, ""),10);

              city.frameworks[frame] = total2;

              // Update State and US
              stateLoc.frameworks[frame] += total2;
              US.frameworks[frame] += total2;
            }

            // Save city
            work.push(repo.save(city));
          }
        }
      } catch {}
    }
    work.push(repo.save(stateLoc));
  }

  // Exception for D.C.
  const DC = new Location();
  DC.name = 'Washington, D.C.';
  DC.languages = new Languages();
  DC.frameworks = new Frameworks();
  DC.type = Type.City;
  for (let lang of languages) {
    //const  total = await (callApi(lang, DC.name));
    const total = 1;
    DC.languages[lang] = total;

    // Update  US
    US.languages[lang] += total;
  }
  for (let frame of frameworks) {
    //const total = await (callApi(frame, DC.name));
    const total = 1;
    DC.frameworks[frame] = total;

    // Update  US
    US.frameworks[frame] += total;
  }
  work.push(repo.save(DC));

  work.push(repo.save(US));

  return await Promise.all(work);
}

function callApi(lang, city): Promise<string> {
   return new Promise((resolve) => {
    const queryOptions = {
      host: "www.indeed.com",
      query: lang,
      city: city,
      radius: "100",
      jobType: "fulltime",
      sort: "date",
    };
    indeed.query(queryOptions).then((res) => {
      console.log(res); // An array of Job objects
      resolve(res);
    });
  });
}

run()
  .then(_ => console.log('...wait for script to exit'))
  .catch(error => console.error(error));
