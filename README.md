# stacks.fyi

You can view the application live at [stacks.fyi](https://stacks.fyi/).

## Running the app
Make sure you have Node version 13 or above. Use [Nodist](https://github.com/nullivex/nodist) or [NVM](https://github.com/nvm-sh/nvm) to change Node version. Be sure to also have [Docker](https://docs.docker.com/). On some versions of Windows you may need [Docker toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/). Follow the instructions in the .env_example file in the backend folder to create a .env.
In order to seed the database, install [indeed-job-frequency](https://www.npmjs.com/package/indeed-job-frequency) and replace the import statement with indeed-scraper
Ensure you have all dependencies installed. Run `yarn` at the root level and in the frontend and backend folders.

Do the following to set up the database:
- Run `yarn db`
- Run `yarn pretypeorm`. 
- Run `yarn typeorm:run`
- Run `yarn db:seed`

Run `yarn dev` to start the backend and frontend. The frontend is on port 3000 and the backend is on 3001.
