package com.myapp.dba

import grails.plugins.springsecurity.Secured

class HomeController {

    @Secured([CommonConstants.ROLE_ADMIN])
    def index() {
        render(view: "index")
    }
}
