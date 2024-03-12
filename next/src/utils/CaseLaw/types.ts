import * as _data from "./JurisdictionsMetadata.json";

type Reporter = {
  id: number;
  full_name: string;
  short_name: string;
  start_year: number;
  end_year: number;
  harvard_hollis_id: string[];
  slug: string;
};

type Jurisdiction = {
  id: number;
  slug: string;
  name: string;
  name_long: string;
  reporters: Reporter[];
  case_count: number;
  volume_count: number;
  reporter_count: number;
  page_count: number;
};

export type { Jurisdiction, Reporter };

export const data: Jurisdiction[] = _data as Jurisdiction[];