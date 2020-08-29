import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity({ name: 'frameworks' })
export class Frameworks {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'integer', default: 0 })
  spring: number;

  // Put other frameworks here
}
