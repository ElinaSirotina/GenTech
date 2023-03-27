db.users.insertOne(
  {
      'id': 'u001',
      'fullname': 'Elina Sirotina',
      'created_at': new Date(),
      'country': 'Germany'
  }
  )
  db.users.find()