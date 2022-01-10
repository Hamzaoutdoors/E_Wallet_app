<p align="center">
  <a href="https://www.microverse.org/">
    <img alt="Microverse" src="https://img.shields.io/badge/-Microverse-blueviolet?style=flat-square">
  </a>
  <a href="https://github.com/Hamzaoutdoors/E_Wallet_app/blob/dev/LICENSE.md">
    <img alt="MIT Licensed" src="https://img.shields.io/github/license/Hamzaoutdoors/to-do-list?style=flat-square">
  </a>
  <a href="https://github.com/Hamzaoutdoors/E_Wallet_app">
    <img alt="GitHub last commit (branch)" src="https://img.shields.io/github/last-commit/Hamzaoutdoors/E_Wallet_app/dev?color=blue&style=flat-square">
  </a>
  <a href="https://github.com/Hamzaoutdoors/E_Wallet_app">
    <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/Hamzaoutdoors/E_Wallet_app?color=green&label=%E2%98%85%20stars%20&style=flat-square">
  </a>
  <a href="https://github.com/Hamzaoutdoors">
    <img alt="GitHub followers" src="https://img.shields.io/github/followers/Hamzaoutdoors?color=yellow&logo=github&style=flat-square">
  </a>
</p>

<div align="center">
 <img alt="Microverse" src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white"> <img src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white"/>   <img src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/> <img src="https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white"/> <img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white"/></div>
 
   </br>
 <div align="center">
  <em align="center" style>"
we are gathered here today to get through this thing called LIFE."</em><strong> - Dearly beloved</strong>
  </div>
   </br>

# e-wallet app

A **Budget app** is a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

Everything will be based on the ERD class diagram presented below. 
<img width="374" alt="erd_diagram" src="https://user-images.githubusercontent.com/80895497/148834638-b49c8179-57dd-4bae-9440-7223b33c9df4.png">

</br>
 <div align="center">
    <img alt="gif" src="https://user-images.githubusercontent.com/80895497/148834638-b49c8179-57dd-4bae-9440-7223b33c9df4.png)"  />
    <p>Entity Relationship Diagram (ERD) of Blog App project</p>
</div>

## Getting Started
To run the project locally, copy up and running follow these simple example steps :

 - First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
 - clone the project with the following command line : 
```
$ git clone git@github.com:Hamzaoutdoors/BLog_app.git
```
 - Then go to the right folder 
```
$ cd Blog_app
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```
Run this command line to add some dummy data
```
$ rails db:seed
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

 ## Run tests :

 To run Request specs locally you need just to run this following command in your terminal :

 ```
 $ bundle exec rspec
 ```
 </br>
 <div align="center">
    <kbd>
    <img alt="gif" src="https://user-images.githubusercontent.com/80895497/144337923-8f5660a0-6e8a-4ba4-99a5-c6ab42bb3b73.png" width=90% />
    <p>16 Request Specs passed</p>
       </kbd>
</div>

## Built With

 - Ruby on RAils  <img src="https://cdn.emojidex.com/emoji/seal/Ruby.png" width=15px>
 - PostgreSQL <img src="https://user-images.githubusercontent.com/80895497/142954032-f7072df9-3586-48f9-a9e0-7fdd284eb833.png" width=15px>
 
</br>

## Authors

👤 **Ellaouzi Hamza**

- GitHub: [hamzaoutdoors](https://github.com/Hamzaoutdoors)
- LinkedIn : [Hamza Ellaouzi](https://www.linkedin.com/in/hamza-ellaouzi-137a45b8/)
- Twitter: [Hamza Ellaouzi](https://twitter.com/EllaouziHamza)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Hamzaoutdoors/E_Wallet_app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Inspiration 💘
- Microverse program ⚡
- My standup team 😍
- My family's support 🙌
- MicroBros 😜

## 📝 License

This project is [MIT](https://github.com/Hamzaoutdoors/E_Wallet_app/blob/dev/LICENSE.md) licensed.

<!-- rails generate migration CreatePosts author_id:bigint title:string text:text comments_counter:integer likes_counter:integer -->

<!-- rails generate migration CreateUsers name:string photo:string bio:text posts_counter:integer  -->

<!-- rails generate migration CreateCommetns author_id:bigint post_id:bigint text:text  -->

<!-- rails generate migration CreateLikes author_id:bigint post_id:bigint-->

<!-- rails db:migrate:redo STEP=3 -->
