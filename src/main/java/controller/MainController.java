package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String testy(@RequestParam("name") String param, Model model){
        model.addAttribute("name", param);
        System.out.println(param);
        return "hello";
    }

    @RequestMapping(value = "/hello2", method = RequestMethod.GET)
    public ModelAndView hello(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/d");
        modelAndView.addObject("h", "QWERTYUIOJHGFDFGHJ");
        return modelAndView;
    }

    @RequestMapping(value = "/hello3", method = RequestMethod.POST)
    public @ResponseBody String hell(@RequestParam("txtname") String string){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/d");
        modelAndView.addObject("h", "QWERTYUIOJHGFDFGHJ");
        return "hsdvdfvfdvdfgvdfvfdv";
    }

    @RequestMapping(value = "/c1", method = RequestMethod.GET)
    public @ResponseBody String addComment(Model model) {
//        List<Comments> comments = commentsService.findByNewsId(id);
        String comments = "SUKA";
        model.addAttribute("name", "name");
        System.out.println("controller");
        return comments;
    }
}
