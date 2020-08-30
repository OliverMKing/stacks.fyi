import { createConnection, ConnectionOptions } from 'typeorm';
import { configService } from '../config/config.service';
import { Country } from 'src/model/country.entity';
import { State } from 'src/model/state.entity';
import { City } from 'src/model/city.entity';
import { Languages } from 'src/model/languages.entity';
import { Frameworks } from 'src/model/frameworks.entity';

async function run() {
  const opt = {
    ...configService.getTypeOrmConfig(),
    debug: true,
  };
  const connection = await createConnection(opt as ConnectionOptions);

  const countryRepo = connection.getRepository(Country);
  const stateRepo = connection.getRepository(State);
  const cityRepo = connection.getRepository(City);

  let work = [];
  const US = new Country();
  US.name = 'United States';
  US.languages = new Languages();
  US.frameworks = new Frameworks();

  const NC = new State();
  NC.name = 'North Carolina';
  NC.languages = new Languages();
  NC.frameworks = new Frameworks();
  NC.country = US;

  work.push(countryRepo.save(US));
  work.push(stateRepo.save(NC));

  return await Promise.all(work);
}

run()
  .then(_ => console.log('...wait for script to exit'))
  .catch(error => console.error(error));
