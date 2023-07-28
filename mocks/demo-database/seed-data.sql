-- -------------------------------------------------------------
-- TablePlus 5.3.8(500)
--
-- https://tableplus.com/
--
-- Database: platformatic-demo-runtime
-- Generation Time: 2023-07-22 05:07:03.2190
-- -------------------------------------------------------------

INSERT INTO "public"."courses" ("id", "title", "description", "status", "slug", "created_at", "updated_at") VALUES
('01d2404e-c56b-4b94-a048-7d40a3231eed', 'Intermediate Training', 'Vitae aliquet nec ullamcorper sit amet. Vitae aliquet nec ullamcorper sit amet risus nullam eget.', 'active', 'intermediate-training', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087'),
('47ceb280-6ae7-4850-a805-2911645e4f34', 'Basic Home Obedience', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis. Vitae aliquet nec ullamcorper sit amet risus.', 'active', 'basic-home-obedience', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087'),
('ac3edab5-78c6-445c-8fa1-71d4e381ee55', 'Puppy Classes', 'Vitae aliquet nec ullamcorper sit amet risus nullam. Sit amet risus nullam eget felis semper quis.', 'active', 'puppy-classes', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087');

INSERT INTO "public"."course_items" ("id", "title", "description", "unit_price", "slug", "created_at", "updated_at", "course_id", "status") VALUES
('0ad17265-1255-4404-a14a-1493782b8e3b', 'Puppy 1', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 15000, 'puppy-1', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', 'ac3edab5-78c6-445c-8fa1-71d4e381ee55', 'active'),
('86e20b0c-d20f-4954-8dd9-60b9aa1bf6cc', 'Basic Home Obedience 3', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 35000, 'basic-home-obedience-3', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', '47ceb280-6ae7-4850-a805-2911645e4f34', 'active'),
('98f07be6-c166-4915-8e0e-3329528c1ee4', 'Intermediate 2', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 25000, 'intermediate-2', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', '01d2404e-c56b-4b94-a048-7d40a3231eed', 'active'),
('c0db738e-91c5-41fe-a951-15721dec8a2a', 'Basic Home Obedience 2', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 17000, 'basic-home-obedience-2', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', '47ceb280-6ae7-4850-a805-2911645e4f34', 'active'),
('c1adf413-1847-4009-91b5-15c8e659eec6', 'Intermediate 4', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 37500, 'intermediate-4', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', '01d2404e-c56b-4b94-a048-7d40a3231eed', 'active'),
('c732c9d4-ccc7-4e7c-b331-6b009eb207b9', 'Puppy 2', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 25000, 'basic-home-obedience-1', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', 'ac3edab5-78c6-445c-8fa1-71d4e381ee55', 'active'),
('e1188f6c-225c-483c-93ca-6a69847c38f3', 'Intermediate 3', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 34500, 'intermediate-3', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', '01d2404e-c56b-4b94-a048-7d40a3231eed', 'active'),
('eb81e4eb-d859-4147-84de-5c271df15689', 'Intermediate 1', 'Vitae aliquet nec ullamcorper sit amet risus nullam eget felis semper quis.', 17000, 'intermediate-1', '2023-07-04 07:10:34.087', '2023-07-04 07:10:34.087', '01d2404e-c56b-4b94-a048-7d40a3231eed', 'active');


INSERT INTO "public"."categories" ("id", "name", "slug", "created_at", "updated_at") VALUES
('02cf37c3-3b37-4214-8300-1f5b8c686542', 'Intermediate Training', 'intermediate-training', '2023-07-04 07:30:34.087', '2023-07-04 07:40:34.087'),
('0eea0a3e-bb45-4420-adc6-7c434279fbb8', 'Agility Training', 'agility-training', '2023-07-04 07:30:34.087', '2023-07-04 07:40:38.087'),
('a89ece08-ab19-424a-8e6d-9872a6297b45', 'Puppy Obedience', 'puppy-obedience', '2023-07-04 07:30:34.087', '2023-07-04 07:40:40.087'),
('e1f58730-5aab-463d-a7cd-38d8ec7a4e7d', 'Dog Sports', 'dog-sports', '2023-07-04 07:30:34.087', '2023-07-04 07:40:36.087');

INSERT INTO "public"."course_categories" ("course_id", "category_id", "url_path", "created_at", "updated_at") VALUES
('01d2404e-c56b-4b94-a048-7d40a3231eed', '02cf37c3-3b37-4214-8300-1f5b8c686542', 'http://example.com/courses/intermediate-training', '2023-07-22 09:57:11.798091', '2023-07-22 09:57:11.798091'),
('01d2404e-c56b-4b94-a048-7d40a3231eed', 'e1f58730-5aab-463d-a7cd-38d8ec7a4e7d', 'http://example.com/courses/intermediate-training', '2023-07-22 10:00:24.590922', '2023-07-22 10:00:24.590922'),
('47ceb280-6ae7-4850-a805-2911645e4f34', 'a89ece08-ab19-424a-8e6d-9872a6297b45', 'http://example.com/courses/obedience-training', '2023-07-22 09:58:32.698012', '2023-07-22 09:58:32.698012'),
('ac3edab5-78c6-445c-8fa1-71d4e381ee55', 'a89ece08-ab19-424a-8e6d-9872a6297b45', 'http://example.com/courses/puppy-training', '2023-07-22 09:54:35.565783', '2023-07-22 09:54:35.565783');
