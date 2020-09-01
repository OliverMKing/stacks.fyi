import {MigrationInterface, QueryRunner} from "typeorm";

export class myInit1598989709773 implements MigrationInterface {
    name = 'myInit1598989709773'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "rails"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "javascript"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "ruby"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Python"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "C++"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "spring"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "java"`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "spring" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "java" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Node.js" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "React" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Rails" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Angular" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Django" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Symfony" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Laravel" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Spring" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Vue" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Flask" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "jQuery" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "ASP.NET" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Java" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "JavaScript" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Ruby" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Python" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "C++" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "C#" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Golang" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "TypeScript" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Dart" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Haskell" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "PHP" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Swift" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Perl" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Kotlin" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Rust" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Scala" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Objective-C" integer NOT NULL DEFAULT 0`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Objective-C"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Scala"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Rust"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Kotlin"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Perl"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Swift"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "PHP"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Haskell"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Dart"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "TypeScript"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Golang"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "C#"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "C++"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Python"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Ruby"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "JavaScript"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Java"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "ASP.NET"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "jQuery"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Flask"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Vue"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Spring"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Laravel"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Symfony"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Django"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Angular"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Rails"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "React"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Node.js"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "java"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "spring"`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "java" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "spring" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "C++" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Python" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "ruby" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "javascript" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "rails" integer NOT NULL DEFAULT 0`);
    }

}
