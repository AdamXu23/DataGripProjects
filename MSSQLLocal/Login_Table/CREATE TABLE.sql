CREATE TABLE Login_Table (
    User_Name  VARCHAR (20)  NOT NULL,
    Password   VARCHAR (MAX) NOT NULL,
    Competence INT           NOT NULL,
    PRIMARY KEY (User_Name),
    UNIQUE (User_Name)
);