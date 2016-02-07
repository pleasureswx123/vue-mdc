utils = require '../utils.coffee'

describe 'Card', ->
  card = null
  emptyCard = null
  before (done) ->
    app.currentComponent = 'card'
    utils.nextTick()
    .then ->
      card = $ '#card'
      emptyCard = $ '#empty-card'
      done()
  it 'exists', ->
    card.should.exist
    card.should.be.visible
  it 'has one title', ->
    title = card.find '.mdl-card__title'
    title.should.have.lengthOf 1
  it 'has one subtitle-text', ->
    title = card.find '.mdl-card__subtitle-text'
    title.should.have.lengthOf 1
  it 'has one supporting-text', ->
    title = card.find '.mdl-card__supporting-text'
    title.should.have.lengthOf 1
  it 'has one media', ->
    title = card.find '.mdl-card__media'
    title.should.have.lengthOf 1
  it 'has one actions', ->
    title = card.find '.mdl-card__actions'
    title.should.have.lengthOf 1
  it 'has one menu', ->
    title = card.find '.mdl-card__menu'
    title.should.have.lengthOf 1

  it 'can have no title', ->
    title = emptyCard.find '.mdl-card__title'
    title.should.have.lengthOf 0
  it 'can have no subtitle-text', ->
    title = emptyCard.find '.mdl-card__subtitle-text'
    title.should.have.lengthOf 0
  it 'can have no supporting-text', ->
    title = emptyCard.find '.mdl-card__supporting-text'
    title.should.have.lengthOf 0
  it 'can have no media', ->
    title = emptyCard.find '.mdl-card__media'
    title.should.have.lengthOf 0
  it 'can have no actions', ->
    title = emptyCard.find '.mdl-card__actions'
    title.should.have.lengthOf 0
  it 'can have no menu', ->
    title = emptyCard.find '.mdl-card__menu'
    title.should.have.lengthOf 0

  it 'has custom title', (done) ->
    vm.title = 'Another Title'
    card.find '.mdl-card__title .mdl-card__title-text'
    .should.not.have.text 'Another Title'
    utils.nextTick()
    .then ->
      card.find '.mdl-card__title .mdl-card__title-text'
      .should.have.text 'Another Title'
      utils.nextTick()
    .then done, done
  it 'has custom subtitle', (done) ->
    vm.subtitle = 'Another subtitle'
    card.find '.mdl-card__subtitle-text'
    .should.not.have.text 'Another subtitle'
    utils.nextTick()
    .then ->
      card.find '.mdl-card__subtitle-text'
      .should.have.text 'Another subtitle'
      utils.nextTick()
    .then done, done
  it 'has custom supporting text', (done) ->
    vm.supportingText = 'some text'
    card.find '.mdl-card__supporting-text'
    .should.not.have.text 'some text'
    utils.nextTick()
    .then ->
      card.find '.mdl-card__supporting-text'
      .should.have.text 'some text'
      utils.nextTick()
    .then done, done
  it 'has custom media', (done) ->
    vm.media = 'http://www.getmdl.io/assets/demos/dog.png'
    card.find '.mdl-card__media img'
    .should.not.have.attr 'src', 'http://www.getmdl.io/assets/demos/dog.png'
    utils.nextTick()
    .then ->
      card.find '.mdl-card__media img'
      .should.have.attr 'src', 'http://www.getmdl.io/assets/demos/dog.png'
      utils.nextTick()
    .then done, done
