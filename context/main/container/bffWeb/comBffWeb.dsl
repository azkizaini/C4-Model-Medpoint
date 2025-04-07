comBffWebAuth = component "Bff web Auth" {
    description "Handle /auth"

    -> comAuthEmailLogin "Call login with email endpoint"
    -> comRestUser "Get user"
}