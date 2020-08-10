import { Injectable } from '@nestjs/common';
import { Language } from '../graphql';

@Injectable()
export class LocationService {
  async findLanguageByLocation(location: string) {
    return await [{ name: 'Java', jobListings: 10, uniqueCompanies: 10 }];
  }

  async findFrameworkByLocation(location: string) {
    return await [{ name: 'Spring', jobListings: 10, uniqueCompanies: 10 }];
  }
}
