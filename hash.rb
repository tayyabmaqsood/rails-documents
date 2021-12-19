age = {
  'jack' => 10,
  'ali' => 50,
  'akbar' => 40
}
# transforming values
age.transform_values! {|a| a + 1}
p age
