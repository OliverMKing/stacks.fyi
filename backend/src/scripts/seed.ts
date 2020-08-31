import { createConnection, ConnectionOptions } from 'typeorm';
import { configService } from '../config/config.service';
import { Location } from '../model/location.entity';
import { Languages } from 'src/model/languages.entity';
import { Frameworks } from 'src/model/frameworks.entity';
var unirest = require('unirest');

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
    ...configService.getTypeOrmConfig(),
    debug: true,
  };
  const connection = await createConnection(opt as ConnectionOptions);

  const repo = connection.getRepository(Location);

  let work = [];
  const US = new Location();
  US.name = 'United States';
  US.languages = new Languages();
  US.frameworks = new Frameworks();

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
  let cities = [
    'New York, NY',
    'Los Angeles, CA',
    'Chicago, IL',
    'Houston, TX',
    'Phoenix, AZ',
    'Philadelphia, PA',
    'San Antonio, TX',
    'San Diego, CA',
    'Dallas, TX',
    'San Jose, CA',
    'Austin, TX',
    'Fort Worth, TX',
    'Jacksonville, FL',
    'Columbus, OH',
    'Charlotte, NC',
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

    req.end(function(res) {
      if (res.error) throw new Error(res.error);
      console.log(res.body.totalResults);

      resolve(res.body.totalResults);
    });
  });
}

run()
  .then(_ => console.log('...wait for script to exit'))
  .catch(error => console.error(error));
