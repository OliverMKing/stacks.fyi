import {MigrationInterface, QueryRunner} from "typeorm";

export class myInit1598724963202 implements MigrationInterface {
    name = 'myInit1598724963202'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "city-state" ("city_id" uuid NOT NULL, "state_id" uuid NOT NULL, CONSTRAINT "PK_ed1fed2ce34e24c66db3c17d7da" PRIMARY KEY ("city_id", "state_id"))`);
        await queryRunner.query(`CREATE TABLE "languages" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "java" integer NOT NULL DEFAULT 0, CONSTRAINT "PK_b517f827ca496b29f4d549c631d" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "frameworks" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "spring" integer NOT NULL DEFAULT 0, CONSTRAINT "PK_23e178ce62668c9ce2036b7a3c2" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "country" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "languagesId" uuid, "frameworksId" uuid, CONSTRAINT "REL_700abdb5d2db295a208a7004e5" UNIQUE ("languagesId"), CONSTRAINT "REL_11460712e02becc189bad27817" UNIQUE ("frameworksId"), CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "state" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "languagesId" uuid, "frameworksId" uuid, "countryId" uuid, CONSTRAINT "REL_5e03de0b781635de192c045204" UNIQUE ("languagesId"), CONSTRAINT "REL_8cc5df453dfd5d3e45c32ca535" UNIQUE ("frameworksId"), CONSTRAINT "PK_549ffd046ebab1336c3a8030a12" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "city" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "languagesId" uuid, "frameworksId" uuid, "stateId" uuid, CONSTRAINT "REL_5963c3284d3b554fa3783b789b" UNIQUE ("languagesId"), CONSTRAINT "REL_137965e7b7818dd5ed8a3f68d7" UNIQUE ("frameworksId"), CONSTRAINT "PK_b222f51ce26f7e5ca86944a6739" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "state-country" ("state_id" uuid NOT NULL, "country_id" uuid NOT NULL, CONSTRAINT "PK_9c53286ad20f5b8b0620f25ea67" PRIMARY KEY ("state_id", "country_id"))`);
        await queryRunner.query(`ALTER TABLE "country" ADD CONSTRAINT "FK_700abdb5d2db295a208a7004e55" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "country" ADD CONSTRAINT "FK_11460712e02becc189bad278179" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "state" ADD CONSTRAINT "FK_5e03de0b781635de192c0452044" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "state" ADD CONSTRAINT "FK_8cc5df453dfd5d3e45c32ca5351" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "state" ADD CONSTRAINT "FK_e81c86ceadca8731f5fca8e06f5" FOREIGN KEY ("countryId") REFERENCES "country"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "city" ADD CONSTRAINT "FK_5963c3284d3b554fa3783b789b2" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "city" ADD CONSTRAINT "FK_137965e7b7818dd5ed8a3f68d7a" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "city" ADD CONSTRAINT "FK_e99de556ee56afe72154f3ed04a" FOREIGN KEY ("stateId") REFERENCES "state"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "city" DROP CONSTRAINT "FK_e99de556ee56afe72154f3ed04a"`);
        await queryRunner.query(`ALTER TABLE "city" DROP CONSTRAINT "FK_137965e7b7818dd5ed8a3f68d7a"`);
        await queryRunner.query(`ALTER TABLE "city" DROP CONSTRAINT "FK_5963c3284d3b554fa3783b789b2"`);
        await queryRunner.query(`ALTER TABLE "state" DROP CONSTRAINT "FK_e81c86ceadca8731f5fca8e06f5"`);
        await queryRunner.query(`ALTER TABLE "state" DROP CONSTRAINT "FK_8cc5df453dfd5d3e45c32ca5351"`);
        await queryRunner.query(`ALTER TABLE "state" DROP CONSTRAINT "FK_5e03de0b781635de192c0452044"`);
        await queryRunner.query(`ALTER TABLE "country" DROP CONSTRAINT "FK_11460712e02becc189bad278179"`);
        await queryRunner.query(`ALTER TABLE "country" DROP CONSTRAINT "FK_700abdb5d2db295a208a7004e55"`);
        await queryRunner.query(`DROP TABLE "state-country"`);
        await queryRunner.query(`DROP TABLE "city"`);
        await queryRunner.query(`DROP TABLE "state"`);
        await queryRunner.query(`DROP TABLE "country"`);
        await queryRunner.query(`DROP TABLE "frameworks"`);
        await queryRunner.query(`DROP TABLE "languages"`);
        await queryRunner.query(`DROP TABLE "city-state"`);
    }

}
