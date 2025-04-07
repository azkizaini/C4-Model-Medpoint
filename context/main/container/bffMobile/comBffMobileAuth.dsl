comBffMobileAuth = component "Bff mobile Auth" {
    description "Handle /auth"

    -> comAuthEmailLogin "Call login with email endpoint"
    -> comAuthEmailSignup "Call sign up with email endpoint"
    -> comRestUser "Get user"
}