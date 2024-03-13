# CardFortress-Cross-Platform
Credit Card fortress app built using flutter.

### _Yes, this is my first flutter app_ ...

This is a variant of my existing project CardFortress which is a native iOS app. The idea is to build pretty much the same app using flutter.

## Architecture
I'm using a modular aproach to make the project easy to maintain, and easy to test. I'm implementing each layer of the app using flutter packages, for the presentation layer I'm using BLOC.

### Layers
- Domain Layer = Entities + Use Cases + Repositories Interfaces
- Data Repositories Layer = Repositories Implementations + API (Network) + Persistence DB
- Presentation Layer (BLOC) = BLOC + Widgets/ Views

### Dependency Direction

![image](https://github.com/RobertiOS/CardFortress-Cross-Platform/assets/93169254/2461432f-672a-4066-8510-6e1d5db815e9)


## Dependencies
- Firebase: to manage users and local and remote storage
- Get_it: Di.

## Instructions

- Clone this repo
- run flutter pub get on the root of the project.
- Create an account (don't use real credentials or I will steal your data)
- Enjoy the app.
