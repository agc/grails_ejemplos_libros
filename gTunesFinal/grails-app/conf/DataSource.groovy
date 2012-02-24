
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
dataSource {
	pooled = true
	url = "jdbc:mysql://localhost/gtunes_ch09"
	driverClassName = "com.mysql.jdbc.Driver" 
	username = "gtunes"
	password = "password"
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
           // url = "jdbc:h2:mem:devDb;MVCC=TRUE"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            
        }
    }
}
