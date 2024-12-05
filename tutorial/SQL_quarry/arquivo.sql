BEGIN;
--
-- Create model Question
--
CREATE TABLE "pulls_question" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question_text" varchar(200) NOT NULL, "pub_date" datetime NOT NULL);
--
-- Create model Choice
--
CREATE TABLE "pulls_choice" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "choice_text" varchar(200) NOT NULL, "votes" integer NOT NULL, "question_id" bigint NOT NULL REFERENCES "pulls_question" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE INDEX "pulls_choice_question_id_a6f87759" ON "pulls_choice" ("question_id");
COMMIT;