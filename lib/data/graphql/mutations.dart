String createStore = r'''
mutation CreateStore ($name: String, $email: String, $password: String,
			$homecare: Boolean, $category: String, $open: String,
			$payment: String, $location: String, $neighborhood: String,
			$street: String, $number: String){
  createStore(
    data: {
      name: $name,
      email: $email,
      password: $password,
      homecare: $homecare,
      category: $category,
      open: $open,
      payment: $payment,
      location: $location,
      neighborhood: $neighborhood,
      street: $street,
      number: $number
    }
  )  { id }
}
''';