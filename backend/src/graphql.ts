
/** ------------------------------------------------------
 * THIS FILE WAS AUTOMATICALLY GENERATED (DO NOT MODIFY)
 * -------------------------------------------------------
 */

/* tslint:disable */
/* eslint-disable */
export interface Framework {
    name: string;
    jobListings?: number;
    uniqueCompanies?: number;
}

export interface Language {
    name: string;
    jobListings?: number;
    uniqueCompanies?: number;
}

export interface IQuery {
    languageByLocation(location: string): Language[] | Promise<Language[]>;
    frameworkByLocation(location: string): Framework[] | Promise<Framework[]>;
}
