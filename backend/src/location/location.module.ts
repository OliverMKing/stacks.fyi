import { Module } from '@nestjs/common';
import { FrameworkResolver, LanguageResolver } from './location.resolver';
import { LocationService } from './location.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Location } from '../model/location.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Location])],
  providers: [FrameworkResolver, LanguageResolver, LocationService],
})
export class LocationModule {}
