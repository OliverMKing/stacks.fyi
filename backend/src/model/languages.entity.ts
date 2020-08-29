import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity({ name: 'languages' })
export class Languages {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'integer', default: 0 })
  java: number;

  // Put other languages here
}
