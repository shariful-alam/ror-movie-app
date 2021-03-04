# Movie App

## Installation
Follow these easy steps to run the project locally:
### Clone the repository
```
git clone git@github.com:shariful-alam/ror-movie-app.git
```

### Create database.yml file
Copy the sample database.yml file and edit the database configuration as required:
```
cp config/database.yml.sample config/database.yml
```
After that edit the database configuration as required.

### Install the app
Now run the following commands to run the project locally:
```
bundle install
rails db:create
rails db:migrate
yarn
rails s
```

And now you can visit the site with the URL http://localhost:3000

### Live Demo
The project is hosted on Heroku Cloud Server. The url to access the live demo is:
[RoRMovieApp](https://ror-movie-app.herokuapp.com/)

## API Documentation

### Check User
Check if user exists in the database.

* **URL:** `/api/users`

* **Method:**  `POST`

* **Required Fields**

  `username = [string]`

* **Payload**

  ```json
  {
      "user": {
          "username": "test_user"
      }
  }
  ```


* **Success Response:**

  * **Code:** `201 CREATED`

  * **Content:**

  ```json
  {
    "status": 201,
    "message": "New user has been created."
  }
  ```

### All Movies
Get the list of all the movies in the database

* **URL:** `/api/movies`

* **Method:**  `GET`

* **Success Response:**

  * **Code:** `200 OK`

  * **Content:**

  ```json
  [
      {
          "id": 3,
          "name": "Kibo Hurley",
          "year": "1988",
          "director": "Nostrud veniam cons",
          "main_star": "Facilis quas ullam a",
          "description": "Corrupti alias magn",
          "favorited": 0,
          "genres": [
              "Action",
              "Biography",
              "Comedy",
              "Fantasy",
              "Horror",
              "Musical",
              "Romance",
              "Thriller",
              "War",
              "Western"
          ]
      },
      {
          "id": 2,
          "name": "Natalie Head",
          "year": "1993",
          "director": "Aut consectetur adip",
          "main_star": "Alias velit mollitia",
          "description": "Aute qui voluptatibu",
          "favorited": 1,
          "genres": [
              "Biography",
              "Comedy",
              "Crime",
              "Fantasy",
              "History",
              "Horror",
              "Western"
          ]
      }
  ]
  ```

### Get Movie

Get the details of a specific movie in the database

* **URL** `/api/movies/:id`

* **Method:** `GET`

* **Success Response:**

  * **Code:** `200 OK`

  * **Content:**

    ```json
    {
        "id": 2,
        "name": "Natalie Head",
        "year": "1993",
        "director": "Aut consectetur adip",
        "main_star": "Alias velit mollitia",
        "description": "Aute qui voluptatibu",
        "favorited": 1,
        "genres": [
          "Biography",
          "Comedy",
          "Crime",
          "Fantasy",
          "History",
          "Horror",
          "Western"
        ],
        "favorited_users_count": 1
    }
    ```

### Get Favorite Movie

Get list of favorite movies for a specific user

* **URL** `/api/:username/favorite_movies`

* **Method:** `GET`

* **Success Response:**

    * **Code:** `200 OK`
      
    * **Content:** 

    ```json
    [
        {
            "id": 2,
            "name": "Natalie Head",
            "year": "1993",
            "director": "Aut consectetur adip",
            "main_star": "Alias velit mollitia",
            "description": "Aute qui voluptatibu",
            "favorited": 1,
            "genres": [
              "Biography",
              "Comedy",
              "Crime",
              "Fantasy",
              "History",
              "Horror",
              "Western"
            ]
        }
      ]
    ```


### Set Favorite

Favorite a specific movie (for a specific user)

* **URL:** `/api/movies/:id/set_favorite`

* **Method:**  `POST`

* **Required Fields**

  `username = [string]`

* **Payload**

  ```json
  {
      "user": {
          "username": "test_user"
      }
  }
  ```


* **Success Response:**
       
    * **Code:** `201 CREATED`
       
    * **Content:**
  
  ```json
  {
    "status": 200,
    "message": "Added as favorite movie."
  }
  ```