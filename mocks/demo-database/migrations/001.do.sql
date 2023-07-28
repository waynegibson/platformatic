CREATE TABLE public.course_items(
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  title text NOT NULL,
  "description" text NOT NULL,
  unit_price integer NOT NULL,
  "status" text NOT NULL,
  slug text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp,
  course_id uuid NOT NULL,
  CONSTRAINT course_items_pkey PRIMARY KEY(id)
);

  CREATE UNIQUE INDEX course_items_slug_idx ON public.course_items(slug);
  
CREATE TABLE public.courses(
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  title text NOT NULL,
  "description" text NOT NULL,
  "status" text NOT NULL,
  slug text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp,
  CONSTRAINT course_pkey PRIMARY KEY(id)
);

  CREATE UNIQUE INDEX courses_slug_idx ON public.courses(slug);
  
ALTER TABLE public.course_items
  ADD CONSTRAINT course_items_course_id_fkey
    FOREIGN KEY (course_id) REFERENCES public.courses (id) ON DELETE Cascade
      ON UPDATE Cascade;
