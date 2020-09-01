import { createConnection, ConnectionOptions } from 'typeorm';
import { configService } from '../config/config.service';
import { Location, Type } from '../model/location.entity';
import { Languages } from 'src/model/languages.entity';
import { Frameworks } from 'src/model/frameworks.entity';
var unirest = require('unirest');
const cities = require('all-the-cities');
const yourhandle = require('countrycitystatejson');
let statemap = new Map()
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

let states = yourhandle.getCountryByShort('US').states;
let count = 0;
var array = [];
for (let state in states) {
  console.log(state);
  let cities2 = yourhandle.getCities('US', state);
  for (let city in cities2) {
    let varry = cities2[city];
    // console.log(cities2[city]);
    let thecity = cities.filter(city => city.name.match(varry));
    try {
      for (let eachcity in thecity) {
        let cityabrev = statemap.get(state);

        if (thecity[eachcity].population > 50000 && thecity[eachcity].country == 'US' && thecity[eachcity].adminCode == cityabrev) {
          //  console.log("-------------------BIG CITY------------------")
          //  console.log(thecity[eachcity]);
          array.push(thecity[eachcity].name + ", " + thecity[eachcity].adminCode);
          count += 1;
        }
      }

    }
    catch{

    }

  }


}
for (let city3 in array) {
  console.log(array[city3]);
}
console.log(count + "TOTAL CITIES")
var languages = [
  'Python',
  'JavaScript',
  'Java',
  'C',
  'C++',
  'PHP',
  'R',
  'Swift',
  'Ruby',
  'C#',
];
async function run() {
  const opt = {
    ...configService.getTypeOrmConfig(true),
    debug: true,
  };
  const connection = await createConnection(opt as ConnectionOptions);

  const repo = connection.getRepository(Location);

  let work = [];
  const US = new Location();
  US.name = 'United States';
  US.languages = new Languages();
  US.type = Type.Country;
  US.frameworks = new Frameworks();
  work.push(repo.save(US));

  let states = [
    'AK',
    'AL',
    'AR',
    'AS',
    'AZ',
    'CA',
    'CO',
    'CT',
    'DC',
    'DE',
    'FL',
    'GA',
    'GU',
    'HI',
    'IA',
    'ID',
    'IL',
    'IN',
    'KS',
    'KY',
    'LA',
    'MA',
    'MD',
    'ME',
    'MI',
    'MN',
    'MO',
    'MP',
    'MS',
    'MT',
    'NC',
    'ND',
    'NE',
    'NH',
    'NJ',
    'NM',
    'NV',
    'NY',
    'OH',
    'OK',
    'OR',
    'PA',
    'PR',
    'RI',
    'SC',
    'SD',
    'TN',
    'TX',
    'UM',
    'UT',
    'VA',
    'VI',
    'VT',
    'WA',
    'WI',
    'WV',
    'WY',
  ];

  return await Promise.all(work);
}
function callApi(lang, city) {
  var req = unirest('GET', 'https://indeed-com.p.rapidapi.com/search/jobs');
  return new Promise(resolve => {
    req.query({
      sort: 'relevance',
      location: city,
      offset: '0',
      query: languages[lang],
      country: 'us',
      radius: '100',
    });

    req.headers({
      'x-rapidapi-host': 'indeed-com.p.rapidapi.com',
      'x-rapidapi-key': '',
      useQueryString: true,
    });

    req.end(function (res) {
      if (res.error) throw new Error(res.error);
      console.log(res.body.totalResults);

      resolve(res.body.totalResults);
    });
  });
}

run()
  .then(_ => console.log('...wait for script to exit'))
  .catch(error => console.error(error));
