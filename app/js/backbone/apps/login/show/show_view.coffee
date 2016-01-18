@App.module "LoginApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Login extends App.Views.ItemView
    template: "login/show/login"

    ui:
      login: "[data-login]"
      retry: "[data-retry]"

    triggers:
      "click @ui.login" : "login:clicked"

    modelEvents:
      "change:loggingIn" : "render"
      "change:error"     : "render"

    onRender: ->
      loggingIn = @model.get("loggingIn")
      @ui.login.toggleClass("disabled", loggingIn).attr("disabled", loggingIn)