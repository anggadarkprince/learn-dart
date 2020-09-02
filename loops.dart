void main() {
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  var profile = {
    'name': 'Angga',
    'username': 'anggaari',
    'password': 'secret',
  };
  profile['email'] = 'me@angga-ari.com';
  var obj = [profile, 13, 14];

  for (var prop in obj) {
    print(prop);
  }
}