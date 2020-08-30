import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  ManyToOne,
  Index,
} from 'typeorm';
import { Languages } from './languages.entity';
import { Frameworks } from './frameworks.entity';
import { State } from './state.entity';

@Entity({ name: 'city' })
export class City {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Index()
  @Column({ type: 'varchar', length: 300 })
  name: string;

  @OneToOne(type => Languages, { cascade: true })
  @JoinColumn()
  languages: Languages;

  @OneToOne(type => Frameworks, { cascade: true })
  @JoinColumn()
  frameworks: Frameworks;

  @ManyToOne(
    type => State,
    state => state.cities,
  )
  state: State;
}
