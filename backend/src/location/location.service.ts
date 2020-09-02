import { Injectable } from '@nestjs/common';
import { Location } from 'src/model/location.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class LocationService {
  constructor(@InjectRepository(Location) private repo: Repository<Location>) {}

  async findLanguageByLocation(location: string) {
    const result = await this.repo.findOne({
      where: { name: location },
      relations: ['languages'],
    });

    if (!result) {
      return [];
    }

    // Removes id so we can map
    delete result.languages.id;
    return Object.keys(result.languages).map(lang => {
      return {
        name: lang,
        jobListings: result.languages[lang],
        uniqueCompanies: result.languages[lang],
      };
    });
  }

  async findFrameworkByLocation(location: string) {
    const result = await this.repo.findOne({
      where: { name: location },
      relations: ['frameworks'],
    });

    if (!result) {
      return [];
    }

    // Removes id so we can map
    delete result.frameworks.id;
    return Object.keys(result.frameworks).map(lang => {
      return {
        name: lang,
        jobListings: result.frameworks[lang],
        uniqueCompanies: result.frameworks[lang],
      };
    });
  }
}
