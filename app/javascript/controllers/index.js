// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import BookingsController from "./bookings_controller"
application.register("bookings", BookingsController)

import DateController from "./date_controller"
application.register("date", DateController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import NavbarController from "./navbar_controller"
application.register("navbar", NavbarController)

import TypedJsController from "./typed_js_controller"
application.register("typed-js", TypedJsController)
