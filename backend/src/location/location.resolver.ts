import { Resolver, Args, Query } from '@nestjs/graphql';
import { LocationService } from './location.service';
import { Language } from '../graphql';

@Resolver('Language')
export class LanguageResolver {
  constructor(private locationService: LocationService) {}

  @Query()
  async languageByLocation(@Args('location') location: string) {
    return await this.locationService.findLanguageByLocation(location);
  }
}

@Resolver('Framework')
export class FrameworkResolver {
  constructor(private locationService: LocationService) {}

  @Query()
  async frameworkByLocation(@Args('location') location: string) {
    return await this.locationService.findFrameworkByLocation(location);
  }
}
