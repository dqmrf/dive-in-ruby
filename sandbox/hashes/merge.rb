options = { name: 'Misha' }

defaults = {
  name: 'Michael',
  age: 20,
  iq: 70
}

options = defaults.merge(options)

p options
