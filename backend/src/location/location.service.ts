import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Country } from 'src/model/country.entity';
import { Repository } from 'typeorm';
import { State } from 'src/model/state.entity';
import { City } from 'src/model/city.entity';

@Injectable()
export class LocationService {
  constructor(
    @InjectRepository(Country)
    private readonly countryRepo: Repository<Country>,
    @InjectRepository(State) private readonly stateRepo: Repository<State>,
    @InjectRepository(City) private readonly cityRepo: Repository<City>,
  ) {}

  async findLanguageByLocation(location: string) {
    // TODO: Write code to get language by location using injected repos

    return await [
      { name: 'Java', jobListings: 10, uniqueCompanies: 10 },
      { name: 'Python', jobListings: 9, uniqueCompanies: 9 },
      { name: 'C', jobListings: 8, uniqueCompanies: 8 },
      { name: 'C++', jobListings: 7, uniqueCompanies: 7 },
      { name: 'TypeScript', jobListings: 6, uniqueCompanies: 6 },
      { name: 'Ruby', jobListings: 5, uniqueCompanies: 5 },
      { name: 'Dart', jobListings: 4, uniqueCompanies: 4 },
    ];
  }

  async findFrameworkByLocation(location: string) {
    // TODO: Write code to get frameworks by location using injected repos

    return await [
      { name: 'Spring', jobListings: 10, uniqueCompanies: 10 },
      { name: 'React', jobListings: 9, uniqueCompanies: 9 },
      { name: 'Angular', jobListings: 8, uniqueCompanies: 8 },
      { name: 'Vue', jobListings: 7, uniqueCompanies: 7 },
      { name: 'Svelte', jobListings: 6, uniqueCompanies: 6 },
      { name: 'Rails', jobListings: 5, uniqueCompanies: 5 },
      { name: 'Play Framework', jobListings: 11, uniqueCompanies: 11 },
    ];
  }
}
