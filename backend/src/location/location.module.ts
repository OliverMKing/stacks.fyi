import { Module } from '@nestjs/common';
import { FrameworkResolver, LanguageResolver } from './location.resolver';
import { LocationService } from './location.service';

@Module({
  providers: [FrameworkResolver, LanguageResolver, LocationService],
})
export class LocationModule {}
