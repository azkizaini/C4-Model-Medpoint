dynamic cMobile {
    title "[Mobile][Auth] Login"
    description "Patient could login into mobile app using email/password"

    pUser -> comMobileSignup
    comMobileSignup -> comBffMobileAuth "Sign up with email/password"
    comBffMobileAuth -> comAuthEmailSignup "Sign up with email/password"
    comAuthEmailSignup -> comDatabaseUserTable "Store new data"

    pUser -> comMobileLogin
    comMobileLogin -> comBffMobileAuth "Login with email/password"
    comBffMobileAuth -> comAuthEmailLogin "Login with email/password"
    comBffMobileAuth -> comRestUser "Check login user if exist"
    comRestUser -> comDatabaseUserTable "Get user"
    comAuthEmailLogin -> ssExternalAuth "login via external auth"

    autolayout lr
}
