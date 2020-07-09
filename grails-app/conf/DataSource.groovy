dataSource {
    pooled = true
// driverClassName = "org.h2.Driver"
   driverClassName = "com.mysql.jdbc.Driver"
   dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
//    username = "sa"
//    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
//        dataSource {
//            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
//            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
//       }
        dataSource {
           dbCreate = "none" // one of 'create', 'create-drop', 'update', 'validate', ''
           url = "jdbc:mysql://192.168.56.20:3306/linkstoredb?useUnicode=yes&characterEncoding=UTF-8"
           username = "linkadmin"
           password = "000111"
       }
        hibernate {
            show_sql = true
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}