CanvasAdapter = require 'adapters/Canvas'
StageView = require 'views/Stage'
config = require 'config'

canvasAdapter = new CanvasAdapter config.canvasAdapterOptions

stageView = new StageView canvasAdapter.el, 'scenes/Example'

sceneLocation = 'scenes/Example'

options = {}

EventBus.dispatch '!scene:load', this, {sceneLocation, options}