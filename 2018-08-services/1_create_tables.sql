CREATE TABLE services_drupal (
    node_id INT NOT NULL,
    uuid VARCHAR(255),
    title VARCHAR(255),
    path VARCHAR(255),
    short_description TEXT,
    PRIMARY KEY (node_id)
);

CREATE TABLE services_superset (
    node_id INT NOT NULL,
    path VARCHAR(255),
    unique_pageviews INT,
    content_quality_score FLOAT,
    content_type VARCHAR(20),
    findability_score FLOAT,
    outcome_score FLOAT,
    overall_score FLOAT,
    user_satisfaction_score FLOAT,
    PRIMARY KEY (node_id)
);
