import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity({ name: 'frameworks' })
export class Frameworks {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'integer', default: 0 })
  'Node.js': number;
  @Column({ type: 'integer', default: 0 })
  React: number;
  @Column({ type: 'integer', default: 0 })
  Rails: number;
  @Column({ type: 'integer', default: 0 })
  Angular: number;
  @Column({ type: 'integer', default: 0 })
  Django: number;
  @Column({ type: 'integer', default: 0 })
  Symfony: number;
  @Column({ type: 'integer', default: 0 })
  Laravel: number;
  @Column({ type: 'integer', default: 0 })
  Spring: number;
  @Column({ type: 'integer', default: 0 })
  Vue: number;
  @Column({ type: 'integer', default: 0 })
  Flask: number;
  @Column({ type: 'integer', default: 0 })
  jQuery: number;
  @Column({ type: 'integer', default: 0 })
  'ASP.NET': number;




  // Put other frameworks here
}
