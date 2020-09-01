import {MigrationInterface, QueryRunner} from "typeorm";

export class myInit1598988916565 implements MigrationInterface {
    name = 'myInit1598988916565'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "rails"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "javascript"`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "rails" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "javascript" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "ruby" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Python" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "C++" integer NOT NULL DEFAULT 0`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "C++"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Python"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "ruby"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "javascript"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "rails"`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "javascript" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "rails" integer NOT NULL DEFAULT 0`);
    }

}
