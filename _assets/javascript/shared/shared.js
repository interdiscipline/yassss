const YassssShared = {
  init: () => YassssShared.doAThing(),
  doAThing: () => { // eslint-disable-line arrow-body-style
    // placeholder
    return console.log('a thing!') // eslint-disable-line no-console
  },
}

ready(YassssShared.init) // eslint-disable-line no-undef
