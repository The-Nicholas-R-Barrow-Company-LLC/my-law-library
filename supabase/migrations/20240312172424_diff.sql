alter table "public"."authorizations" add column "type" authorization_type not null default 'VIEWER'::authorization_type;


