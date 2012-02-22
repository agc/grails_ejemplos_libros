
class SecurityFilters {

    def filters = {
        auth(controller: "*", action: "*") {
            before = {
                accessControl { true }
            }
        }

        userRoleManagement(controller: "(role|user)", action: "*") {
            before = {
                accessControl {
                    role("Administrator")
                }
            }
        }
    }    
}