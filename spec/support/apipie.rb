def without_apipie_validation(&block)
  Apipie.configuration.validate = false
  yield
  Apipie.configuration.validate = true
end
