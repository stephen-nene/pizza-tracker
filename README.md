# PIZZA - TRACKER

## Description
- The Pizza Tracker API is designed to track the different types of pizzas offered by various restaurants. The application has three main resources - `Restaurant`, `Pizza`, and `RestaurantPizza`. The `Restaurant` model represents a restaurant that offers `pizzas`, while the Pizza model represents the different types of pizzas that can be ordered from restaurants. The `RestaurantPizza` model acts as a join table between the `Restaurant` and `Pizza` models, allowing for the association between the two.

- This API will allow users to perform various **CRUD** operations such as **adding** new `restaurants` and `pizzas`, **updating** and **deleting** existing `restaurants` and `pizzas`, and **retrieving** information on specific `restaurants` and `pizzas`. However, this API is not intended to handle any payment processing or any other advanced features that may be required for a full-fledged e-commerce platform.
# Technologies used

  ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)  ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)  ![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white) ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

  ![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)  ![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)  ![SQLite](https://img.shields.io/badge/sqlite3-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)

  ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)  ![json](https://img.shields.io/badge/json-5E5C5C?style=for-the-badge&logo=json&logoColor=white)


  ![Stack Overflow](https://img.shields.io/badge/-Stackoverflow-FE7A16?style=for-the-badge&logo=stack-overflow&logoColor=white)


# Get-started
1. First **fork** this repository to your github account.
2. **Git clone** to your local machine
    ```bash
        git clone https://github.com/stephen-nene/pizza-tracker.git
    ```
3. Run bundle install and bundle update to install necessary dependencies.
    ```sh
    bundle install
    bundle update
    ```
 <!-- - If the above commands bring an error try appending bundle exec.
    ```sh
        bundle exec -->
4. Run any pending migrations and seed if necessary
    ```ruby
    rails db:migrate db:seed
    ```
5. Start the server
    ```ruby
    rails s
    ```
6. Navigate to your **[localhost](http://localhost:3000/)** and try out the endpoints


# Routes

### A. <u>pizza</u>

1. ` GET /pizzas`
2. `GET /pizzas/:id`
3. `POST /pizzas`
4. `DELETE /pizzas/:id`


### B. <u>Restaurant</u>
1. `GET /restaurants`
2. `GET /restaurants/:id`
4. `POST /restaurants`
3. `DELETE /restaurants/:id`



### C. <u>RestaurantPizza</u>
1. `GET /restaurants/:id/pizzas`
2. `GET /restaurants/:id/pizzas/:id`
3. `POST /restaurant_pizzas`
4. `DELETE /restaurant_pizzas`

# Contributor
  - [ ![BuiltBy](https://img.shields.io/badge/Built-By-GE7A10?style=flat-square&logo=BuzzFeed&logoColor=white)](https://github.com/stephen-nene)
   **[stevo-nene](https://github.com/stephen-nene)**

# License
 - **NeneCorp** <span>&copy;</span>
