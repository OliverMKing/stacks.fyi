import {MigrationInterface, QueryRunner} from "typeorm";

export class myInit1599248686089 implements MigrationInterface {
    name = 'myInit1599248686089'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "city-state" ("city_id" uuid NOT NULL, "state_id" uuid NOT NULL, CONSTRAINT "PK_ed1fed2ce34e24c66db3c17d7da" PRIMARY KEY ("city_id", "state_id"))`);
        await queryRunner.query(`CREATE TABLE "languages" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "Java" integer NOT NULL DEFAULT 0, "JavaScript" integer NOT NULL DEFAULT 0, "Ruby" integer NOT NULL DEFAULT 0, "Python" integer NOT NULL DEFAULT 0, "Cpp" integer NOT NULL DEFAULT 0, "Csharp" integer NOT NULL DEFAULT 0, "Golang" integer NOT NULL DEFAULT 0, "TypeScript" integer NOT NULL DEFAULT 0, "Dart" integer NOT NULL DEFAULT 0, "Haskell" integer NOT NULL DEFAULT 0, "PHP" integer NOT NULL DEFAULT 0, "Swift" integer NOT NULL DEFAULT 0, "Perl" integer NOT NULL DEFAULT 0, "Kotlin" integer NOT NULL DEFAULT 0, "Rust" integer NOT NULL DEFAULT 0, "Scala" integer NOT NULL DEFAULT 0, "Objective-C" integer NOT NULL DEFAULT 0, CONSTRAINT "PK_b517f827ca496b29f4d549c631d" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "frameworks" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "Node.js" integer NOT NULL DEFAULT 0, "React" integer NOT NULL DEFAULT 0, "Rails" integer NOT NULL DEFAULT 0, "Angular" integer NOT NULL DEFAULT 0, "Django" integer NOT NULL DEFAULT 0, "Symfony" integer NOT NULL DEFAULT 0, "Laravel" integer NOT NULL DEFAULT 0, "Spring" integer NOT NULL DEFAULT 0, "Vue" integer NOT NULL DEFAULT 0, "Flask" integer NOT NULL DEFAULT 0, "jQuery" integer NOT NULL DEFAULT 0, "ASP.NET" integer NOT NULL DEFAULT 0, CONSTRAINT "PK_23e178ce62668c9ce2036b7a3c2" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "country" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "languagesId" uuid, "frameworksId" uuid, CONSTRAINT "REL_700abdb5d2db295a208a7004e5" UNIQUE ("languagesId"), CONSTRAINT "REL_11460712e02becc189bad27817" UNIQUE ("frameworksId"), CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE INDEX "IDX_2c5aa339240c0c3ae97fcc9dc4" ON "country" ("name") `);
        await queryRunner.query(`CREATE TABLE "state" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "languagesId" uuid, "frameworksId" uuid, "countryId" uuid, CONSTRAINT "REL_5e03de0b781635de192c045204" UNIQUE ("languagesId"), CONSTRAINT "REL_8cc5df453dfd5d3e45c32ca535" UNIQUE ("frameworksId"), CONSTRAINT "PK_549ffd046ebab1336c3a8030a12" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE INDEX "IDX_b2c4aef5929860729007ac32f6" ON "state" ("name") `);
        await queryRunner.query(`CREATE TABLE "city" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "languagesId" uuid, "frameworksId" uuid, "stateId" uuid, CONSTRAINT "REL_5963c3284d3b554fa3783b789b" UNIQUE ("languagesId"), CONSTRAINT "REL_137965e7b7818dd5ed8a3f68d7" UNIQUE ("frameworksId"), CONSTRAINT "PK_b222f51ce26f7e5ca86944a6739" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE INDEX "IDX_f8c0858628830a35f19efdc0ec" ON "city" ("name") `);
        await queryRunner.query(`CREATE TABLE "location" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "name" character varying(300) NOT NULL, "type" integer NOT NULL, "languagesId" uuid, "frameworksId" uuid, CONSTRAINT "REL_c93d7c751b4f9cfc661f28fe32" UNIQUE ("languagesId"), CONSTRAINT "REL_8952578b297a14c3ec4717e7ec" UNIQUE ("frameworksId"), CONSTRAINT "PK_876d7bdba03c72251ec4c2dc827" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE INDEX "IDX_f0336eb8ccdf8306e270d400cf" ON "location" ("name") `);
        await queryRunner.query(`CREATE TABLE "state-country" ("state_id" uuid NOT NULL, "country_id" uuid NOT NULL, CONSTRAINT "PK_9c53286ad20f5b8b0620f25ea67" PRIMARY KEY ("state_id", "country_id"))`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Node.js"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "ASP.NET"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Objective-C"`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Objective-C" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Node.js" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "ASP.NET" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Nodejs" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "ASPNET" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "ObjectiveC" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "country" ADD CONSTRAINT "FK_700abdb5d2db295a208a7004e55" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "country" ADD CONSTRAINT "FK_11460712e02becc189bad278179" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "state" ADD CONSTRAINT "FK_5e03de0b781635de192c0452044" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "state" ADD CONSTRAINT "FK_8cc5df453dfd5d3e45c32ca5351" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "state" ADD CONSTRAINT "FK_e81c86ceadca8731f5fca8e06f5" FOREIGN KEY ("countryId") REFERENCES "country"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "city" ADD CONSTRAINT "FK_5963c3284d3b554fa3783b789b2" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "city" ADD CONSTRAINT "FK_137965e7b7818dd5ed8a3f68d7a" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "city" ADD CONSTRAINT "FK_e99de556ee56afe72154f3ed04a" FOREIGN KEY ("stateId") REFERENCES "state"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "location" ADD CONSTRAINT "FK_c93d7c751b4f9cfc661f28fe32c" FOREIGN KEY ("languagesId") REFERENCES "languages"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "location" ADD CONSTRAINT "FK_8952578b297a14c3ec4717e7ecf" FOREIGN KEY ("frameworksId") REFERENCES "frameworks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "location" DROP CONSTRAINT "FK_8952578b297a14c3ec4717e7ecf"`);
        await queryRunner.query(`ALTER TABLE "location" DROP CONSTRAINT "FK_c93d7c751b4f9cfc661f28fe32c"`);
        await queryRunner.query(`ALTER TABLE "city" DROP CONSTRAINT "FK_e99de556ee56afe72154f3ed04a"`);
        await queryRunner.query(`ALTER TABLE "city" DROP CONSTRAINT "FK_137965e7b7818dd5ed8a3f68d7a"`);
        await queryRunner.query(`ALTER TABLE "city" DROP CONSTRAINT "FK_5963c3284d3b554fa3783b789b2"`);
        await queryRunner.query(`ALTER TABLE "state" DROP CONSTRAINT "FK_e81c86ceadca8731f5fca8e06f5"`);
        await queryRunner.query(`ALTER TABLE "state" DROP CONSTRAINT "FK_8cc5df453dfd5d3e45c32ca5351"`);
        await queryRunner.query(`ALTER TABLE "state" DROP CONSTRAINT "FK_5e03de0b781635de192c0452044"`);
        await queryRunner.query(`ALTER TABLE "country" DROP CONSTRAINT "FK_11460712e02becc189bad278179"`);
        await queryRunner.query(`ALTER TABLE "country" DROP CONSTRAINT "FK_700abdb5d2db295a208a7004e55"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "ObjectiveC"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "ASPNET"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Nodejs"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "ASP.NET"`);
        await queryRunner.query(`ALTER TABLE "frameworks" DROP COLUMN "Node.js"`);
        await queryRunner.query(`ALTER TABLE "languages" DROP COLUMN "Objective-C"`);
        await queryRunner.query(`ALTER TABLE "languages" ADD "Objective-C" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "ASP.NET" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`ALTER TABLE "frameworks" ADD "Node.js" integer NOT NULL DEFAULT 0`);
        await queryRunner.query(`DROP TABLE "state-country"`);
        await queryRunner.query(`DROP INDEX "IDX_f0336eb8ccdf8306e270d400cf"`);
        await queryRunner.query(`DROP TABLE "location"`);
        await queryRunner.query(`DROP INDEX "IDX_f8c0858628830a35f19efdc0ec"`);
        await queryRunner.query(`DROP TABLE "city"`);
        await queryRunner.query(`DROP INDEX "IDX_b2c4aef5929860729007ac32f6"`);
        await queryRunner.query(`DROP TABLE "state"`);
        await queryRunner.query(`DROP INDEX "IDX_2c5aa339240c0c3ae97fcc9dc4"`);
        await queryRunner.query(`DROP TABLE "country"`);
        await queryRunner.query(`DROP TABLE "frameworks"`);
        await queryRunner.query(`DROP TABLE "languages"`);
        await queryRunner.query(`DROP TABLE "city-state"`);
    }

}
