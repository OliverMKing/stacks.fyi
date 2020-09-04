import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity({ name: 'frameworks' })
export class Frameworks {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'integer', default: 0 })
  Nodejs: number = 0;
  @Column({ type: 'integer', default: 0 })
  React: number = 0;
  @Column({ type: 'integer', default: 0 })
  Rails: number = 0;
  @Column({ type: 'integer', default: 0 })
  Angular: number = 0;
  @Column({ type: 'integer', default: 0 })
  Django: number = 0;
  @Column({ type: 'integer', default: 0 })
  Symfony: number = 0;
  @Column({ type: 'integer', default: 0 })
  Laravel: number = 0;
  @Column({ type: 'integer', default: 0 })
  Spring: number = 0;
  @Column({ type: 'integer', default: 0 })
  Vue: number = 0;
  @Column({ type: 'integer', default: 0 })
  Flask: number = 0;
  @Column({ type: 'integer', default: 0 })
  jQuery: number = 0;
  @Column({ type: 'integer', default: 0 })
  ASPNET: number = 0;

  // Put other frameworks here
}
