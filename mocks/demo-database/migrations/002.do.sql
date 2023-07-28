CREATE TABLE public.categories(
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" text NOT NULL,
  slug text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp,
  CONSTRAINT categories_pkey PRIMARY KEY(id),
  CONSTRAINT unique_name UNIQUE("name")
);

  CREATE UNIQUE INDEX categories_slug_idx ON public.categories(slug);

CREATE TABLE public.course_categories(
  course_id uuid NOT NULL,
  category_id uuid NOT NULL,
  url_path text,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp,
  CONSTRAINT course_categories_pkey PRIMARY KEY(course_id, category_id)
);

ALTER TABLE public.course_categories
  ADD CONSTRAINT course_categories_course_id_fkey
    FOREIGN KEY (course_id) REFERENCES public.courses (id) ON DELETE Cascade
      ON UPDATE Cascade;

ALTER TABLE public.course_categories
  ADD CONSTRAINT course_categories_category_id_fkey
    FOREIGN KEY (category_id) REFERENCES public.categories (id) ON DELETE Restrict
      ON UPDATE Cascade;
