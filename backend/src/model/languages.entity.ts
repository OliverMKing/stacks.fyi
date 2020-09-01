import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity({ name: 'languages' })
export class Languages {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'integer', default: 0 })
  Java: number;

  @Column({ type: 'integer', default: 0 })
  JavaScript: number;
  @Column({ type: 'integer', default: 0 })
  Ruby: number;
  @Column({ type: 'integer', default: 0 })
  Python: number;
  @Column({ type: 'integer', default: 0 })
  "C++": number;
  @Column({ type: 'integer', default: 0 })
  'C#': number;
  @Column({ type: 'integer', default: 0 })
  Golang: number;
  @Column({ type: 'integer', default: 0 })
  TypeScript: number;
  @Column({ type: 'integer', default: 0 })
  Dart: number;
  @Column({ type: 'integer', default: 0 })
  Haskell: number;
  @Column({ type: 'integer', default: 0 })
  PHP: number;
  @Column({ type: 'integer', default: 0 })
  Swift: number;
  @Column({ type: 'integer', default: 0 })
  Perl: number;
  @Column({ type: 'integer', default: 0 })
  Kotlin: number;
  @Column({ type: 'integer', default: 0 })
  Rust: number;
  @Column({ type: 'integer', default: 0 })
  Scala: number;
  @Column({ type: 'integer', default: 0 })
  'Objective-C': number;




  // Put other languages here
}
