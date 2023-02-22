
# flutter_heroes_2023_speech

This is a demo project that gave the idea of "Full stack development with Flutter using Dart Frog" speech for [Flutter Heroes 2023](https://flutterheroes.com/2023/).

## Domain of the project:  
To give to the members of Mobile & Emerging Devices, an area of [NTT DATA Italy](https://it.nttdata.com/), an application that allow to track the area's devices and their usage.  
In particular for Flutter Heroes 2023, a fake authentication mode has been built to allow to use the demo project.
In addition, the Mongo DB instance queried by the backend project is a sandbox available for those who would like to try out this project.

## Authentication:
The demo project's dbe does not do any check on the credentials. You can access using any string per username and password.  
For example:  
Username: Goofy  
Password: Mickey

### Admin user
If you would like to have access to all the functionality, like add, edit or delete a device, you can use this credentials:  
Username: `Caffo17`
Password: `any string`
This credential is acknowledged as an admin user.  
Check out the swagger to add new admins. Only an admin can add a new admin or promote a normal user to admin.

## Project structure
This project contains 3 main folders:
- `dbe`: contains the backend part of the project made using [dart_frog](https://dartfrog.vgv.dev/)
- `fe`: contains the mobile application made in [Flutter](https://flutter.dev/)
- `packages`: all the packages used by dbe and fe project

## Swagger
The swagger of the APIs created with Dart Frog is available inside the folder `dbe/public`  
You can open it with [Swagger editor](https://editor.swagger.io) or following these instructions:
- Move to the `dbe` folder
- Run the server using the `dart_frog dev` command
- Open you browser
- Navigate to `http://localhost:8080`

## Packages
A little description of all the package contained into the `packages` folder:
- `commons_ntt_device_dbe`: contains all the classes and utilities shared between the dbe packages
- `dependencies`: contains all the dependencies used through the dbe packages. the aim of this package is having a single entry point where define the version of all the external plugins and avoiding version conflicts
- `devices_data_source`: contains a generic interface for managing devices CRUD operations
- `flutter_heroes_users_data_source`: contains the implementation of `users_data_source`. It implements a fake authentication as described in ["Authentication"](#authentication) section
- `mongo_db_devices_data_source`: contains the implementation of `devices_data_source`. It communicates with a Mongo DB instance where devices are stored
- `ntt_cubit_arch`: contains the base structure for the fe project
- `ntt_device_models`: contains the model shared between fe and dbe
- `users_data_source`: contains a generic interface for managing user authentication