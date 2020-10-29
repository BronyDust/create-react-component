# Create React Components easily
v. 0.1

Command prompt utility that automatically creates boilerplate React typescript component.

## How to use
1. Take **exe binary** from [here](/dist/crc.exe) and save it a directory you want.
2. Add this directory to Window PATH variable.
3. Call `crc` from cmd inside your project.

## Features
`crc` has two optional arguments. By default it asks you name of a component and saves it in ./src/components folder.

You can type **name of a component** as a first argument: `crc ComponentName`.

Second parameter is a **folder name**. Type it if you want to create component in other directory than `./src/components/`: `crc ComponentName views` saves ComponentName into ./src/views/

Utility asks you do you want to create styles. It means that **crc** creates ComponentName.scss inside component folder.

## ToDo
- [ ] JS template
- [ ] css