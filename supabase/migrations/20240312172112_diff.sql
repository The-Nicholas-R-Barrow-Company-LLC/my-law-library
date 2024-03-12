create table "public"."authorizations" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "user_id" uuid not null,
    "organization_id" uuid not null,
    "uid" text not null generated always as ((((user_id)::text || ':'::text) || (organization_id)::text)) stored
);


alter table "public"."authorizations" enable row level security;

CREATE UNIQUE INDEX authorizations_pkey ON public.authorizations USING btree (id, uid);

CREATE UNIQUE INDEX authorizations_uid_key ON public.authorizations USING btree (uid);

alter table "public"."authorizations" add constraint "authorizations_pkey" PRIMARY KEY using index "authorizations_pkey";

alter table "public"."authorizations" add constraint "authorizations_organization_id_fkey" FOREIGN KEY (organization_id) REFERENCES organizations(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."authorizations" validate constraint "authorizations_organization_id_fkey";

alter table "public"."authorizations" add constraint "authorizations_uid_key" UNIQUE using index "authorizations_uid_key";

alter table "public"."authorizations" add constraint "authorizations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."authorizations" validate constraint "authorizations_user_id_fkey";