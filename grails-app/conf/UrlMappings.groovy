class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/"(view:"/sms")
        "/admin"(view:"/admin")
        "500"(view:'/error')
        "/index"(view:"/index")
	}
}
