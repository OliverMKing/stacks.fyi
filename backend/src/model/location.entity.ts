import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  Index,
} from 'typeorm';
import { Languages } from './languages.entity';
import { Frameworks } from './frameworks.entity';

// Follow instructions for validating type
// https://stackoverflow.com/questions/44974594/postgres-enum-in-typeorm#:~:text=0%20alpha%20versions%20of%20TypeORM,enum%20for%20your%20field%20type.
export enum Type {
  Country,
  State,
  City,
}

@Entity({ name: 'location' })
export class Location {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Index()
  @Column({ type: 'varchar', length: 300 })
  name: string;

  @Column('int')
  type: Type;

  @OneToOne(type => Languages, { cascade: true })
  @JoinColumn()
  languages: Languages;

  @OneToOne(type => Frameworks, { cascade: true })
  @JoinColumn()
  frameworks: Frameworks;
}
