package com.grailsinaction

class ProfileController {
    def scaffold = Profile
    
    String toString()     { "Perfil para ${fullName} (${id})" }

}
