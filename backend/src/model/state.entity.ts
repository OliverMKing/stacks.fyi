import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  ManyToOne,
  OneToMany,
} from 'typeorm';
import { Languages } from './languages.entity';
import { Frameworks } from './frameworks.entity';
import { Country } from './country.entity';
import { City } from './city.entity';

@Entity({ name: 'state' })
export class State {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'varchar', length: 300 })
  name: string;

  @OneToOne(type => Languages, { cascade: true })
  @JoinColumn()
  languages: Languages;

  @OneToOne(type => Frameworks, { cascade: true })
  @JoinColumn()
  frameworks: Frameworks;

  @ManyToOne(
    type => Country,
    country => country.states,
  )
  country: Country;

  @OneToMany(
    type => City,
    city => city.state,
    { cascade: true },
  )
  cities: City[];
}
