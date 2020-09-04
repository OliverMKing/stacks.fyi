import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity({ name: 'languages' })
export class Languages {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'integer', default: 0 })
  Java: number = 0;

  @Column({ type: 'integer', default: 0 })
  JavaScript: number = 0;
  @Column({ type: 'integer', default: 0 })
  Ruby: number = 0;
  @Column({ type: 'integer', default: 0 })
  Python: number = 0;
  @Column({ type: 'integer', default: 0 })
  Cpp: number = 0;
  @Column({ type: 'integer', default: 0 })
  Csharp: number = 0;
  @Column({ type: 'integer', default: 0 })
  Golang: number = 0;
  @Column({ type: 'integer', default: 0 })
  TypeScript: number = 0;
  @Column({ type: 'integer', default: 0 })
  Dart: number = 0;
  @Column({ type: 'integer', default: 0 })
  Haskell: number = 0;
  @Column({ type: 'integer', default: 0 })
  PHP: number = 0;
  @Column({ type: 'integer', default: 0 })
  Swift: number = 0;
  @Column({ type: 'integer', default: 0 })
  Perl: number = 0;
  @Column({ type: 'integer', default: 0 })
  Kotlin: number = 0;
  @Column({ type: 'integer', default: 0 })
  Rust: number = 0;
  @Column({ type: 'integer', default: 0 })
  Scala: number = 0;
  @Column({ type: 'integer', default: 0 })
  ObjectiveC: number = 0;

  // Put other languages here
}
