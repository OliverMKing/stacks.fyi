import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  OneToMany,
} from 'typeorm';
import { Languages } from './languages.entity';
import { Frameworks } from './frameworks.entity';
import { State } from './state.entity';

@Entity({ name: 'country' })
export class Country {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'varchar', length: 300 })
  name: string;

  @OneToOne(type => Languages)
  @JoinColumn()
  languages: Languages;

  @OneToOne(type => Frameworks)
  @JoinColumn()
  frameworks: Frameworks;

  @OneToMany(
    type => State,
    state => state.country,
  )
  states: State[];
}
