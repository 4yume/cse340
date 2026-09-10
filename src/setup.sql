CREATE TABLE organization(
	organization_id SERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	description TEXT NOT NULL,
	contact_email VARCHAR(255) NOT NULL,
	logo_filename VARCHAR(255) NOT NULL
);

INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', ' A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');


/* project */
CREATE TABLE project (
project_id SERIAL PRIMARY KEY,
organization_id INTEGER NOT NULL,
title VARCHAR(150) NOT NULL,
description TEXT NOT NULL,
location VARCHAR(150) NOT NULL,
date DATE NOT NULL,
FOREIGN KEY (organization_id) REFERENCES organization (organization_id)
);


INSERT INTO project (organization_id, title, description, location, date)
VALUES
-- BrightFuture Builders
(1, 'Community Center Renovation',
 'Help renovate a local community center.',
 'Denver, Colorado', '2026-09-15'),
(1, 'Park Improvement',
 'Help improve and clean a local park.',
 'Austin, Texas', '2026-09-20'),
(1, 'Neighborhood Garden',
 'Help build and maintain a community garden.',
 'Seattle, Washington', '2026-09-25'),
(1, 'Home Repair Project',
 'Help repair homes for local families.',
 'Phoenix, Arizona', '2026-10-03'),
(1, 'Community Building Cleanup',
 'Help clean and improve a community building.',
 'Salt Lake City, Utah', '2026-10-10'),
-- GreenHarvest Growers
(2, 'Community Garden Planting',
 'Plant vegetables in a community garden.',
 'Portland, Oregon', '2026-09-17'),
(2, 'Vegetable Harvest',
 'Help harvest fresh vegetables for the community.',
 'Sacramento, California', '2026-09-24'),
(2, 'Food Education Day',
 'Teach children about growing healthy food.',
 'Denver, Colorado', '2026-10-01'),
(2, 'Garden Cleanup',
 'Help clean and organize the community garden.',
 'Boise, Idaho', '2026-10-08'),
(2, 'Food Donation Project',
 'Prepare fresh vegetables for local food donations.',
 'Dallas, Texas', '2026-10-15'),
-- UnityServe Volunteers
(3, 'Food Distribution',
 'Help distribute food to people in the community.',
 'Chicago, Illinois', '2026-09-18'),
(3, 'Senior Support',
 'Spend time helping local senior citizens.',
 'Boston, Massachusetts', '2026-09-26'),
(3, 'Clothing Donation Drive',
 'Collect and organize clothing donations.',
 'New York, New York', '2026-10-02'),
(3, 'Neighborhood Cleanup',
 'Help clean streets and public areas.',
 'Charlotte, North Carolina', '2026-10-09'),
(3, 'Charity Event Support',
 'Help organize and support a local charity event.',
 'Nashville, Tennessee', '2026-10-16');