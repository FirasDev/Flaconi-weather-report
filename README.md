# flaconi_weather_report

A Flaconi coding assignment

## Intro

Develop a Flutter application that displays weather information for a given city using 
the REST API https://openweathermap.org/api


## Acceptance Criteria

● It’s done when loading indicator is displayed when fetching the data

● It’s done when weather list item contains the day of the week abbreviation, weather condition 
image

● It’s done when weather details contain the day of the week, weather condition name and image, 
current temperature, humidity, pressure, and wind.

● It’s done when selecting a whether list item updates the details.

● It’s done when weather information can be refreshed with pull to refresh gesture.

● It’s done when an error screen with a retry button is shown when fetching the data fails. 

## Extra points

● Supporting horizontal and vertical layouts, 
● Changing the temperature’s unit (C/F).

## App Structure

```
├── app
├── features
│   ├── weather
│   └── ...
```

## Running Code Generation

To run code generation

```sh
$ dart run build_runner build -d
```

## Api Configuration
To run the api add a .env file in root with 1 parameter
```
OPEN_WEATHER_MAP_ID=API_KEY_HERE
```