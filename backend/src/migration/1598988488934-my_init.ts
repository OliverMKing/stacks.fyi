import {MigrationInterface, QueryRunner} from "typeorm";

export class myInit1598988488934 implements MigrationInterface {
    name = 'myInit1598988488934'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "rails" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "javascript" integer NOT NULL DEFAULT 0`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "javascript"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "rails"`);
    }

}
