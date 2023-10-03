output "string" {
  value = random_string.random.result
}

output "environment" {
  value = random_pet.environment.id
}

output "integer" {
  value = random_integer.priority.result
}
