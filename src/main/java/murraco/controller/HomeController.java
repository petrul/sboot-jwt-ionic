package murraco.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@EnableGlobalMethodSecurity(prePostEnabled = true)
public class HomeController {

    @GetMapping("/")
    @ResponseBody
//    @PreAuthorize("permitAll()")
    public String home() {
        return "home here, everybody can see this";
    }

    @GetMapping("client")
    @ResponseBody
//    @PreAuthorize("permitAll()")
    public String client() {
        return "client here, only users with role client can see this";
    }

    @PreAuthorize("hasRole('CLIENT')")
    @GetMapping("client2")
    @ResponseBody
    public String client2() {
        return "client2 here, only users with role client can see this";
    }

    @GetMapping("admin")
    @ResponseBody
    public String admin() {
        return "admin page here, only users with role admin can see this";
    }

    @GetMapping("clientOrAdmin")
    @ResponseBody
    public String clientOrAdmin() {
        return "clientOrAdmin, here you can be client or admin";
    }
}
