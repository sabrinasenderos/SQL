ALTER TABLE people8
ADD surname varchar (150);

ALTER TABLE people8
RENAME COLUMN surname TO description;

ALTER TABLE people8
MODIFY COLUMN description varchar (250);

ALTER TABLE people8
DROP COLUMN description;