import type {Jurisdiction, Reporter} from "./types";
import {data} from "./types";

export class CaseLaw {

  public static getJurisdictions = (): Jurisdiction[] => data;

  public static getJurisdictionByID = (id: number): Jurisdiction | undefined => data.find(jurisdiction => jurisdiction.id === id);

  public static getJurisdictionBySlug = (slug: string): Jurisdiction | undefined => data.find(jurisdiction => jurisdiction.slug === slug);

}