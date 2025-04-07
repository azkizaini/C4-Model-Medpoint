cAuth = container "Supabase Auth service" {
    description "Backend to handle authn/authz"
    technology "Supabase"

    comAuthEmailLogin = component "Auth Email Login" {
        description "Handle /login/email"
        -> comDatabaseUserTable "Check if user's email exists"
        -> ssExternalAuth "Initiate Username/Password auth flow"
        -> ssExternalPayment "An external system for handle payments"
        -> ssExternalMessaging "A notification for user after a success auth or payments"
    }

    comAuthEmailSignup = component "Auth Email Sign Up" {
        description "Handle /signup/email"
        -> comDatabaseUserTable "Check if user's email exists"
    }
}
