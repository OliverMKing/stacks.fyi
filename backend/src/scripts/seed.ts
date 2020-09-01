import { createConnection, ConnectionOptions } from 'typeorm';
import { configService } from '../config/config.service';
import { Location, Type } from '../model/location.entity';
import { Languages } from 'src/model/languages.entity';
import { Frameworks } from 'src/model/frameworks.entity';
import { createInferTypeNode } from 'typescript';
import { UseFilters } from '@nestjs/common';
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

// let states = yourhandle.getCountryByShort('US').states;
// let count = 0;
// var array = [];
// for (let state in states) {
//   console.log(state);
//   let cities2 = yourhandle.getCities('US', state);
//   for (let city in cities2) {
//     let varry = cities2[city];
//     // console.log(cities2[city]);
//     let thecity = cities.filter(city => city.name.match(varry));
//     try {
//       for (let eachcity in thecity) {
//         let cityabrev = statemap.get(state);

//         if (thecity[eachcity].population > 100000 && thecity[eachcity].country == 'US' && thecity[eachcity].adminCode == cityabrev) {
//           //  console.log("-------------------BIG CITY------------------")
//           //  console.log(thecity[eachcity]);
//           array.push(thecity[eachcity].name + ", " + thecity[eachcity].adminCode);
//           count += 1;
//         }
//       }

//     }
//     catch{

//     }

//   }


// }
// for (let city3 in array) {
//   console.log(array[city3]);
// }
var testcities = [
  'Seattle, WA'
]

var languages = [
  'Java',
  'JavaScript', 'Ruby', 'Python', 'C++', 'C#', 'Golang', 'TypeScript', 'Dart', 'Haskell', 'PHP', 'Swift', 'Perl', 'Kotlin', 'Rust', 'Scala', 'Objective-C'
];
var frameworks = [
  'Node.js', 'React', 'Rails', 'Angular', 'Django', 'Symfony', 'Laravel', 'Spring', 'Vue', 'Flask', 'jQuery', 'ASP.NET'
]

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

  for (let language in Object.keys(US.languages)) {
    console.log(language);
  }
  for (let city3 in testcities) {
    const city = new Location();
    city.name = testcities[city3];
    city.languages = new Languages();
    city.type = Type.City;
    city.frameworks = new Frameworks();

    for (let lang in languages) {
      //let total = await (callApi(languages[lang], testcities[city3]));
      city.languages[languages[lang]] = 5;
    }
    for (let frame in frameworks) {
      //let total = await (callApi(frameworks[frame], testcities[city3]));
      city.frameworks[frameworks[frame]] = 4;
    }

    work.push(repo.save(city));
  }
  work.push(repo.save(US));



  return await Promise.all(work);
}
function callApi(lang, city) {
  var req = unirest('GET', 'https://indeed-com.p.rapidapi.com/search/jobs');
  console.log(lang);
  return new Promise(resolve => {
    req.query({
      sort: 'relevance',
      location: city,
      offset: '0',
      query: lang,
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
