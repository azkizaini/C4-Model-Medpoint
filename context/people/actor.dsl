pSuperAdmin = person "SuperAdmin" {
    description "Manages all master data and user access rights."
    -> ssMedpoint "SuperAdmin can log in to the system."

    -> comWebCMS "SuperAdmin can log in to the Web."
}

pAdmin = person "Admin" {
    description "Manages master data, schedules, reservation slots, and payments."
    -> ssMedpoint "Admin can log in to the system."

    -> comWebCMS "Admin can log in to the Web."
}

pDoctor = person "Doctor" {
    description "Provides reservation slots, approves reservations, provides consultations, and prescribes medications."
    -> ssMedpoint "Doctor can log in to the system."

    -> comWebCMS "Doctor can log in to the Web."
}

pUser = person "User" {
    description "Make reservations, cancellations, and payments."
    -> ssMedpoint "User can log in to the system."

    -> comMobileSignup "User can sign up to the Mobile Apps."
    -> comMobileLogin "User can log in to the Mobile Apps."
}